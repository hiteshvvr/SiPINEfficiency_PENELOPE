Self Supporting Lead.

0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   1)   Plane Z=+0.0
INDICES=( 0, 0, 0, 1, 0)
Z-SHIFT=(+0.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   2)   Plane Z=lead
INDICES=( 0, 0, 0, 1, 0)
Z-SHIFT=(+1.000000000000000E-02,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   3)   Plane Z=alum
INDICES=( 0, 0, 0, 1, 0)
Z-SHIFT=(+0.833440000000000E-04,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   4)   Plane X=-2.0
INDICES=( 0, 0, 0, 0, 0)
     AX=(+1.000000000000000E+00,   0)
     A0=(+2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   5)   Plane X=+0.0
INDICES=( 0, 0, 0, 0, 0)
     AX=(+1.000000000000000E+00,   0)
     A0=(-2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   6)   Plane Y=-2.0
INDICES=( 0, 0, 0, 0, 0)
     AY=(+1.000000000000000E+00,   0)
     A0=(+2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   7)   Plane Y=+2.0
INDICES=( 0, 0, 0, 0, 0)
     AY=(+1.000000000000000E+00,   0)
     A0=(-2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
MODULE  (   1)   Thin sheet
MATERIAL(   1)
SURFACE (   1), SIDE POINTER=(+1)
SURFACE (   2), SIDE POINTER=(-1)
SURFACE (   4), SIDE POINTER=(+1)
SURFACE (   5), SIDE POINTER=(-1)
SURFACE (   6), SIDE POINTER=(+1)
SURFACE (   7), SIDE POINTER=(-1)
0000000000000000000000000000000000000000000000000000000000000000
END      0000000000000000000000000000000000000000000000000000000