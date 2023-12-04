v {xschem version=3.4.5 file_version=1.2

* Copyright 2022 GlobalFoundries PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N -10 -210 10 -210 {
lab=A8}
N -10 -210 -10 -140 {
lab=A8}
N -30 -140 -10 -140 {
lab=A8}
N -10 -140 -10 -60 {
lab=A8}
N -10 -60 10 -60 {
lab=A8}
N 50 -180 50 -90 {
lab=Q9}
N 50 -140 90 -140 {
lab=Q9}
N 50 -60 60 -60 {
lab=xxx}
N 60 -60 60 -30 {
lab=xxx}
N 50 -30 60 -30 {
lab=xxx}
N 50 -30 50 0 {
lab=xxx}
N 50 -270 50 -240 {
lab=VDD}
N 50 -240 60 -240 {
lab=VDD}
N 60 -240 60 -210 {
lab=VDD}
N 50 -210 60 -210 {
lab=VDD}
C {devices/ipin.sym} -30 -140 0 0 {name=p1 lab=A8}
C {devices/opin.sym} 90 -140 0 0 {name=p2 lab=Q9}
C {symbols/pfet_06v0.sym} 30 -210 0 0 {name=M1
L=0.56u
W=2.80u
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
C {symbols/nfet_05v0.sym} 30 -60 0 0 {name=M2
L=0.60u
W=3.00u
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
C {devices/iopin.sym} 50 -270 0 0 {name=p3 lab=VDD}
C {devices/iopin.sym} 50 0 0 0 {name=p4 lab=VSS}
