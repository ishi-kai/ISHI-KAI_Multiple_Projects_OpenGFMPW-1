v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 370 400 370 {
lab=ctrl}
N 740 60 740 80 {
lab=#net1}
N 740 320 1030 320 {
lab=#net2}
N 1030 120 1030 190 {
lab=#net3}
N 1030 190 1030 260 {
lab=#net3}
N 740 -60 740 -0 {
lab=vdd}
N 740 -60 940 -60 {
lab=vdd}
N 940 -60 940 120 {
lab=vdd}
N 940 -60 1220 -60 {
lab=vdd}
N 1220 -60 1220 -20 {
lab=vdd}
N 1410 -60 1410 -20 {
lab=#net4}
N 1060 20 1190 20 {
lab=#net5}
N 1060 20 1060 80 {
lab=#net5}
N 740 80 1000 80 {
lab=#net1}
N 780 30 1060 30 {
lab=#net5}
N 1030 320 1140 320 {
lab=#net2}
N 1170 20 1170 280 {
lab=#net5}
N 1070 240 1070 290 {
lab=#net5}
N 1070 240 1170 240 {
lab=#net5}
N 1330 220 1330 280 {
lab=#net5}
N 1170 220 1330 220 {
lab=#net5}
N 1200 320 1300 320 {
lab=A}
N 1250 20 1370 20 {
lab=#net6}
N 1370 20 1380 20 {
lab=#net6}
N 1440 20 1440 440 {
lab=vss}
N 740 440 1440 440 {
lab=vss}
N 740 400 740 440 {
lab=vss}
N 870 150 900 150 {
lab=ctrl}
N 870 150 870 230 {
lab=ctrl}
N 1360 320 1460 320 {
lab=B}
N 1250 320 1250 350 {
lab=A}
N 1330 320 1330 440 {
lab=vss}
N 1170 320 1170 440 {
lab=vss}
N 980 290 1030 290 {
lab=vss}
N 980 290 980 440 {
lab=vss}
N 940 150 970 150 {
lab=vdd}
N 970 -60 970 150 {
lab=vdd}
N 1030 60 1030 80 {
lab=#net1}
N 990 60 1030 60 {
lab=#net1}
N 990 60 990 80 {
lab=#net1}
N 710 30 740 30 {
lab=vdd}
N 710 -60 710 30 {
lab=vdd}
N 710 -60 740 -60 {
lab=vdd}
N 1220 20 1220 90 {
lab=vss}
N 1220 90 1440 90 {
lab=vss}
N 1410 20 1410 90 {
lab=vss}
N 740 370 810 370 {
lab=vss}
N 810 370 810 440 {
lab=vss}
N 680 370 700 370 {
lab=#net4}
N 690 -130 690 370 {
lab=#net4}
N 690 -130 1410 -130 {
lab=#net4}
N 1410 -130 1410 -60 {
lab=#net4}
N 500 190 500 370 {
lab=ctrl}
N 500 190 870 190 {
lab=ctrl}
N 350 440 740 440 {
lab=vss}
N 380 -60 710 -60 {
lab=vdd}
N 400 370 500 370 {
lab=ctrl}
N 540 -60 540 320 {
lab=vdd}
N 560 290 560 320 {
lab=vss}
N 470 290 560 290 {
lab=vss}
N 470 290 470 440 {
lab=vss}
N 740 80 740 90 {
lab=#net1}
N 740 150 740 340 {
lab=#net2}
N 940 290 980 290 {
lab=vss}
N 870 290 900 290 {
lab=ctrl}
N 870 230 870 290 {
lab=ctrl}
N 1070 230 1070 240 {
lab=#net5}
N 940 240 940 260 {
lab=#net3}
N 880 210 940 210 {
lab=vdd}
N 880 -60 880 210 {
lab=vdd}
N 940 250 1030 250 {
lab=#net3}
N 980 210 1070 210 {
lab=#net5}
N 1070 210 1070 230 {
lab=#net5}
C {devices/ipin.sym} 360 370 0 0 {name=p1 lab=ctrl}
C {symbols/nfet_03v3.sym} 1330 300 3 1 {name=M1
L=0.28u
W=2.8u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {devices/iopin.sym} 1250 350 1 0 {name=p2 lab=A}
C {devices/iopin.sym} 1460 320 0 0 {name=p3 lab=B}
C {devices/iopin.sym} 380 -60 2 0 {name=p4 lab=vdd}
C {devices/iopin.sym} 350 440 2 0 {name=p5 lab=vss}
C {devices/capa.sym} 740 120 0 0 {name=C2
m=1
value=900f
footprint=1206
device="ceramic capacitor"}
C {symbols/nfet_03v3.sym} 1050 290 0 1 {name=M8
L=0.28u
W=0.22u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {inv.sym} 580 370 0 0 {name=x3}
C {symbols/pfet_03v3.sym} 760 30 0 1 {name=M13
L=0.28u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 720 370 0 0 {name=M3
L=0.28u
W=0.42u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 920 290 0 0 {name=M5
L=0.28u
W=0.42u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1170 300 1 0 {name=M9
L=0.28u
W=0.42u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1220 0 3 1 {name=M10
L=0.28u
W=0.42u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1410 0 3 1 {name=M11
L=0.28u
W=0.42u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 960 210 0 1 {name=M2
L=0.28u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 920 150 0 0 {name=M4
L=0.28u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1030 100 3 0 {name=M6
L=0.28u
W=1u
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
