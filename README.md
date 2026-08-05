# Pulse Radar Signal Denoising and Target Detection using FIR Filters

This project simulates a basic pulse radar system using **GNU Octave/MATLAB**. It demonstrates how an FIR (Finite Impulse Response) filter can be used to reduce noise from a received radar signal and improve target detection.

The project was developed to understand practical concepts of Digital Signal Processing (DSP), including radar signal generation, FIR filter design, FFT analysis, and Signal-to-Noise Ratio (SNR).

---

## Features

- Generates a pulse radar signal
- Simulates a target echo
- Adds Gaussian noise to the received signal
- Designs and applies an FIR low-pass filter
- Performs FFT analysis before and after filtering
- Calculates SNR before and after filtering
- Detects the target and estimates its range
- Automatically saves all output plots

---

## Technologies Used

- GNU Octave 11.x
- MATLAB-compatible code
- Signal Package

---

## Project Structure

```text
Radar-FIR-Target-Detection/
│
├── src/
│   ├── main.m
│   ├── radar_pulse.m
│   ├── target_echo.m
│   ├── add_noise.m
│   ├── fir_filter_design.m
│   ├── detect_target.m
│   ├── fft_analysis.m
│   ├── snr_analysis.m
│   ├── processing_pipeline.m
│   └── save_plot.m
│
├── images/
├── README.md
└── LICENSE
```

---

## Processing Flow

```
Radar Pulse
      ↓
Target Echo
      ↓
Gaussian Noise
      ↓
FIR Filter
      ↓
Filtered Signal
      ↓
FFT Analysis
      ↓
SNR Calculation
      ↓
Target Detection
```

---

## How to Run

1. Install GNU Octave.
2. Install the Signal package.

```octave
pkg install -forge signal
pkg load signal
```

3. Open the project folder.

```octave
cd src
```

4. Run the project.

```octave
main
```

---

## Results

### Complete Processing Pipeline

![Processing Pipeline](images/processing_pipeline.png)

---

### Radar Pulse

![Radar Pulse](images/radar_pulse.png)

---

### Target Echo

![Target Echo](images/target_echo.png)

---

### Noisy Signal

![Noisy Signal](images/noisy_signal.png)

---

### FIR Filter Frequency Response

![FIR Response](images/fir_response.png)

---

### Filtered Signal

![Filtered Signal](images/filtered_signal.png)

---

### FFT Analysis

![FFT Analysis](images/fft_analysis.png)

---

### Target Detection

![Target Detection](images/target_detection.png)

---

### SNR Comparison

![SNR Comparison](images/snr_comparison.png)

---

## Sample Output

```
Target detected at sample : 201

Estimated Target Range : 301.50 meters

SNR Before Filtering : 9.99 dB

SNR After Filtering : 18.75 dB
```

---

## What I Learned

While working on this project, I gained practical experience with:

- FIR filter design
- Radar signal simulation
- Noise reduction techniques
- FFT and frequency-domain analysis
- SNR calculation
- Target detection using thresholding
- Writing modular MATLAB/GNU Octave programs

---

## Future Improvements

Some features that can be added in the future:

- Multiple target simulation
- Doppler effect simulation
- Adaptive filtering
- GUI for parameter selection
- Real radar or audio signal input
- Comparison of FIR and IIR filters

---

## Author

**Sarim Sajjad**

B.Tech in Electronics and Communication Engineering

---

If you found this project useful, feel free to star the repository.
