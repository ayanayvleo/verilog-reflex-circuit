✨ Reflex LED — FPGA Hardware Project (Cyclone 10 LP)
<p align="center"> <img src="./images/B8A14126.jpeg" width="420"> </p> <p align="center"> <b>A real FPGA hardware reflex system using pure Verilog and the Intel Cyclone 10 LP.</b> </p>
🚀 Project Badges
<p align="center">










</p>
🎬 Demo (GIF Placeholder)

Upload your LED-blinking GIF here once recorded:

![Demo GIF](./images/reflex_led_demo.gif)

🔥 Overview

This project demonstrates real digital logic implemented on an FPGA—no CPU, no firmware, no operating system.
The design responds instantly, showing how hardware computes without latency.

👉 When the input goes HIGH, the LED instantly lights up.

That’s a hardware reflex.

The design is written in Verilog, compiled in Intel Quartus Prime, and deployed on the Cyclone 10 LP via USB programming.

🧠 Hardware Architecture
📦 Block Diagram
         +-----------------------+
         |      Cyclone 10       |
         |         FPGA          |
 SENSOR --> [ Input Buffer ] ----+-------> LED_OUT --> External LED
         |                       |
         +-----------------------+

Logic Behavior

Voltage enters sensor pin

FPGA logic routes it directly

LED reflects sensor state in real time

🧩 Verilog Logic (reflex_led.v)
module reflex_led(
    input wire sensor,
    output wire led_out
);

assign led_out = sensor;

endmodule


💬 Whatever the sensor sees → the LED shows, instantly.

🔌 Pin Assignments
Signal	FPGA Pin	Board Header	Voltage	Notes
led_out	PIN_142	J8-2	2.5V/3.3V	Drives LED
sensor	PIN_143	J8-3	2.5V/3.3V	Input line
GND	—	J8-1	Ground	LED return path
🛠 Required Hardware

CycloneFlex Dev Kit (Cyclone 10 LP FPGA)

Breadboard

1× LED

1× 220–330Ω resistor

Jumper wires

USB-C cable

🏗️ Step-by-Step Replication Guide
1️⃣ Create the Quartus Project

Open Quartus Prime Lite

New project → name: reflex_led

Device: 10CL016YE144C8G

2️⃣ Add the Verilog File

File → New → Verilog HDL File

Save as reflex_led.v

Paste the Verilog code

3️⃣ Assign FPGA Pins

Open Pin Planner

Set:

led_out → PIN_142

sensor → PIN_143

4️⃣ Compile the Project

Click Start Compilation
✔ No errors
✔ 1 warning (expected)

5️⃣ Wire the LED
FPGA J8-2 (PIN_142) → LED Anode (+)
LED Cathode (–) → Resistor → Breadboard GND rail
FPGA J8-1 → Breadboard GND rail

6️⃣ Program the FPGA

Tools → Programmer

Select .sof file

Press Start

Your LED now responds instantly.

📸 Hardware Demo
<p align="center"> <img src="./images/B8A14126.jpeg" width="420"> </p>
🖥️ Quartus Synthesis
<p align="center"> <img src="./images/quartus_synthesis.png" width="650"> </p>

✔ Build successful
✔ Correct device
✔ Pins assigned
✔ Ready for hardware

🔧 Wiring Schematic
                +-------------------------------+
                |        Cyclone 10 LP          |
                |         FPGA Core             |
                |                               |
   SENSOR ----->|  PIN_143      Reflex Logic    |-----> LED_OUT (PIN_142)
                |                 |              |
                |      assign led_out = sensor; |
                +-------------------------------+
                            |             |
                            |             +-----> LED (Anode)
                            |
                        GND (J8-1)
                            |
                       Resistor 220Ω
                            |
                         LED (Cathode)

🎓 Skills Demonstrated
🔹 FPGA Development

Verilog HDL

Quartus Prime workflow

Pin planning

Synthesis & timing

Bitstream flashing

🔹 Hardware Engineering

Breadboard prototyping

LED + resistor circuitry

IO voltage standards

Grounding & signal integrity

🔹 Digital Logic

Combinational circuits

Zero-latency reflex behavior

Real-time I/O mapping

🔹 Documentation & Git

Repo organization

Clean professional README

Hardware + software integration

🗂 Repo Structure
/reflex_led
│── reflex_led.v
│── reflex_led.qsf
│── reflex_led.sof
│── LICENSE
│── README.md
└── /images
    ├── B8A14126.jpeg
    ├── quartus_synthesis.png
    └── reflex_led_demo.gif

📜 License (MIT)
MIT License

Copyright (c) 2025 Ayana Leonard

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction...


(Full MIT license included in your LICENSE file)

👩🏽‍💻 Author

Ayana Leonard
Tech Founder • U.S. Army Veteran • Embedded Systems & FPGA Engineer in Progress
