# sequence-detector-
Sequence Detector

📌 Description

A sequence detector is a sequential digital circuit that detects a specific binary sequence in a stream of input bits and produces an output when the desired sequence is detected.

🎯 Objective

To design and simulate a Verilog-based sequence detector for detecting the sequence 1011.

⚙️ Specifications

- Input: "din"
- Output: "detected"
- Clock: "clk"
- Reset: "reset"
- Detected Sequence: "1011"
- Design Type: Overlapping sequence detector

🛠️ Files

- "sequence_detector.v" – Verilog design code
- "sequence_detector_tb.v" – Testbench for verification
- "simulation/waveform.png" – Simulation waveform

🔄 Working

The circuit monitors the serial input "din" on every rising edge of the clock. When the sequence "1011" is received, the "detected" output becomes "1" for one clock cycle.

The detector supports overlapping sequences.

🧪 Simulation

The testbench applies different input patterns, including the target sequence "1011", and verifies the detector output.

💻 Tools

- Verilog HDL
- Icarus Verilog / ModelSim / Vivado
- GTKWave for waveform viewing

📊 Expected Result

When the input sequence "1011" is detected:

detected = 1

Otherwise:

detected = 0

👨‍💻 Author

Digital Electronics / Verilog HDL Project

author:sai teja sree 
