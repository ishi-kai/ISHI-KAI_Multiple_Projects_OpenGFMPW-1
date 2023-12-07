v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -470 -150 -380 -150 {
lab=ib}
N -510 -120 -510 -60 {
lab=ib}
N -510 -100 -440 -100 {
lab=ib}
N -440 -150 -440 -100 {
lab=ib}
N -530 -150 -510 -150 {
lab=vdd}
N -530 -200 -530 -150 {
lab=vdd}
N -530 -200 -510 -200 {
lab=vdd}
N -510 -220 -510 -180 {
lab=vdd}
N -340 -220 -340 -180 {
lab=vdd}
N -340 -200 -320 -200 {
lab=vdd}
N 0 -150 20 -150 {
lab=vdd}
N 0 -220 0 -180 {
lab=vdd}
N 20 -200 20 -150 {
lab=vdd}
N 0 -200 20 -200 {
lab=vdd}
N -340 -150 -320 -150 {
lab=vdd}
N -320 -200 -320 -150 {
lab=vdd}
N 370 -150 390 -150 {
lab=vdd}
N 390 -200 390 -150 {
lab=vdd}
N 370 -200 390 -200 {
lab=vdd}
N 370 -220 370 -180 {
lab=vdd}
N -510 -220 410 -220 {
lab=vdd}
N -340 -120 -340 -30 {
lab=#net1}
N -410 0 -380 0 {
lab=#net1}
N -410 -40 -410 0 {
lab=#net1}
N -410 -40 -340 -40 {
lab=#net1}
N -340 30 -340 70 {
lab=#net2}
N -410 100 -380 100 {
lab=#net2}
N -410 50 -410 100 {
lab=#net2}
N -410 50 -340 50 {
lab=#net2}
N -340 130 -340 170 {
lab=vss}
N -340 100 -320 100 {
lab=vss}
N -320 100 -320 170 {
lab=vss}
N -340 0 -310 0 {
lab=vss}
N -310 0 -310 170 {
lab=vss}
N -120 -80 -120 -60 {
lab=#net3}
N -120 -80 150 -80 {
lab=#net3}
N 150 -80 150 -60 {
lab=#net3}
N -120 -30 -100 -30 {
lab=#net3}
N -100 -70 -100 -30 {
lab=#net3}
N -120 -70 -100 -70 {
lab=#net3}
N 130 -30 150 -30 {
lab=#net3}
N 130 -70 130 -30 {
lab=#net3}
N 130 -70 150 -70 {
lab=#net3}
N -200 -30 -160 -30 {
lab=vinn}
N -120 0 -120 70 {
lab=#net4}
N -120 130 -120 170 {
lab=vss}
N -140 100 -120 100 {
lab=vss}
N -140 100 -140 150 {
lab=vss}
N -140 150 -120 150 {
lab=vss}
N 150 0 150 70 {
lab=#net5}
N -80 100 110 100 {
lab=#net4}
N 0 40 0 100 {
lab=#net4}
N -120 40 0 40 {
lab=#net4}
N 150 130 150 170 {
lab=vss}
N 150 100 180 100 {
lab=vss}
N 180 100 180 150 {
lab=vss}
N 150 150 180 150 {
lab=vss}
N 0 -120 0 -80 {
lab=#net3}
N -410 -150 -410 -100 {
lab=ib}
N -410 -100 310 -100 {
lab=ib}
N 310 -150 310 -100 {
lab=ib}
N 310 -150 330 -150 {
lab=ib}
N -70 -150 -40 -150 {
lab=ib}
N -70 -150 -70 -100 {
lab=ib}
N 370 140 370 170 {
lab=vss}
N 370 160 400 160 {
lab=vss}
N 400 110 400 160 {
lab=vss}
N 370 110 400 110 {
lab=vss}
N -340 170 470 170 {
lab=vss}
N -340 -90 300 -90 {
lab=#net1}
N 300 -50 300 170 {
lab=vss}
N 260 110 330 110 {
lab=#net5}
N 260 -50 260 110 {
lab=#net5}
N 260 -50 270 -50 {
lab=#net5}
N 150 40 260 40 {
lab=#net5}
N 330 -50 340 -50 {
lab=#net6}
N 370 -120 370 -90 {
lab=out}
N 370 -90 410 -90 {
lab=out}
N 410 -90 410 60 {
lab=out}
N 370 60 410 60 {
lab=out}
N 370 60 370 80 {
lab=out}
N 410 10 430 10 {
lab=out}
N 400 -50 410 -50 {
lab=out}
C {devices/iopin.sym} -510 -60 1 0 {name=p1 lab=ib}
C {devices/iopin.sym} 410 -220 0 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -200 -30 0 0 {name=p3 lab=vinn}
C {devices/opin.sym} 430 10 0 0 {name=p5 lab=out}
C {devices/iopin.sym} 470 170 0 0 {name=p6 lab=vss}
C {devices/ipin.sym} 190 -30 0 1 {name=p7 lab=vinp}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} -140 -30 0 0 {name=M1
L=0.5u
W=60.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} 170 -30 0 1 {name=M2
L=0.5u
W=60.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} -20 -150 0 0 {name=M5
L=0.5u
W=12.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} 350 -150 0 0 {name=M6
L=0.5u
W=60.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} -360 -150 0 0 {name=M9
L=0.5u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/pfet_06v0.sym} -490 -150 0 1 {name=M8
L=0.5u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model= pfet_05v0
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} -100 100 0 1 {name=M3
L=0.6u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} 130 100 0 0 {name=M4
L=0.6u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} 350 110 0 0 {name=M7
L=0.6u
W=60.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} 300 -70 1 0 {name=M12
L=0.6u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} -360 0 0 0 {name=M10
L=0.6u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {pdk/gf180mcuD/libs.tech/xschem/symbols/nfet_06v0.sym} -360 100 0 0 {name=M11
L=0.6u
W=3.0u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0_dn
spiceprefix=X
}
C {cap_mim_2p0fF_lvs.sym} 370 -50 1 0 {name=C1
W=100e-6
L=50e-6
model=cap_mim_2f0fF}
