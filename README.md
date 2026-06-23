# CORDIC Sin/Cos Calculator on FPGA 📐

## 📌 Project Overview
This repository contains a hardware-efficient implementation of the **CORDIC (Coordinate Rotation Digital Computer)** algorithm for calculating Sine and Cosine functions. The project is specifically developed and synthesized using **Altera/Intel Quartus II** and targets the **DE2 (Cyclone II)** FPGA development board. 

A key highlight of this project is the bottom-up hardware design approach, utilizing a combination of Verilog HDL and Quartus Block Design Files (`.bdf`) to construct custom adders and arithmetic units.

## 🚀 Key Features & Performance
* **Custom Arithmetic Units:** Built from the ground up using 4-bit and 16-bit Adders (`ADDER4bit.bdf`, `ADDER16bit.bdf`).
* **High Precision:** Implements a 16-bit fixed-point architecture utilizing the **Q1.15 format** for fractional representation.
* **Iterative Architecture:** Uses a 12-stage iteration process to compute trigonometric functions without large memory lookup tables (LUTs).
* **Validated Accuracy:** Computation error rigorously validated at **< 0.03%**.
* **Timing Optimized:** Critical paths were resolved through RTL-level optimization to ensure stable max frequency.

## 📁 Repository Structure
The repository is structured as a complete Quartus II project:
* `/*.bdf` & `/*.bsf` - Schematic Block Design and Symbol files for top-level routing and custom arithmetic modules (e.g., `ADDER16bit.bdf`, `ADDER4bit.bdf`).
* `/*.v` - Verilog RTL source files containing the core CORDIC iteration logic.
* `/simulation/qsim/` - Simulation files and waveform data (Vector Waveform Files) used to verify mathematical accuracy.
* `/output_files/` - Quartus compilation reports, synthesis results, and FPGA programming files (`.sof`, `.pof`).
* `/db/`, `/incremental_db/` - Quartus internal database folders.

## 🛠️ Tools & Technologies
* **Hardware Description Language:** Verilog HDL (47%) & Quartus Schematic Block Design
* **Simulation:** Qsim (Quartus Simulation)
* **EDA Tools:** Quartus II
* **Target Platform:** Altera DE2 Board (Cyclone II FPGA)

---
*Developed and verified by Ho Ngoc Thien Phuoc.*
