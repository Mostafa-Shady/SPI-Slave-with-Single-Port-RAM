module RTL_SPI (MOSI,MISO,SS_n,clk,rst_n,rx_data,rx_valid,tx_data,tx_valid);
/////////////////////////////////////BARAMETERS///////////////////////////////////
parameter IDLE       =3'b000;
parameter CHK_CMD    =3'b001;
parameter WRITE      =3'b010;
parameter READ_ADD   =3'b011;
parameter READ_DATA  =3'b100;
///////////////////////////////////FSM ENCODING METHOD//////////////////////////

///////////////////////////////////INPUTS////////////////////////////////////////
input MOSI,SS_n,rst_n,clk,tx_valid;
input [7:0]tx_data;
///////////////////////////////////OUTPUTS/////////////////////////////////////
output reg MISO,rx_valid;
output reg [9:0]rx_data;
///////////////////////////////////NETS////////////////////////////////////////
reg [2:0]cs,ns;
reg [3:0]counter;
reg rd_address_recieved;/*signal to track if read address is recieved(initially no read address is received)*/
////////////////////////////////////STAT MEMORY//////////////////////////////
always @(posedge clk) begin
    if (~rst_n) begin
        cs<=IDLE;
    end
    else cs<=ns;
end
//////////////////////////////////NEXT STAT/////////////////////////////
always @(*) begin
    case (cs)
        IDLE:
        begin
            if (SS_n) begin
            ns=IDLE;
            end 
            else ns=CHK_CMD;
        end
        CHK_CMD:
        begin
            if (SS_n) begin
                ns=IDLE;
            end
            else begin
               if (!MOSI) begin
                ns=WRITE;
               end
               else begin
                if (~rd_address_recieved) begin
                    ns=READ_ADD;
                end
                else ns=READ_DATA;
               end
            end
        end
        WRITE:
        begin
            if (SS_n) begin
                ns=IDLE;
            end
            else ns=WRITE;
        end
        READ_ADD:
        begin
            if (SS_n) begin
                ns=IDLE;
            end
            else ns=READ_ADD;
        end
        READ_DATA:
        begin
            if (SS_n) begin
                ns=IDLE;
            end
            else ns=READ_DATA;
        end

        default: ns=IDLE;
    endcase
end
/////////////////////////OUTPUT LOGIC/////////////////////
always @(posedge clk) begin
    if (~rst_n) begin
        rx_data<=0;
        rx_valid<=0;
        rd_address_recieved<=0;
        MISO<=0;
        counter<=0;
    end
    else begin
        case (cs)
            IDLE:
            begin
                counter<=0;
                rx_valid<=0;
                MISO<=0;
            end 
            CHK_CMD:
            begin
                counter<=0;
                rx_valid<=0;
            end
            WRITE:
            begin
                if (counter<=9) begin
                    rx_data={rx_data[8:0],MOSI};
                    rx_valid<=0;
                    counter<=counter+1;
                end
                if (counter>=9) begin
                    rx_valid<=1;
                end
            end
            READ_ADD:
            begin
                if (counter<=9) begin
                    rx_data={rx_data[8:0],MOSI};
                    rx_valid<=0;
                    rd_address_recieved<=1;
                    counter<=counter+1;
                end
                if (counter>=9) begin
                    rx_valid<=1;
                end
            end
            READ_DATA:
            begin
                if (tx_valid&&counter>=3) begin
                    MISO<=tx_data[counter-3];
                    counter<=counter-1;
                end
                else begin
                    if (counter<=9) begin
                        rx_data<={rx_data[8:0],MOSI};
                        rx_valid<=0;
                        counter<=counter+1;
                    end
                    if (counter>9) begin
                        rx_valid<=1;
                        rd_address_recieved<=0;
                    end
                end
            end
        endcase
    end
end
endmodule