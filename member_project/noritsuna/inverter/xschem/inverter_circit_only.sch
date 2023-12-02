v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 360 -340 360 -240 {
lab=Q7}
N 320 -370 320 -210 {
lab=A6}
N 360 -290 520 -290 {
lab=Q7}
N 250 -290 320 -290 {
lab=A6}
N 360 -440 360 -400 {
lab=VDD}
N 360 -180 360 -100 {
lab=VSS}
N 360 -420 390 -420 {
lab=VDD}
N 390 -420 390 -370 {
lab=VDD}
N 360 -370 390 -370 {
lab=VDD}
N 360 -210 390 -210 {
lab=VSS}
N 390 -210 390 -150 {
lab=VSS}
N 360 -150 390 -150 {
lab=VSS}
C {symbols/pfet_06v0.sym} 340 -370 0 0 {name=M1
L=0.60u
W=7.20u
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
C {symbols/nfet_06v0.sym} 340 -210 0 0 {name=M2
L=0.60u
W=3.60u
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
C {devices/ipin.sym} 250 -290 0 0 {name=p1 lab=A6}
C {devices/opin.sym} 520 -290 0 0 {name=p2 lab=Q7}
C {devices/iopin.sym} 360 -440 2 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 360 -100 0 0 {name=p4 lab=GND}
