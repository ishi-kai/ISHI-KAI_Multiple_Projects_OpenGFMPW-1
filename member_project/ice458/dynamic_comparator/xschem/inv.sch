v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -110 70 -60 {
lab=y}
N -30 -80 10 -80 {
lab=a}
N 10 -140 10 -80 {
lab=a}
N 10 -140 30 -140 {
lab=a}
N 10 -80 10 -30 {
lab=a}
N 10 -30 30 -30 {
lab=a}
N 70 -210 70 -170 {
lab=vdd}
N 70 -140 90 -140 {
lab=vdd}
N 90 -190 90 -140 {
lab=vdd}
N 70 -190 90 -190 {
lab=vdd}
N 70 0 70 40 {
lab=vss}
N 70 -30 90 -30 {
lab=vss}
N 90 -30 90 20 {
lab=vss}
N 70 20 90 20 {
lab=vss}
N 70 -80 130 -80 {
lab=y}
C {symbols/nfet_03v3.sym} 50 -30 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 50 -140 0 0 {name=M2
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
C {devices/iopin.sym} 70 -210 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 70 40 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} -30 -80 0 0 {name=p3 lab=a}
C {devices/opin.sym} 130 -80 0 0 {name=p4 lab=y}
