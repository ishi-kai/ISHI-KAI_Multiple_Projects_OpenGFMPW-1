v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 80 110 80 {
lab=vss}
N 110 50 110 80 {
lab=vss}
N 0 50 110 50 {
lab=vss}
N -0 -20 -0 20 {
lab=out}
N -0 -50 110 -50 {
lab=vdd}
N 0 -80 110 -80 {
lab=vdd}
N 110 -80 110 -50 {
lab=vdd}
N -40 -50 -40 50 {
lab=in}
N -0 80 -0 110 {
lab=vss}
N -0 -110 -0 -80 {
lab=vdd}
N -70 -0 -40 0 {
lab=in}
N -0 0 100 0 {
lab=out}
N 100 0 170 0 {
lab=out}
C {devices/iopin.sym} 0 110 2 0 {name=p1 lab=GND}
C {devices/iopin.sym} 0 -110 2 0 {name=p2 lab=vdd}
C {devices/ipin.sym} -70 0 2 1 {name=p3 lab=in}
C {devices/opin.sym} 170 0 2 1 {name=p4 lab=out}
C {symbols/pfet_06v0.sym} -20 -50 0 0 {name=M3
L=0.60u
W=14.4u
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
C {symbols/nfet_06v0.sym} -20 50 0 0 {name=M4
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
model=nfet_05v0
spiceprefix=X
}
