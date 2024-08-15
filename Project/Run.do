vlib work

vlog RAM.v SPI_RTL.v SPI_Wrapper.v SPI_TB.v

vsim -voptargs=+acc work.SPI_TB

add wave *

add wave -position insertpoint  \
sim:/SPI_TB/DUT/SPI/tx_data \
sim:/SPI_TB/DUT/SPI/rx_data \
sim:/SPI_TB/DUT/SPI/tx_valid \
sim:/SPI_TB/DUT/SPI/rx_valid \

run -all

#quit -sim


