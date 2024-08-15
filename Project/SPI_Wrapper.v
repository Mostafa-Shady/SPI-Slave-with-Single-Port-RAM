module wrapper (SS_n,MOSI,clk,rst_n,MISO);
    input SS_n,clk,MOSI,rst_n;
    output MISO;
    wire [9:0]rx_data_bus;
    wire [7:0]tx_data_bus;
    wire rx_valid_bit,tx_valid_bit;


    RTL_SPI SPI(MOSI,MISO,SS_n,clk,rst_n,rx_data_bus,rx_valid_bit,tx_data_bus,tx_valid_bit);
    RAM m1(rx_valid_bit,clk,rst_n,rx_data_bus,tx_valid_bit,tx_data_bus);
    
    
endmodule