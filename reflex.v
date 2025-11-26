module reflex_led(
    input wire sensor,
	 output wire led_out
);

assign led_out = sensor;

endmodule