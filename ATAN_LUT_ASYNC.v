module ATAN_LUT_ASYNC (
    input [3:0] ADDR,
    output reg [15:0] DATA_OUT
);
    always @(*) begin
        case (ADDR)
            4'd0: DATA_OUT = 16'd11520; // 45.0 deg
            4'd1: DATA_OUT = 16'd6801;  // 26.5 deg
            4'd2: DATA_OUT = 16'd3593;  // 14.0 deg
            4'd3: DATA_OUT = 16'd1824;  // 7.1 deg
            4'd4: DATA_OUT = 16'd916;   // 3.6 deg
            4'd5: DATA_OUT = 16'd458;
            4'd6: DATA_OUT = 16'd229;
            4'd7: DATA_OUT = 16'd115;
            4'd8: DATA_OUT = 16'd57;
            4'd9: DATA_OUT = 16'd29;
            4'd10: DATA_OUT = 16'd14;
            4'd11: DATA_OUT = 16'd7;
            4'd12: DATA_OUT = 16'd4;
            4'd13: DATA_OUT = 16'd2;
            4'd14: DATA_OUT = 16'd1;
            4'd15: DATA_OUT = 16'd0;
            default: DATA_OUT = 16'd0;
        endcase
    end
endmodule