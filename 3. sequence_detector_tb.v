`timescale 1ns/1ps

module sequence_detector_tb;

    reg clk;
    reg reset;
    reg din;
    wire detected;

    sequence_detector uut (
        .clk(clk),
        .reset(reset),
        .din(din),
        .detected(detected)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Task to apply one input bit
    task send_bit;
        input bit_value;
        begin
            din = bit_value;
            #10;
        end
    endtask

    initial begin
        clk   = 0;
        reset = 1;
        din   = 0;

        // Reset
        #10;
        reset = 0;

        // Send sequence: 1011
        send_bit(1);
        send_bit(0);
        send_bit(1);
        send_bit(1);

        // Additional test pattern
        send_bit(0);
        send_bit(1);
        send_bit(0);
        send_bit(1);
        send_bit(1);

        #10;

        $finish;
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t | Reset=%b | Din=%b | Detected=%b",
                 $time, reset, din, detected);
    end

endmodule