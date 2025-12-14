#!/bin/bash

# Define root folder names
ROOT_FOLDERS=(
    "00_Roadmap"
    "01_Lab_Management"
    "02_Datasheets"
    "03_Templates"
)

# Define project folder names
PROJECT_FOLDERS=(
    "Phase_1_Measurements"
    "Phase_2_Soldering"
    "Phase_3_Firmware/AVR"
    "Phase_3_Firmware/STM32"
    "Phase_3_Firmware/ESP32"
    "Phase_3_Firmware/Teensy"
    "Phase_3_Firmware/Pico"
    "Phase_4_Sensors"
    "Phase_5_Power"
    "Phase_6_PCB"
    "Phase_7_Capstone"
)

# Create root folders and add README
for ROOT in "${ROOT_FOLDERS[@]}"; do
    mkdir -p "$ROOT"
    echo -e "# $ROOT\n\nThis folder contains all related files and documentation for $ROOT." > "$ROOT/README.md"
done

# Create project folders
for PROJECT in "${PROJECT_FOLDERS[@]}"; do
    mkdir -p "$PROJECT"
done

# Provide feedback to the user
echo "Embedded engineering monorepo structure initialized."