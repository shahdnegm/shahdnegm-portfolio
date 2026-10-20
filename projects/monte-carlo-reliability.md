# Monte Carlo Production-Line Reliability Simulation

**MSc academic team project · University of Debrecen · 2026**  
**Team:** Shahd Ayman Negm, Hana Hesham Sayed and Youssif Attia

## Engineering question
How do stochastic machine failures, repairs and scrap affect a connected production line, and how should buffer capacity and preventive maintenance be chosen?

## Method
- Analysed a production line with **three machines and two intermediate buffers**.
- Prepared and cleaned manufacturing/reliability data in **Excel**, fitted probability distributions and assessed goodness of fit.
- Contributed to a **Python Monte Carlo simulation** comparing throughput, downtime, scrap and maintenance policies.
- The team evaluated **125 configurations with 1,000 replications per configuration**: buffer capacities of 10, 20, 30, 40 and 50 units for each buffer, plus reactive or 100/150/200/250-hour preventive-maintenance policies.

## Selected simulated findings
- The team's presentation identified **M3 as the bottleneck** at approximately **96% utilization** and reported approximately **29% blocked time for M2**.
- With both buffers at 30 units, reported mean monthly good output was approximately **27,422** with reactive maintenance versus **29,088** with preventive maintenance every 100 hours (about **6% higher simulated output**).
- Reported output standard deviation was approximately **991** versus **141** in that comparison.

These results are **model outputs**, not measured improvements in an operating factory. They depend on simulation assumptions and require real-world validation.

## Shahd's contribution
Prepared and cleaned Excel inputs; worked on distribution fitting and goodness-of-fit assessment; contributed to the Python simulation and comparison of maintenance and buffer scenarios. Overall simulation and evaluation were **team work**.

## Why it matters for MES/MOM
The same signals tracked in production software—machine state, throughput, downtime, scrap and work-in-progress—can drive engineering decisions about bottlenecks, material flow and maintenance.

**Skills:** Python, Excel, Monte Carlo simulation, reliability engineering, statistical analysis, production KPIs.

**Sharing:** Public project case study only. Original code and data are currently in a private working repository while teammate permissions and safe sharing are reviewed.

## Public Python source

[View the original team simulation script](monte-carlo-reliability/src/production_line_simulation_V3_experiment.py).

The script expects model parameters in an Excel workbook with a `Model Inputs` worksheet and uses `openpyxl`. Run it with `--help` for command options. The Excel workbook is not yet published, so the public repository alone is not yet reproducible. This source is an academic team contribution, not solely Shahd's work.
