transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {timer_controller.vho}

vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Endsem_Files_20d170033/timer_controller_tb.vhd}

vsim -t 1ps -L maxv -L gate_work -L work -voptargs="+acc"  timer_controller_tb

add wave *
view structure
view signals
run 60 us
