v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 130 40 170 {
lab=GND}
N 40 150 110 150 {
lab=GND}
N 110 130 110 150 {
lab=GND}
N 110 150 180 150 {
lab=GND}
N 180 130 180 150 {
lab=GND}
N 40 50 40 70 {
lab=VPWR}
N 110 50 110 70 {
lab=VGND}
N 180 50 180 70 {
lab=A}
C {sky130_ef_ip__template/sky130_ef_ip__template.sym} 470 100 0 0 {name=x1}
C {vsource.sym} 40 100 0 0 {name=VVPWR value=1.8V savecurrent=false}
C {vsource.sym} 110 100 0 0 {name=VVGND value=0V savecurrent=false}
C {vsource.sym} 180 100 0 0 {name=VA value="PULSE(0 1.8 5n 0.1n 0.1n 10n 20n)" savecurrent=false}
C {gnd.sym} 40 170 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 530 100 0 1 {name=p1 sig_type=std_logic lab=Y}
C {lab_pin.sym} 40 50 2 0 {name=p2 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 110 50 2 0 {name=p3 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 180 50 2 0 {name=p4 sig_type=std_logic lab=A}
C {lab_pin.sym} 460 60 2 1 {name=p5 sig_type=std_logic lab=VPWR}
C {lab_pin.sym} 460 140 2 1 {name=p6 sig_type=std_logic lab=VGND}
C {lab_pin.sym} 420 100 2 1 {name=p7 sig_type=std_logic lab=A}
C {code_shown.sym} 290 250 0 0 {name=Commands only_toplevel=false value="
.tran 10p 40n 
.control
  run
  plot v(A) v(Y)+2
.endc
"
}
C {sky130_fd_pr/corner.sym} 140 250 0 0 {name=CORNER only_toplevel=false corner=tt}
