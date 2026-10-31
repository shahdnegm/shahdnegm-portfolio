# Olist E-Commerce Delivery Reliability — Six Sigma DMAIC

**Independent educational case study | October 2026**

Historical analysis of 99,441 Olist e-commerce orders using Excel, Power Query and the Six Sigma Define–Measure–Analyze–Improve–Control framework.

## Verified descriptive results

| Metric | Result |
|---|---:|
| Delivered orders | 96,478 |
| Eligible deliveries | 96,470 |
| Late, calendar-date definition | 6,534 (6.77%) |
| Late, full-timestamp definition | 7,826 (8.11%) |
| Cross-state late rate | 8.06% |
| Same-state late rate | 4.52% |

## Methods
**Define:** Charter, CTQ and SIPOC.  
**Measure:** Reconciliation, quality checks, descriptive statistics and monthly run charts.  
**Analyze:** Regional Pareto, order-level aggregation, seller/freight/geographical segmentation and Ishikawa hypotheses.  
**Improve:** Candidate solutions, illustrative decision screening, 5W2H and a proposed six-week pilot with difference-in-differences evaluation.  
**Control:** Proposed KPI monitoring, exploratory monthly p-chart and a reaction plan.

**Scope and limitations:** The study is observational. Date-based classification is provisional pending delivery-promise business-rule verification. Correlations are not proven causes. No intervention was executed; no cost savings or achieved improvements are claimed. Trial p-chart limits are exploratory.

## Project files
The named Word report and three Excel workbooks have been organized separately for Git LFS upload. **The binary attachments are not yet hosted in this repository.** The completed package contains:

- `report/Olist_Delivery_Reliability_DMAIC_Technical_Report.docx`
- `workbooks/Olist_DMAIC_Measure_Baseline_and_Data_Quality.xlsx`
- `workbooks/Olist_DMAIC_Analyze_Improve_Control.xlsx`
- `archive/Olist_Orders_Preliminary_Workbook.xlsx` (earlier working copy; optional)

Dataset: historical Olist Brazilian E-Commerce public data. This is an independent academic analysis, not an official Olist project.
