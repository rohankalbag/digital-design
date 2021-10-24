transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Endsem_Files_20d170033/timer_controller.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Endsem_Files_20d170033/fsm.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Endsem_Files_20d170033/timer_ckt.vhdl}

vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Endsem_Files_20d170033/timer_controller_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  timer_controller_tb

add wave *
view structure
view signals
run 200 us
