transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/Four Adder Subtracter/Gates.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/Four Adder Subtracter/DUT.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/Four Adder Subtracter/Full_Adder.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/Four Adder Subtracter/Four_Adder_Subtracter.vhdl}

vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/Four Adder Subtracter/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
