# System Architecture and Inspection Workflow

This diagram is a **redrawn explanatory schematic** based on the published research, not a screenshot of deployed MES software or the original implementation.

```mermaid
flowchart TD
    A["Bottle arrives at inspection station"] --> B["Sensor trigger and single-camera acquisition"]
    B --> C["1280 × 720 USB camera, ring lighting and 45° mirror"]
    C --> D["YOLOv8: classify SKU and locate inspection regions"]
    D --> E["Load SKU-specific parameters and tolerances"]
    E --> F["Hybrid cap-seal check: profile AOI + YOLO"]
    E --> G["Color and label conformity"]
    E --> H["Volume-to-SKU consistency"]
    E --> I["Expiry code OCR"]
    E --> J["Bottle deformation profile"]
    F --> K{"Combine module decisions"}
    G --> K
    H --> K
    I --> K
    J --> K
    K --> L["Per-bottle OK / NG result and module scores"]
    L --> M["Traceability record in Excel / CSV"]
    L -. "Proposed downstream integration" .-> N["Alert and electropneumatic rejection concept"]
```

## How this connects to MES / MOM

The project demonstrates how an inspection system can generate **item-level quality decisions and traceability records**, the type of production information used by MES/MOM applications. It **does not claim an actual MES integration or a commissioned production-line rejector**.

## Optical and calibration assumptions

- One fixed USB camera operating at 1280 × 720 pixels.
- Ring illumination, controlled background and 45° mirror arrangement.
- SKU-specific regions of interest, JSON configuration and calibrated tolerance thresholds.
- Changes in camera position, product presentation or lighting may require recalibration.

## Key engineering contributions

1. Combining learned SKU detection with interpretable, deterministic inspection criteria.
2. Using complementary cap-sealing methods to reduce weaknesses of a single test.
3. Producing per-item inspection decisions plus module-level traceability data.
4. Designing a possible link between quality decisions and reject/alert workflows.

**Source:** [Negm et al. (2026), The International Journal of Advanced Manufacturing Technology](https://doi.org/10.1007/s00170-026-18704-3).
