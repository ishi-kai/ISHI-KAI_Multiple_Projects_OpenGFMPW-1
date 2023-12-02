v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -460 -400 -250 -400 {
lab=vdd}
N -250 -400 -250 -370 {
lab=vdd}
N -460 -380 -230 -380 {
lab=vss}
N -230 -380 -230 -370 {
lab=vss}
N -440 -400 -440 -240 {
lab=vdd}
N -440 -240 -250 -240 {
lab=vdd}
N -250 -240 -250 -220 {
lab=vdd}
N -440 -240 -440 -80 {
lab=vdd}
N -440 -80 -250 -80 {
lab=vdd}
N -250 -80 -250 -70 {
lab=vdd}
N -440 -80 -440 60 {
lab=vdd}
N -440 60 -260 60 {
lab=vdd}
N -260 60 -250 60 {
lab=vdd}
N -250 60 -250 80 {
lab=vdd}
N -230 50 -230 80 {
lab=vss}
N -420 50 -230 50 {
lab=vss}
N -420 -380 -420 50 {
lab=vss}
N -230 -230 -230 -220 {
lab=vss}
N -420 -230 -230 -230 {
lab=vss}
N -230 -90 -230 -70 {
lab=vss}
N -420 -90 -230 -90 {
lab=vss}
N -420 -340 -340 -340 {
lab=vss}
N -420 -190 -340 -190 {
lab=vss}
N -420 -40 -340 -40 {
lab=vss}
N -420 110 -340 110 {
lab=vss}
N -420 50 -420 110 {
lab=vss}
N -370 -300 -340 -300 {
lab=clk}
N -370 -300 -370 -150 {
lab=clk}
N -370 -150 -340 -150 {
lab=clk}
N -370 -150 -370 0 {
lab=clk}
N -370 0 -350 0 {
lab=clk}
N -350 0 -340 0 {
lab=clk}
N -370 -0 -370 150 {
lab=clk}
N -370 150 -340 150 {
lab=clk}
N -460 -320 -340 -320 {
lab=d0}
N -460 -170 -340 -170 {
lab=d1}
N -460 -20 -340 -20 {
lab=d2}
N -460 130 -340 130 {
lab=d3}
N -460 150 -370 150 {
lab=clk}
N -250 60 -0 60 {}
N 20 50 20 60 {}
N -230 50 20 50 {}
N -50 -90 -0 -90 {}
N -50 -90 -50 -80 {}
N -260 -80 -50 -80 {}
N -230 -100 -230 -90 {}
N -230 -100 20 -100 {}
N 20 -100 20 -90 {}
N -250 -240 -0 -240 {}
N -230 -260 -230 -220 {}
N -230 -260 20 -260 {}
N 20 -260 20 -250 {}
N 20 -250 20 -240 {}
N -250 -400 -0 -400 {}
N -0 -400 -0 -390 {}
N 20 -410 20 -390 {}
N -230 -420 -230 -380 {}
N -230 -420 20 -420 {}
N 20 -420 20 -410 {}
C {rs_ff.sym} -190 -20 0 0 {name=x1}
C {rs_ff.sym} -190 130 0 0 {name=x2}
C {rs_ff.sym} -190 -320 0 0 {name=x3}
C {rs_ff.sym} -190 -170 0 0 {name=x4}
C {devices/iopin.sym} -460 -400 2 0 {name=p3 lab=vdd}
C {devices/iopin.sym} -460 -380 2 0 {name=p4 lab=vss}
C {devices/ipin.sym} -460 -320 0 0 {name=p1 lab=d0}
C {devices/ipin.sym} -460 -170 0 0 {name=p2 lab=d1}
C {devices/ipin.sym} -460 -20 0 0 {name=p5 lab=d2}
C {devices/ipin.sym} -460 130 0 0 {name=p6 lab=d3}
C {devices/opin.sym} 140 -340 0 0 {name=p7 lab=q0}
C {devices/opin.sym} 140 -190 0 0 {name=p8 lab=q1}
C {devices/opin.sym} 140 -40 0 0 {name=p9 lab=q2}
C {devices/opin.sym} 140 110 0 0 {name=p10 lab=q3}
C {devices/ipin.sym} -460 150 0 0 {name=p11 lab=clk}
C {inv.sym} 40 -340 0 0 {name=x5}
C {inv.sym} 40 -190 0 0 {name=x6}
C {inv.sym} 40 -40 0 0 {name=x7}
C {inv.sym} 40 110 0 0 {name=x8}
