transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Practica9.vho}

vcom -93 -work work {C:/altera/13.0sp1/SistemasI/Practica9/Practica9.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Practica9_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Practica9_vht_tst

add wave *
view structure
view signals
run -all
