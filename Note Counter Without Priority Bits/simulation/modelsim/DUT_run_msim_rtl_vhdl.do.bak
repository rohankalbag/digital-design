transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/Gates.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/DUT.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/divider.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/notecounter.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/atm.vhdl}

vcom -93 -work work {E:/Academics/IIT Bombay/Repositories/VHDL/Midsem_Backup/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
