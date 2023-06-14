# SequenceDetector---HimanshuDas

Although the concept of ‘Sequence detection’ sounds pretty naïve, but it has got lots of interesting applications in modern age, be it – radar searching, error checking in streaming/data transmission application, detecting pilot signals for frame synchronization and channel estimation in communication system.
In this project work, I have designed a basic sequence detector by taking into account the number of I/O ports available with the FPGA. For example- we have only 8 LEDs on the board, so we decided to keep the bigger sequence length up to 8 bits only. I used Push buttons to enter the 8-bit sequence and DIP switches to enter the
desired 4-bit sequence (to be detected in the 8-bit sequence).
Since push buttons were used in the design, so I have used debouncing block and slow clock generating block to stabilize the input signals given from the push buttons.
Problem Statement:
1. We can enter any sequence of 8 bits using push buttons on FPGA programmed for ‘0’ and ‘1’ bit.
2. Any 4-bit sequence can be entered using the DIP switches on FPGA that we want to detect in the 8-bit sequence.
3. 8 Output LEDs (on FPGA) are programmed to indicate whenever the desired 4-bit sequence is detected.
4. Once a batch of 8-bit sequence is entered completely, next we can initialize the system before entering the next 8-bit sequence by pressing either push button ‘1’ or ‘0’.
