v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -130 -110 -40 -110 {
lab=a}
N -220 -170 -40 -170 {
lab=a}
N -180 30 0 30 {
lab=y}
N 0 -20 -0 30 {
lab=y}
N -240 -50 -40 -50 {
lab=c}
N -240 -110 -130 -110 {
lab=a}
N -240 -170 -220 -170 {
lab=a}
N 0 -0 60 -0 {
lab=y}
N -180 90 -0 90 {
lab=vss}
N -180 60 -170 60 {
lab=vss}
N -170 60 -170 90 {
lab=vss}
N -90 60 -80 60 {
lab=vss}
N -80 60 -80 90 {
lab=vss}
N 0 60 10 60 {
lab=vss}
N 10 60 10 90 {
lab=vss}
N 0 90 10 90 {
lab=vss}
N 0 -50 10 -50 {
lab=vdd}
N 10 -210 10 -50 {
lab=vdd}
N 0 -210 10 -210 {
lab=vdd}
N -0 -210 0 -200 {
lab=vdd}
N -0 -170 10 -170 {
lab=vdd}
N -0 -110 10 -110 {
lab=vdd}
N -110 90 -110 110 {
lab=vss}
N -220 -50 -220 60 {}
N -130 -110 -130 60 {}
N -60 60 -40 60 {}
N -60 -170 -60 60 {}
C {symbols/nfet_03v3.sym} -20 60 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -20 -50 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -20 -110 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} -20 -170 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} -110 60 0 0 {name=M5
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
C {symbols/nfet_03v3.sym} -200 60 0 0 {name=M6
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
C {devices/iopin.sym} 0 -210 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} -110 110 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} -240 -170 0 0 {name=p3 lab=a}
C {devices/opin.sym} 60 0 0 0 {name=p4 lab=y}
C {devices/ipin.sym} -240 -110 0 0 {name=p5 lab=b}
C {devices/ipin.sym} -240 -50 0 0 {name=p6 lab=c}
