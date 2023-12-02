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
lab=#net1}
N 10 -140 10 -80 {
lab=#net1}
N 10 -140 30 -140 {
lab=#net1}
N 10 -80 10 -30 {
lab=#net1}
N 10 -30 30 -30 {
lab=#net1}
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
N -70 -80 -30 -80 {
lab=#net1}
N -220 -210 70 -210 {
lab=vdd}
N -210 -210 -210 -130 {
lab=vdd}
N -190 -130 -60 -130 {
lab=vss}
N -60 -130 -60 30 {
lab=vss}
N -60 30 70 30 {
lab=vss}
C {devices/iopin.sym} -220 -210 2 0 {name=p1 lab=vdd}
C {devices/iopin.sym} 70 40 2 0 {name=p2 lab=vss}
C {devices/ipin.sym} -250 -80 0 0 {name=p3 lab=a}
C {devices/opin.sym} 130 -80 0 0 {name=p4 lab=y}
C {inv_5v.sym} -160 -80 0 0 {name=x1}
C {symbols/nfet_05v0.sym} 50 -30 0 0 {name=M3
L=0.70u
W=3u
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
C {symbols/pfet_06v0.sym} 50 -140 0 0 {name=M5
L=0.7u
W=9u
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
