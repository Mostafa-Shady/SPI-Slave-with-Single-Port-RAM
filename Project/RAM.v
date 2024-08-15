module RAM #(
    parameter MEM_DEPTH =256,
    parameter MEM_WIDTH=8,
    parameter ADDR_SIZE=$clog2(MEM_DEPTH)
     
) (
    input rx_valid,CLK,rst_n,
    input [9:0] din,
    output reg tx_valid,
    output reg [7:0]dout
);
    ////////////////////
    //assign Control and the internally address
    ////////////////////
    reg [7:0] din_a;
    reg [7:0] out_a;
    wire [1:0] Control;
    assign Control=din[9:8];
    ////////////////////
    //RAM Memory
    ////////////////////
    reg [MEM_WIDTH-1:0] mem [MEM_DEPTH-1:0];
    ////////////////////
    //out and rst
    ////////////////////
    always @(posedge CLK) begin
        if (!rst_n) begin
            dout<=0;
            tx_valid<=0;
        end
        else begin
            case (Control)
            2'b00:begin 
                        if (rx_valid) begin
                            din_a<=din[7:0];
                            tx_valid<=0;    
                        end
                    end
            2'b01:begin
                        if (rx_valid) begin
                            mem[din_a]<=din[7:0];
                            tx_valid<=0;        
                        end  
            end
            2'b10:begin
                        if (rx_valid) begin
                            out_a<=din[7:0];
                            tx_valid<=0;
                        end            
            end
            2'b11:begin
                            if (rx_valid) begin
                                dout<=mem[out_a];
                                tx_valid<=1;    
                            end               
            end
        endcase
        end
    end
endmodule