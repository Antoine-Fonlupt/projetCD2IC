*
*
*
*                       LINUX           Thu Nov 13 17:18:38 2025
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - Quantus QRC - (64-bit)
*  Version        : 15.2.7-s638
*  Build Date     : Wed Jan  4 18:11:53 PST 2017
*
*  HSPICE LIBRARY
*
*
*

*
.SUBCKT TSPCFF VDD! VSS! CK D QQ
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MXclkinv/Mmn0	CKb#11	CK#2	VSS!#6	VSS!#3	g45n1svt	L=4.5e-08
+ W=1.45e-07
+ AD=2.03e-14	AS=2.03e-14	PD=5.7e-07	PS=5.7e-07
+ scc=0.000309076 scb=0.0131402 sca=12.5109 sb=1.4e-07 sa=1.4e-07
Mmn3	Qb#6	y	VSS!#8	VSS!#3	g45n1svt	L=4.5e-08
+ W=1.45e-07
+ AD=2.32e-14	AS=2.32e-14	PD=5.9e-07	PS=5.9e-07
+ scc=2.1811e-05 scb=0.00346364 sca=6.59771 sb=3.45e-07 sa=1.4e-07
Mmn2	y#7	CKb#6	VSS!#8	VSS!#3	g45n1svt	L=4.5e-08
+ W=1.45e-07
+ AD=2.03e-14	AS=2.03e-14	PD=5.9e-07	PS=5.9e-07
+ scc=2.16281e-05 scb=0.00316007 sca=6.15549 sb=1.4e-07 sa=3.45e-07
Mmn1	a	D#2	VSS!#7	VSS!#3	g45n1svt	L=4.5e-08
+ W=1.45e-07
+ AD=8.7e-15	AS=8.7e-15	PD=4.9e-07	PS=4.9e-07
+ scc=2.18715e-05 scb=0.00351544 sca=6.65575 sb=2.45e-07 sa=1.4e-07
Mmn4	x#3	CKb#7	a	VSS!#3	g45n1svt	L=4.5e-08
+ W=1.45e-07
+ AD=2.03e-14	AS=2.03e-14	PD=4.9e-07	PS=4.9e-07
+ scc=2.33598e-05 scb=0.00413523 sca=7.21705 sb=1.4e-07 sa=2.45e-07
MXqinv/Mmn0	QQ#1	Qb	VSS!#1	VSS!#3	g45n1svt	L=4.5e-08
+ W=2.6e-07
+ AD=3.64e-14	AS=3.64e-14	PD=8e-07	PS=8e-07
+ scc=0.00219352 scb=0.027494 sca=23.7936 sb=1.4e-07 sa=1.4e-07
MXclkinv/Mmp0	CKb#10	CK#1	VDD!#6	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=3.01e-14	AS=3.01e-14	PD=7.1e-07	PS=7.1e-07
+ scc=0.00236439 scb=0.030473 sca=27.4166 sb=1.4e-07 sa=1.4e-07
Mmp3	c	y#3	VDD!#8	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=1.29e-14	AS=1.29e-14	PD=6.3e-07	PS=6.3e-07
+ scc=0.000100355 scb=0.00880481 sca=11.3805 sb=2.45e-07 sa=1.4e-07
Mmp5	Qb#7	CKb#5	c	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=3.01e-14	AS=3.01e-14	PD=6.3e-07	PS=6.3e-07
+ scc=9.87233e-05 scb=0.00815874 sca=10.8044 sb=1.4e-07 sa=2.45e-07
Mmp4	y#6	x	b	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=1.29e-14	AS=1.29e-14	PD=6.3e-07	PS=6.3e-07
+ scc=9.84553e-05 scb=0.00778243 sca=10.2794 sb=4.5e-07 sa=1.4e-07
Mmp2	b	CKb	VDD!#7	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=3.44e-14	AS=3.44e-14	PD=6.5e-07	PS=6.5e-07
+ scc=9.84777e-05 scb=0.00786563 sca=10.4291 sb=3.45e-07 sa=2.45e-07
Mmp1	x#5	D#1	VDD!#7	VDD!#3	g45p1svt	L=4.5e-08
+ W=2.15e-07
+ AD=3.01e-14	AS=3.01e-14	PD=7.3e-07	PS=7.3e-07
+ scc=9.96516e-05 scb=0.00859678 sca=11.2136 sb=1.4e-07 sa=4.5e-07
MXqinv/Mmp0	QQ#2	Qb#4	VDD!#1	VDD!#3	g45p1svt	L=4.5e-08
+ W=3.9e-07
+ AD=5.46e-14	AS=5.46e-14	PD=1.06e-06	PS=1.06e-06
+ scc=0.00172236 scb=0.0288355 sca=24.7656 sb=1.4e-07 sa=1.4e-07
*
*
*       RESISTOR AND CAP/DIODE CARDS
*
Rl1	CK#1	CK#2	  280.3349	$poly_conn
Rl2	CK#2	CK#3	   93.7687	$poly_conn
Rl3	y	y#2	   23.8263	$poly_conn
Rl4	y#2	y#3	  236.2442	$poly_conn
Rl5	y#3	y#4	   86.0764	$poly_conn
Rl6	y#2	y#5	   50.7830	$poly_conn
Rl7	x	x#2	   75.0021	$poly_conn
Rl8	CKb	CKb#2	  156.5021	$poly_conn
Rl9	CKb#2	CKb#3	   83.0817	$poly_conn
Rl10	CKb#3	CKb#4	  124.2107	$poly_conn
Rl11	CKb#4	CKb#5	   81.9251	$poly_conn
Rl12	CKb#3	CKb#6	   84.2969	$poly_conn
Rl13	D#1	D#2	  264.9503	$poly_conn
Rl14	D#2	D	   87.9995	$poly_conn
Rl15	CKb#7	CKb#8	  115.3867	$poly_conn
Rl16	Qb	Qb#2	  138.6781	$poly_conn
Rl17	Qb#2	Qb#3	   77.2400	$poly_conn
Rl18	Qb#2	Qb#4	   67.0634	$poly_conn
Rk1	CK	CK#3	2.766E-02	$metal1_conn
Rk2	CKb#4	CKb#9	   45.2623	$metal1_conn
Rk3	CKb#9	CKb#10	   62.3479	$metal1_conn
Rk4	CKb#9	CKb#11	   75.3378	$metal1_conn
Rk5	y#6	y#4	   62.4760	$metal1_conn
Rk6	y#7	y#5	   75.3198	$metal1_conn
Rk8	CKb#2	CKb#8	   45.2235	$metal1_conn
Rk9	Qb#3	Qb#5	    0.5187	$metal1_conn
Rk10	Qb#5	Qb#6	   75.6279	$metal1_conn
Rk11	Qb#5	Qb#7	   62.3510	$metal1_conn
Rk12	x#3	x#4	   75.7518	$metal1_conn
Rk13	x#4	x#2	    0.3269	$metal1_conn
Rk14	x#4	x#5	   62.1660	$metal1_conn
Rk15	QQ#1	QQ	   38.1535	$metal1_conn
Rk16	QQ	QQ#2	   20.6667	$metal1_conn
Rk17	VSS!#1	VSS!#2	   38.0529	$metal1_conn
Rk18	VSS!#2	VSS!#4	6.518E-02	$metal1_conn
Rk19	VSS!#4	VSS!#5	9.787E-02	$metal1_conn
Rk20	VSS!#5	VSS!	    0.2941	$metal1_conn
Rk21	VSS!	VSS!#6	   75.3400	$metal1_conn
Rk22	VSS!#2	VSS!#7	   75.3056	$metal1_conn
Rk23	VSS!#5	VSS!#8	   75.2975	$metal1_conn
Rk24	VSS!#3	VSS!#4	    6.2000	$metal1_conn
Rk25	VDD!#1	VDD!#2	   21.1477	$metal1_conn
Rk26	VDD!#2	VDD!#4	    0.1482	$metal1_conn
Rk27	VDD!#4	VDD!#5	    0.3046	$metal1_conn
Rk28	VDD!#5	VDD!	8.027E-02	$metal1_conn
Rk29	VDD!	VDD!#6	   62.3619	$metal1_conn
Rk30	VDD!#2	VDD!#7	   62.2792	$metal1_conn
Rk31	VDD!#5	VDD!#8	   62.3378	$metal1_conn
Rk32	VDD!#3	VDD!#4	    7.5000	$metal1_conn
*
.ENDS TSPCFF
*
