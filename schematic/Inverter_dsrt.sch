v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -220 -70 -220 -20 {
lab=#net1}
N -220 -70 -20 -70 {
lab=#net1}
N -60 -40 -60 60 {
lab=in}
N -150 -20 -70 -20 {
lab=in}
N -70 -20 -70 10 {
lab=in}
N -70 10 -60 10 {
lab=in}
N -220 40 -220 90 {
lab=GND}
N -220 90 -20 90 {
lab=GND}
N -20 -10 -20 30 {
lab=out}
N -150 40 -150 90 {
lab=GND}
N -20 -40 20 -40 {
lab=#net1}
N 20 -70 20 -40 {
lab=#net1}
N -20 -70 20 -70 {
lab=#net1}
N -20 60 20 60 {
lab=GND}
N 20 60 20 90 {
lab=GND}
N -20 90 20 90 {
lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -40 60 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -40 0 0 {name=M2
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
C {devices/vsource.sym} -220 10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -150 10 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_pin.sym} -150 -20 0 0 {name=p1 sig_type=std_logic lab=in
}
C {devices/lab_pin.sym} -20 10 2 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code.sym} -30 160 0 0 {name=TT_MODEL only_toplevel=true value=".lib \\\\$::SKYWATER_MODELS\\\\/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1
"
format="tcleval( @value )"}
C {devices/code_shown.sym} 60 -100 0 0 {name=s1 only_toplevel=false value="
.option wnflag=0
.option savecurrents
.control
save all
dc v2 0 1.8 0.01
plot in out
op
.endc"
}
C {devices/gnd.sym} -180 90 0 0 {name=l1 lab=GND}
