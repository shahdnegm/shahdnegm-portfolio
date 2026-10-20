# Four-DOF Robotic Manipulator Arm

Academic mechatronics project · University of Debrecen · 2025

A four-degree-of-freedom robotic-arm design for light industrial drilling, combining mechanical design, motor and encoder selection, a KiCad controller design, and MATLAB/Simulink motor-control modelling.

## Project figures

<img src="figures/arm-assembly.png" alt="Four-DOF robotic-arm assembly" width="420">

*Final CAD assembly — design report Fig. 2, PDF p. 4.*

<img src="figures/controller-pcb.jpg" alt="Motor-controller PCB" width="420">

*KiCad motor-controller PCB — design report Fig. 3, PDF p. 6.*

![Simulated controller-response comparison](figures/pid-position.png)

*Simulated controller-response comparison — design report Fig. 6, PDF p. 8.*

[Browse all seven original figures](GALLERY.md), including the base CAD, wiring diagram, cascade-current response and Simulink control structure.

## Project files

| Area | Files |
|---|---|
| Design report | [Project description](Project-description.pdf) |
| Motor-control report | [PI, PID and cascade-control analysis](PID/PID-analysis.pdf) |
| MATLAB | [Motor model and controller calculations](PID/code.m) |
| Simulink | [Motor-control model](PID/simulink.slx) |
| Electronics | [PCB layout](Microcontroller/PCB.kicad_pcb), [schematic](Microcontroller/schematic.kicad_sch), [KiCad project settings](Microcontroller/Project.kicad_pro) |
| Mechanical assembly | [Assembly drawing](drawings/Assembly.pdf), [exploded view](drawings/Exploded-view.pdf) |
| Components | [Base](drawings/Base.pdf), [upper base](drawings/upper-base.pdf), [main arm](drawings/main-arm.pdf), [motor](drawings/Motor.pdf), [motor casing](drawings/Motor-casing.pdf), [motor top](drawings/motor-top.pdf), [shaft](drawings/shaft.pdf), [shaft aligner](drawings/shaft-aligner.pdf), [end effector](drawings/end-effector.pdf) |

All 18 source files from the robotic-arm archive are represented here. Public PDFs and the MATLAB header have the university student ID removed. Technical content is otherwise retained.

## Engineering scope

- Mechanical assembly and dimensioned component drawings.
- Maxon DCX 22 S motor and ENX 10 EASY encoder selection.
- ATmega328P-based controller design with VNH5019A-E motor driver.
- DC motor transfer-function modelling and comparison of PI, PID and cascade current/speed control.
- Simulation-based study of tracking, current response and voltage saturation.

This is an academic design and simulation portfolio. The reports describe the work performed; the files do not independently establish physical hardware performance or production readiness.

## Open and use the files

**Reports and drawings:** open the PDFs in a PDF viewer. Use GitHub's download control for a local copy.

**MATLAB and Simulink:** download or clone the repository, then use the project PID folder as the MATLAB current folder:

```matlab
cd('projects/robotic-manipulator-arm/PID')
run('code.m')
open_system('simulink.slx')
```

The script uses Symbolic Math Toolbox (`syms`) and Control System Toolbox (`tf`). The model was last saved in MATLAB/Simulink R2024b. Open it in a compatible release and install any additional products reported by its blocks. Review workspace parameters and block settings before running a simulation. MATLAB execution has not been independently rerun for this publication.

**KiCad:** open the PCB and schematic directly in a compatible KiCad release. The archived settings file is named `Project.kicad_pro`, while the PCB and schematic have different base names. Preserve the provided files when inspecting them; linking them into a single renamed KiCad project is a separate editing step.

The mechanical deliverables supplied in the archive are PDF drawings; no native mechanical CAD assembly or microcontroller firmware was present in this folder.
