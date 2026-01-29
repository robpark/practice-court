# Conway’s Game of Life — Rules

Conway’s Game of Life is a **cellular automaton** devised by mathematician **John Horton Conway**. It consists of an
infinite two-dimensional grid of cells, each of which is either **alive** or **dead**. The grid evolves in discrete time
steps called **generations**, according to a small set of deterministic rules.

---

## Cell States

Each cell is in one of two states:

- **Alive**
- **Dead**

---

## Neighborhood

For any given cell, its **neighborhood** consists of the **eight adjacent cells** surrounding it:

- Horizontal
- Vertical
- Diagonal

This is commonly referred to as the **Moore neighborhood**.

---

## Evolution Rules

At each generation, **all cells are updated simultaneously** based on the following rules:

### 1. Underpopulation

A **live** cell with **fewer than two** live neighbors **dies**.

> Reason: Isolation

---

### 2. Survival

A **live** cell with **two or three** live neighbors **survives**.

---

### 3. Overpopulation

A **live** cell with **more than three** live neighbors **dies**.

> Reason: Overcrowding

---

### 4. Reproduction

A **dead** cell with **exactly three** live neighbors becomes **alive**.

---

## Simultaneous Update Rule

All births and deaths occur **simultaneously**.

- The next generation is computed entirely from the previous generation.
- No intermediate updates influence the current step.

---

## Board Characteristics

- The grid is conceptually **infinite**.
- Practical implementations often use:
    - Fixed-size grids
    - Bounded grids with dead edges
    - Toroidal (wrap-around) grids

The choice of boundary behavior is an **implementation detail**, not part of the core rules.

---

## Common Terminology

- **Generation** — One discrete step in time.
- **Still Life** — A pattern that does not change between generations.
- **Oscillator** — A pattern that repeats after a fixed number of generations.
- **Spaceship** — A pattern that moves across the grid over time.

---

## Summary

- Cells live or die based on **neighbor count**
- Only **2 or 3** neighbors preserve life
- **Exactly 3** neighbors create life
- All cells update **simultaneously**

These simple rules give rise to surprisingly complex behavior.
