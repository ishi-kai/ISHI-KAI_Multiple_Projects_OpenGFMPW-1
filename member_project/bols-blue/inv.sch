v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 110 -60 110 20 {
lab=Q13}
N 40 -90 70 -90 {
lab=A12}
N 40 -90 40 50 {
lab=A12}
N 40 50 70 50 {
lab=A12}
N 110 -160 110 -120 {
lab=VDD}
N 110 80 110 100 {
lab=GND}
N 110 50 140 50 {
lab=GND}
N 140 50 140 90 {
lab=GND}
N 110 90 140 90 {
lab=GND}
N 110 -90 130 -90 {
lab=VDD}
N 130 -140 130 -90 {
lab=VDD}
N 110 -140 130 -140 {
lab=VDD}
N 110 -30 120 -30 {
lab=Q13}
C {devices/ipin.sym} 40 -50 0 0 {name=p1 lab=A12
}
C {devices/opin.sym} 120 -30 0 0 {name=p2 lab=Q13}
C {symbols/nfet_06v0.sym} 90 50 0 0 {name=M1
L=0.70u
W=3.60u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_05v0
spiceprefix=X
}
C {symbols/pfet_06v0.sym} 90 -90 0 0 {name=M2
L=0.60u
W=14.40u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_05v0
spiceprefix=X
}
C {devices/iopin.sym} 110 -160 0 0 {name=p3 lab=VDD
}
C {devices/iopin.sym} 110 100 0 0 {name=p4 lab=GND
}
