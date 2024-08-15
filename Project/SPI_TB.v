module SPI_TB ();
    //////////////////////
    //Signal Declaration
    //////////////////////
    reg clk,rst_n,MOSI,SS_n;
    wire MISO;
    ////////////////////
    //DUT Instantiation
    ////////////////////
    wrapper DUT(SS_n,MOSI,clk,rst_n,MISO);
    ////////////////////
    //Clock Generation
    ////////////////////
    initial begin
        clk=0;
        forever begin
            #5 clk=~clk;
        end
    end
    ////////////////////
    //Test The Stimulus
    ////////////////////
    initial begin
                $readmemh("mem.dat",DUT.m1.mem);
                rst_n = 0;
                SS_n = 1;
                MOSI = 0;
                @(negedge clk);
                rst_n = 1; 
                //send address 2
                SS_n = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                repeat (8) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                @(negedge clk);
                //  Send data 8 to address 2
                SS_n = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                repeat (4) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                repeat(5)@(negedge clk);
                //send address 100
                SS_n = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                repeat (3) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                @(negedge clk);

                // send data 14 to address 100
                SS_n = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                repeat (4) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                repeat(5)@(negedge clk);
                //Read address 2
                SS_n = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                repeat (6) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                @(negedge clk);
                //Read data from address 2
                SS_n = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                repeat (6) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                repeat(11)@(negedge clk);
                SS_n = 1;
                @(negedge clk);

                // Read address 100
                SS_n = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                MOSI = 0;
                @(negedge clk);
                SS_n = 1;
                @(negedge clk);

                //Read data from address 100
                SS_n = 0;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                MOSI = 1;
                @(negedge clk);
                repeat (6) begin
                    MOSI = 0;
                    @(negedge clk);
                end
                MOSI = 1;
                @(negedge clk);
                MOSI = 0;
                repeat(11)@(negedge clk);
                SS_n = 1;
                @(negedge clk);

                $stop;
    end
endmodule