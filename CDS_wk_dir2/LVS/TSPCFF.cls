*******************************************************************************
****** TSPCFF schematic TSPCFF_LIB  <vs>  TSPCFF layout TSPCFF_LIB
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(INV schematic TSPCFF_LIB, _) Cell                2       0*
(g45p1svt) MOS                                    5       7*
(g45n1svt) MOS                                    4       6*
                                             ------  ------
Total                                            11      13

Reduce Statistics
=================                               Original             Reduced
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    6       6           4       4
(g45p1svt) MOS                                    7       7           3       3
(g45n1svt:SerMos2#1) MosBlk                       -       -           1       1
(g45p1svt:SerMos2#1) MosBlk                       -       -           2       2

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(g45n1svt) MOS                                    4       4           0       0
(g45p1svt) MOS                                    3       3           0       0
(g45n1svt:SerMos2#1) MosBlk                       1       1           0       0
(g45p1svt:SerMos2#1) MosBlk                       2       2           0       0
                                             ------  ------      ------  ------
Total                                            10      10           0       0

Match Statistics for Nets                         9       9           0       0

=======================================================================[TSPCFF]
====== Parameter Mismatches for Instances =====================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 1)
Schematic Instance: Mmn3  g45n1svt
Layout Instance:    avD2_2  g45n1svt

l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("1.45E-07") on the layout is a Float(1.45e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 2)
Schematic Instance: Mmn2  g45n1svt
Layout Instance:    avD2_3  g45n1svt

l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("1.45E-07") on the layout is a Float(1.45e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 3)
Schematic Instance: Mmp1  g45p1svt
Layout Instance:    avD10_6  g45p1svt

l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("2.14E-07") on the layout is a Float(2.15e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 4)
Schematic Instance: Xqinv/Mmn0  g45n1svt
Layout Instance:    avD2_6  g45n1svt

w on the schematic is a String("2.6E-07") on the layout is a Float(2.6e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 5)
Schematic Instance: Xqinv/Mmp0  g45p1svt
Layout Instance:    avD10_7  g45p1svt

w on the schematic is a String("3.9E-07") on the layout is a Float(3.9e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 6)
Schematic Instance: Xclkinv/Mmn0  g45n1svt
Layout Instance:    avD2_1  g45n1svt

w on the schematic is a String("1.45E-07") on the layout is a Float(1.45e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 7)
Schematic Instance: Xclkinv/Mmp0  g45p1svt
Layout Instance:    avD10_1  g45p1svt

w on the schematic is a String("2.15E-07") on the layout is a Float(2.15e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (param 8)
Schematic Instance: I##14  g45p1svt:SerMos2#1
Layout Instance:    I##15  g45p1svt:SerMos2#1

Mmp5 vs avD10_3
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("2.14E-07") on the layout is a Float(2.15e-07)

Mmp3 vs avD10_2
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("2.14E-07") on the layout is a Float(2.15e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(param 10)
Schematic Instance: I##15  g45p1svt:SerMos2#1
Layout Instance:    I##16  g45p1svt:SerMos2#1

Mmp4 vs avD10_4
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("2.14E-07") on the layout is a Float(2.15e-07)

Mmp2 vs avD10_5
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("2.14E-07") on the layout is a Float(2.15e-07)

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(param 12)
Schematic Instance: I##16  g45n1svt:SerMos2#1
Layout Instance:    I##14  g45n1svt:SerMos2#1

Mmn4 vs avD2_5
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("1.45E-07") on the layout is a Float(1.45e-07)

Mmn1 vs avD2_4
l on the schematic is a String("4.5E-08") on the layout is a Float(4.5e-08)
w on the schematic is a String("1.45E-07") on the layout is a Float(1.45e-07)

=======================================================================[TSPCFF]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 13         13        Parameter Mismatches for Instances

