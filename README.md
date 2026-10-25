# 5T OTA Design

Transistor-level analog IC design, learned the hands-on way with the free
open-source toolchain — no lab equipment, runs locally in Docker.

**The goal:** design and verify a 5-transistor OTA to a real spec, holding it
across process corners — the same exercise a junior analog designer does in
industry, with the open PDK equivalent of the commercial flow.

> **Spec:** VDD 1.8 V · load 10 pF · gain ≥ 40 dB · GBW ≥ 1 MHz · phase margin ≥ 60°
> held across tt/ss/ff/sf corners and ±10 % supply.

## The learning ladder

| Stage | Deliverable | Status |
|---|---|---|
| 0 — Environment | Docker toolchain + CMOS inverter VTC | ✅ complete |
| 1 — Device characterization | sky130 NMOS/PMOS curve families, extracted V<sub>th</sub>/λ, gm/ID lookup | ⬜ not started |
| 2 — Current mirror | 1:4 NMOS mirror, corner-verified copy accuracy | ⬜ not started |
| 3 — **The 5T OTA to spec** | schematic, bode plots per corner, sizing rationale, iteration log | ⬜ not started |
| 4 — Two-stage Miller OTA *(stretch)* | pole-splitting demonstration, re-hit the spec | ⬜ not started |
| 5 — Layout *(stretch)* | Magic layout, DRC/LVS clean, post-PEX re-simulation | ⬜ not started |

## Toolchain

- **IIC-OSIC-TOOLS** Docker image — Xschem, ngspice, Magic, full sky130 PDK
- **PDK:** SkyWater `sky130A` (open 130 nm CMOS — the one with a free tapeout path)
- **Flow:** schematic (Xschem) → netlist → simulate (ngspice) → analyze, per stage

```bash
docker pull hpretl/iic-osic-tools
# designs folder mounted into the container at /foss/designs
```

## Repository layout

```
notes/     learning log — one entry per session, what confused me included
visuals/   circuit walkthroughs and reference diagrams
stage0/    stage deliverables: schematic, testbenches, plots, READMEs
```

Each stage folder is self-contained and committed as completed — the commit
history doubles as the design iteration log.