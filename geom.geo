Thin sheet of 0.000040 mm

0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   1)   Plane Z=+0.0
INDICES=( 0, 0, 0, 1, 0)
Z-SHIFT=(+0.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   2)   Plane Z=+0.4E-05
INDICES=( 0, 0, 0, 1, 0)
Z-SHIFT=(+0.000700000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   3)   Plane X=-2.0
INDICES=( 0, 0, 0, 0, 0)
     AX=(+1.000000000000000E+00,   0)
     A0=(+2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   4)   Plane X=+2.0
INDICES=( 0, 0, 0, 0, 0)
     AX=(+1.000000000000000E+00,   0)
     A0=(-2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   5)   Plane Y=-2.0
INDICES=( 0, 0, 0, 0, 0)
     AY=(+1.000000000000000E+00,   0)
     A0=(+2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
SURFACE (   6)   Plane Y=+2.0
INDICES=( 0, 0, 0, 0, 0)
     AY=(+1.000000000000000E+00,   0)
     A0=(-2.000000000000000E+00,   0)
0000000000000000000000000000000000000000000000000000000000000000
MODULE  (   1)   Thin sheet
MATERIAL(   1)
SURFACE (   1), SIDE POINTER=(+1)
SURFACE (   2), SIDE POINTER=(-1)
SURFACE (   3), SIDE POINTER=(+1)
SURFACE (   4), SIDE POINTER=(-1)
SURFACE (   5), SIDE POINTER=(+1)
SURFACE (   6), SIDE POINTER=(-1)
0000000000000000000000000000000000000000000000000000000000000000
END      0000000000000000000000000000000000000000000000000000000
