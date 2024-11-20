v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 120 100 120 140 {
lab=Y}
N 120 120 140 120 {
lab=Y}
N 60 70 80 70 {
lab=A}
N 60 70 60 170 {
lab=A}
N 60 170 80 170 {
lab=A}
N 40 120 60 120 {
lab=A}
N 120 20 120 40 {
lab=VPWR}
N 120 200 120 220 {
lab=VGND}
N 120 170 130 170 {
lab=VGND}
N 130 170 130 200 {
lab=VGND}
N 120 200 130 200 {
lab=VGND}
N 120 70 130 70 {
lab=VPWR}
N 130 40 130 70 {
lab=VPWR}
N 120 40 130 40 {
lab=VPWR}
C {sky130_fd_pr/nfet_01v8.sym} 100 170 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 70 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {iopin.sym} 120 20 0 0 {name=p1 lab=VPWR}
C {iopin.sym} 120 220 0 0 {name=p2 lab=VGND}
C {ipin.sym} 40 120 0 0 {name=p3 lab=A}
C {opin.sym} 140 120 0 0 {name=p4 lab=Y}
