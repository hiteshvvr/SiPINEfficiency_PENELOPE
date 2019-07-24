      INCLUDE 'penelope.f'
      INCLUDE 'pengeom.f'
      INCLUDE 'rita.f'
      INCLUDE 'penvared.f'
C   Declaring variables
      IMPLICIT DOUBLE PRECISION (A-H,O-Z), INTEGER*4 (I-N)
      PARAMETER (MAXMAT=10)
      PARAMETER (NB=5000)
      CHARACTER PMFILE(MAXMAT)*20
      COMMON/TRACK/E,X,Y,Z,U,V,W,WGHT,KPAR,IBODY,MAT,ILB(5)
      COMMON/STOKES/SP1,SP2,SP3,IPOL
      COMMON/CSIMPA/EABS(3,MAXMAT),C1(MAXMAT),C2(MAXMAT),WCR(MAXMAT),
     1  WCC(MAXMAT)
      COMMON/RSEED/ISEED1,ISEED2
      COMMON/CFORCE/FORCE(NB,3,8) 
      DIMENSION PARINP(20),DSMAX(5000)
C   Initilalization of parameter values
      EPMAX=0.25D5  !Maximum energy      
      NTOT=1.0D8   !Total number of showers
      C1(1)=0.1
      C2(1)=0.1
      WCC(1)=1.0D3
      WCR(1)=1.0D3
      EABS(1,1)=500
      EABS(2,1)=500
      EABS(3,1)=400
      FORCE(1,1,4)=10

C     Random number seed
      CALL SYSTEM_CLOCK(ISEED1, ISEED20, ISEED5)
      CALL SYSTEM_CLOCK(ISEED2, ISEED20, ISEED5)
C      WRITE(*,*) 'random seeds are:' 
C      WRITE(*,*) ISEED1, ISEED2
      ! ISEED2=100
      ! ISEED1=200
C   Initializing penelope using PEINIT
      NMAT=1
      PMFILE(1)='Copper.dat'
      INFO=0
      IWR=16
      OPEN(IWR,FILE='material.dat')
      WRITE(*,*) 'Initialising penelope'
        CALL PEINIT(EPMAX,NMAT,IWR,INFO,PMFILE)
      CLOSE(IWR)
C   Initialising the geometry file using GEOMIN
      NPINP=0
      OPEN(17,FILE='geom.geo')
      OPEN(18,FILE='geometry.rep')
      WRITE(*,*) 'Initialising geometry file'
        CALL GEOMIN(PARINP,NPINP,NMATG,NBOD,17,18)
      CLOSE(UNIT=17)
      CLOSE(UNIT=18)
      OPEN(20,FILE='answer.txt')
      WRITE(*,*) 'Starting showers'
      ! WRITE(20,*) 'DSEF,DS,E,WGHT'
      WRITE(20,*)'N,U,V,W,E,WGHT'
      N=0
   10 N=N+1
         CT=MOD(N,1000000)
            IF(CT==0) THEN
            WRITE(*,*) N
            ENDIF
C*      WRITE(20,*) N
C   Setting the initial state variables of primary particle in COMMON/TRACK
      E=EPMAX
      X=0
      Y=0
      Z=-1
      U=0
      V=0
      W=1
      WGHT=1 
      KPAR=1
      ILB(1)=1
C   Check if the trajectory intersects the material system
CALL LOCATE
      IF(MAT.EQ.0) THEN
            CALL STEP(1.0D30,DSEF,NCROSS)
            IF (MAT.EQ.0) THEN
            GOTO 10
            ENDIF
      ENDIF
      CALL CLEANS
C   Simulation of a new track
   20 CALL START
C*      IF(KPAR.EQ.1) WRITE(20,*) 'Electron'
C*      IF(KPAR.EQ.2) WRITE(20,*) 'Photon'
C*      IF(KPAR.EQ.3) WRITE(20,*) 'Positron'
   30 CALL JUMPF(DSMAX(IBODY),DS)
      CALL STEP(DS,DSEF,NCROSS)

      IF(MAT==0) THEN 
      IF(KPAR==2) THEN 
      WRITE(20,101) N,U,V,W,E,WGHT
      ENDIF
      ENDIF

  101 FORMAT(1I10,3E15.3,1E15.5,1E15.2)  
      IF(MAT.EQ.0) THEN
            GOTO 40
      ENDIF
      IF(NCROSS.GT.0) GOTO 20
      CALL KNOCKF(DE,ICOL)
      IF(E.LT.EABS(KPAR,MAT)) THEN
            GOTO 40
      ENDIF
      GOTO 30
C   Simulation of track ends here
   40 CONTINUE
C*      WRITE(20,*) 'SECPAR called'
      CALL SECPAR(LEFT)
      IF(LEFT.GT.0) THEN
            GOTO 20
      ENDIF
      IF(N.LT.NTOT) GOTO 10
      CLOSE(UNIT=20)
      END
