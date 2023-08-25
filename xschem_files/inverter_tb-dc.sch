v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -280 60 -280 80 {
lab=GND}
N -50 -90 -50 -70 {
lab=GND}
N -145 55 -145 80 {
lab=GND}
N -190 0 -180 0 {
lab=in}
N -280 -20 -280 -0 {
lab=in}
N -50 -170 -50 -150 {
lab=vd}
N -145 -70 -145 -55 {
lab=vd}
N -30 0 -20 0 {
lab=out}
C {inverter.sym} -20 20 0 0 {name=x1}
C {devices/vsource.sym} -280 30 0 0 {name=Vin value=3}
C {devices/vsource.sym} -50 -120 0 0 {name=Vdd value=1.8}
C {devices/gnd.sym} -145 80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -280 80 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -50 -70 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -280 -20 0 0 {name=p1 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -190 0 0 0 {name=p2 sig_type=std_logic lab=in}
C {devices/lab_pin.sym} -50 -170 0 0 {name=p3 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} -145 -70 0 0 {name=p4 sig_type=std_logic lab=vd}
C {devices/lab_pin.sym} -20 0 2 0 {name=p5 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 130 -120 0 0 {name=simulation only_toplevel=false value="
*.DC SRCname START STOP STEP

.control
save all
dc Vin 0 1.8 1m
plot in out
.endc

"}
C {devices/code.sym} 200 -320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
