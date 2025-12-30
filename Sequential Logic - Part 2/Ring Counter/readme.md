This project implements an 8-bit ring counter using Verilog RTL.
A single logic 1 circulates through the register on each positive clock edge.

How It Works

>> One-hot encoding (only one bit HIGH at a time)

>> Shifts on every clock edge

>> Wraps around after the MSB

>> Reset initializes a valid one-hot state
