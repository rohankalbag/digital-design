transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/2to4_Decoder_Enable/Gates.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/2to4_Decoder_Enable/DUT.vhdl}
vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/2to4_Decoder_Enable/2to4_decoder.vhd}

vcom -93 -work work {E:/Academics/IIT Bombay/Quartus/Midsem Practice/2to4_Decoder_Enable/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
