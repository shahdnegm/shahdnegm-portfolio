# Monte Carlo Production-Line Reliability Simulation

MSc academic team project · University of Debrecen · 2026

## Files

- [Excel workbook](data/Project_Monte_Carlo_Complete.xlsx) — download and open in Excel; GitHub does not render the workbook.
- [Original Python simulation](src/production_line_simulation_V3_experiment.py) — preserved unchanged.
- [Project overview and selected findings](../monte-carlo-reliability.md).

## Run locally

Requires Python 3.10 or later and openpyxl. From the repository root:

```bash
python -m pip install openpyxl
cd projects/monte-carlo-reliability
python src/production_line_simulation_V3_experiment.py --help
```

Run the built-in checks and a short smoke simulation:

```bash
python src/production_line_simulation_V3_experiment.py --excel data/Project_Monte_Carlo_Complete.xlsx --validate --runs 1 --horizon 1
```

Run a 720-hour scenario with 100 replications:

```bash
python src/production_line_simulation_V3_experiment.py --excel data/Project_Monte_Carlo_Complete.xlsx --runs 100 --horizon 720 --b1 30 --b2 30 --pm 100
```

Use `--pm Reactive` for reactive maintenance. Results are written to `simulation_results_v2/` by default (`monte_carlo_runs.csv` and `summary.csv`); set `--outdir` to select another output folder.

Full experimental design (125 scenarios, 1,000 replications each; may take substantial time):

```bash
python src/production_line_simulation_V3_experiment.py --excel data/Project_Monte_Carlo_Complete.xlsx --experiment --runs 1000 --horizon 720 --buffer-values 10,20,30,40,50 --pm-values Reactive,100,150,200,250
```

This writes `scenario_summary.csv`. The script reads cached numeric values from the workbook's `Model Inputs` worksheet. If edited formulas have missing cached values, open the workbook in Excel, recalculate and save before rerunning. The explicit `--excel` argument is required for this filename because the script defaults to `Project.xlsx`.

## Model scope

Three machines and two intermediate buffers; stochastic failures, repairs, processing times and scrap; reactive and preventive-maintenance policies. Results are simulated academic findings, dependent on assumptions, and require real-world validation. A short smoke run does not reproduce or independently validate the full reported experiment.
