# Define root folders
$RootFolders = @(
    "00_Roadmap",
    "01_Lab_Management",
    "02_Datasheets",
    "03_Templates"
)

# Define project folders
$ProjectFolders = @(
    "Phase_1_Measurements",
    "Phase_2_Soldering",
    "Phase_3_Firmware/AVR",
    "Phase_3_Firmware/STM32",
    "Phase_3_Firmware/ESP32",
    "Phase_3_Firmware/Teensy",
    "Phase_3_Firmware/Pico",
    "Phase_4_Sensors",
    "Phase_5_Power",
    "Phase_6_PCB",
    "Phase_7_Capstone"
)

# Create root folders and add README
foreach ($Root in $RootFolders) {
    New-Item -ItemType Directory -Path $Root -Force
    Set-Content -Path "$Root/README.md" -Value "# $Root`n`nThis folder contains all related files and documentation for $Root."
}

# Create project folders
foreach ($Project in $ProjectFolders) {
    New-Item -ItemType Directory -Path $Project -Force
}

# Provide feedback to the user
Write-Output "Embedded engineering monorepo structure initialized."