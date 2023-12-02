v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 0 0 -0 {
lab=ctrl}
N 180 -0 220 -0 {
lab=#net1}
N 200 -240 200 0 {
lab=#net1}
N 400 0 540 0 {
lab=#net2}
N 540 -240 540 0 {
lab=#net2}
N 500 -240 540 -240 {
lab=#net2}
N 460 -320 460 -270 {
lab=A}
N 280 -160 460 -160 {
lab=B}
N 460 -200 460 -160 {
lab=B}
N 460 -210 460 -200 {
lab=B}
N -20 -120 410 -120 {
lab=vss}
N 410 -240 410 -120 {
lab=vss}
N 410 -240 460 -240 {
lab=vss}
N 40 -370 40 -50 {
lab=vdd}
N 260 -70 260 -50 {
lab=vdd}
N 40 -70 260 -70 {
lab=vdd}
N 60 -120 60 -50 {
lab=vss}
N 280 -90 280 -50 {
lab=vss}
N 280 -120 280 -90 {
lab=vss}
N -20 -370 240 -370 {
lab=vdd}
N 240 -240 280 -240 {
lab=vdd}
N 240 -320 240 -270 {
lab=A}
N 240 -370 280 -370 {
lab=vdd}
N 240 -210 240 -160 {
lab=B}
N 240 -160 280 -160 {
lab=B}
N 280 -370 280 -240 {
lab=vdd}
N 240 -320 460 -320 {
lab=A}
C {inv_5v.sym} 90 0 0 0 {name=x1}
C {devices/ipin.sym} -40 0 0 0 {name=p1 lab=ctrl}
C {devices/iopin.sym} 370 -320 3 0 {name=p2 lab=A}
C {devices/iopin.sym} 370 -160 1 0 {name=p3 lab=B}
C {devices/iopin.sym} -20 -370 2 0 {name=p4 lab=vdd}
C {devices/iopin.sym} -20 -120 2 0 {name=p5 lab=vss}
C {symbols/nfet_05v0.sym} 480 -240 0 1 {name=M3
L=0.70u
W=1u
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
C {symbols/pfet_06v0.sym} 220 -240 0 0 {name=M5
L=0.7u
W=3u
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
C {inv_5v.sym} 310 0 0 0 {name=x2}
