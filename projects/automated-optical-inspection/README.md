# Vision-Based Automated Optical Inspection for Mixed-SKU Bottling Lines

**Bachelor's thesis research and first-author peer-reviewed publication** · University of Debrecen · 2026

**Published paper:** [Vision-based automated optical inspection for real-time quality control: hybrid single-camera deep-learning AOI for mixed-SKU bottling lines](https://doi.org/10.1007/s00170-026-18704-3)

**Authors:** Shahd Ayman Negm, Mayar Abdullah Taleb, Péter Korondi, and Géza Husi.

**Journal:** *The International Journal of Advanced Manufacturing Technology*, 146, 1455–1472 (2026). Published online 11 August 2026. DOI: [10.1007/s00170-026-18704-3](https://doi.org/10.1007/s00170-026-18704-3)

## Industrial challenge

Mixed-SKU household-chemical bottling lines require repeatable checks of cap closure, bottle SKU and color, volume-label consistency, expiry codes, and bottle deformation. Manual inspection is inconsistent; conventional multi-camera cells can be costly or difficult to retrofit.

## System

The proposed prototype uses **one fixed 1280 × 720 USB camera**, ring illumination, matte background and a **45° mirror** to cover several inspection views. YOLOv8 classifies the bottle SKU and selects SKU-specific regions of interest and JSON-configured parameters. Classical AOI and OCR then perform interpretable module-level defect checks, contributing to a per-bottle OK/NG decision and traceability log.

### Inspection modules

1. Hybrid cap sealing: height-profile AOI combined with a trained YOLOv8 cap classifier.
2. Color and label conformity: SKU-aware calibrated color-distance assessment.
3. Volume-to-SKU consistency: geometric bottle-height estimate reconciled with OCR of label volume.
4. Expiry-code verification: preprocessing and EasyOCR with reference-code validation.
5. Structural deformation: silhouette-width comparison with a reference profile.

The proposed design additionally discusses Excel/CSV inspection logging, Telegram alerts and a downstream electropneumatic rejector interface. The **reported station benchmark evaluates vision decisions, not measured actuation repeatability**.

## Results: 33-bottle integrated station benchmark

| Inspection task | Reported performance |
|---|---:|
| Hybrid cap sealing | 100% accuracy (33/33) |
| Cap sealing, AOI only | 90.9% accuracy (30/33) |
| Cap sealing, YOLO only | 87.9% accuracy (29/33) |
| Color/SKU classification | 100% accuracy (33/33) |
| Structural deformation | 97.0% accuracy |
| Expiry-code OCR decisions | 87.9% accuracy (29/33) |
| Label conformity | 90.9% accuracy |

**Interpretation:** These results describe a small 33-bottle benchmark under the calibrated prototype conditions. They are not evidence of universal industrial-line performance.

## Project materials

- [Architecture and inspection workflow](ARCHITECTURE.md)
- [Published benchmark summary](RESULTS.md)
- [Publication and citation](PUBLICATION.md)

The original uploaded thesis archive includes datasets, experimental Python scripts, configurations, model assets, design files, and videos. **Those materials are deliberately not published here as received**: some scripts contain embedded messaging credentials and local filesystem paths; dataset and third-party redistribution rights require review. No claim is made that this public documentation is a fully reproducible code release.

## Skills represented

Python · YOLOv8 · OpenCV-style classical AOI · OCR · computer vision · industrial quality inspection · sensor integration · traceability · experimental evaluation

---
*This page summarizes the cited peer-reviewed publication and does not imply sole authorship of the paper.*