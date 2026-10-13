# System Architecture and Inspection Workflow

The architecture below is summarized from the peer-reviewed paper ([DOI](https://doi.org/10.1007/s00170-026-18704-3)), not reverse-engineered or independently tested from the uploaded code.

```text
Through-beam sensor trigger
          |
Camera acquisition (1280 × 720) + ring illumination + 45° mirror
          |
YOLOv8 SKU/color prediction
          |
Load SKU-conditioned JSON parameters and regions of interest
          |
    +-----+---------+----------+----------+----------+
    |             |           |          |          |
Cap seal AOI   Color/label  Volume/SKU  Expiry OCR  Silhouette
+ YOLO fusion   assessment  comparison   EasyOCR    deformation
    |             |           |          |          |
    +-------------+-----------+----------+----------+
                          |
                Module-level OK/NG decisions
                          |
            Conservative final bottle verdict
                          |
          Structured inspection record (Excel/CSV)
                          |
            Optional alerts and rejector interface
```

## Optical and calibration assumptions

- Single fixed USB camera at 1280 × 720 pixels.
- Controlled ring illumination and matte gray background.
- Fixed 45° mirror for an additional label/text view.
- SKU-specific JSON parameters, calibrated regions of interest and tolerance values.
- The paper does not claim full viewpoint or lighting invariance: significant changes in station geometry require recalibration.

## Key engineering contributions

- Combining learned SKU-aware routing with interpretable AOI rules.
- Complementing cap-height measurement with learned cap classification.
- Integrating inspection modules into a single recorded bottle-level decision.
- Connecting quality records to potential response workflows.

Source: Negm et al., *International Journal of Advanced Manufacturing Technology* (2026), DOI 10.1007/s00170-026-18704-3.