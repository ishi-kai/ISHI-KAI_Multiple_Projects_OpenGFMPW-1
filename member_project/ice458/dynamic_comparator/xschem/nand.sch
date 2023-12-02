v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 -20 90 30 {
lab=y}
N 170 -20 170 20 {
lab=y}
N 90 20 170 20 {
lab=y}
N 20 60 50 60 {
lab=b}
N 20 -50 20 60 {
lab=b}
N 20 -50 50 -50 {
lab=b}
N 130 -50 130 10 {
lab=a}
N 40 10 130 10 {
lab=a}
N 40 10 40 120 {
lab=a}
N 40 120 50 120 {
lab=a}
N 90 -50 100 -50 {
lab=vdd}
N 100 -80 100 -50 {
lab=vdd}
N 100 -90 100 -80 {
lab=vdd}
N 90 -90 100 -90 {
lab=vdd}
N 90 -90 90 -80 {
lab=vdd}
N 100 -90 180 -90 {
lab=vdd}
N 180 -90 180 -50 {
lab=vdd}
N 170 -50 180 -50 {
lab=vdd}
N 170 -90 170 -80 {
lab=vdd}
N 90 60 110 60 {
lab=vss}
N 110 60 110 160 {
lab=vss}
N 90 160 110 160 {
lab=vss}
N 90 150 90 160 {
lab=vss}
N 90 120 110 120 {
lab=vss}
N 170 20 220 20 {
lab=y}
N -10 60 20 60 {
lab=b}
N -10 120 40 120 {
lab=a}
N 40 160 90 160 {
lab=vss}
N 40 -90 90 -90 {
lab=vdd}
C {devices/iopin.sym} 40 -90 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 40 160 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} -10 120 0 0 {name=p3 lab=a}
C {devices/ipin.sym} -10 60 0 0 {name=p4 lab=b}
C {devices/opin.sym} 220 20 0 0 {name=p5 lab=y}
C {symbols/pfet_03v3.sym} 70 -50 0 0 {name=M14
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
C {symbols/nfet_03v3.sym} 70 60 0 0 {name=M9
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
C {symbols/pfet_03v3.sym} 150 -50 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 70 120 0 0 {name=M2
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
