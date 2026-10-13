# Published Evaluation Results

**Primary source:** [Negm et al. (2026)](https://doi.org/10.1007/s00170-026-18704-3)

## Integrated benchmark

The publication reports an end-to-end station benchmark containing **33 mixed-SKU bottles**. Ground truth was assigned from visual inspection and process knowledge. Learning components were developed on separate task-specific datasets.

| Task | Result | Qualification |
|---|---|---|
| Cap sealing, AOI + YOLO fusion | 33/33 correct (100%) | 15 defective and 18 conforming caps in the integrated benchmark |
| Cap sealing, AOI alone | 30/33 correct (90.9%) | Comparator evaluated on the same 33 bottles |
| Cap sealing, YOLO alone | 29/33 correct (87.9%) | Comparator evaluated on the same 33 bottles |
| Color/SKU classification | 33/33 correct (100%) | Under stabilized optical conditions |
| Structural deformation | 97.0% accuracy | 100% sensitivity and 94.4% specificity in the benchmark |
| Expiry-code OCR | 29/33 correct (87.9%) | Includes correct, incorrect and unreadable codes |
| Label conformity | 90.9% accuracy | As reported in article abstract |

## Model-development datasets

- Cap-sealing YOLOv8 dataset: **421 images** (369 training, 35 validation, 17 test).
- Color/SKU YOLOv8 dataset: **306 images** (210 training, 57 validation, 39 test).
- Expiry code analysis used EasyOCR; no task-specific OCR network was trained in this study.
- Structural-deformation analysis relied on a reference silhouette-width profile; no supervised deformation detector was trained.

## Limitations

The 33-bottle integrated evaluation is small. Results reflect a calibrated single-camera prototype, specific product SKUs and controlled illumination. The article notes that repeatability of pneumatic actuation was not separately benchmarked. These findings should not be described as validated 100% general-purpose production-line inspection.

**No numerical values in this document are independently recomputed from the thesis archive.**