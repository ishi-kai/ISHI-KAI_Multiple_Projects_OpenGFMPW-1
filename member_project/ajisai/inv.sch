v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -70 40 20 {
lab=out}
N -50 50 -0 50 {
lab=in}
N -50 -100 -50 50 {
lab=in}
N -50 -100 -0 -100 {
lab=in}
N 40 -100 110 -100 {
lab=VDD}
N 110 -170 110 -100 {
lab=VDD}
N 40 -170 110 -170 {
lab=VDD}
N 40 -170 40 -130 {
lab=VDD}
N 40 50 110 50 {
lab=GND}
N 110 50 110 130 {
lab=GND}
N 40 130 110 130 {
lab=GND}
N 40 80 40 130 {
lab=GND}
N 40 -230 40 -170 {
lab=VDD}
N -160 -70 -50 -70 {
lab=in}
C {symbols/pfet_06v0.sym} 20 -100 0 0 {name=M1
L=0.70u
W=5.00u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_06v0
spiceprefix=X
}
C {symbols/nfet_06v0.sym} 20 50 0 0 {name=M2
L=0.70u
W=2.00u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_06v0
spiceprefix=X
}
C {devices/ipin.sym} -160 -70 0 0 {name=p1 lab=in
}
C {devices/opin.sym} 40 -20 0 0 {name=p2 lab=out}
C {devices/gnd.sym} 40 130 0 0 {name=l1 lab=GND}
C {devices/vdd.sym} 40 -230 0 0 {name=l2 lab=VDD}
