## Game of Life — Kata Checklist

### Representation

- [ ] Choose a board representation (2D array, Set of coordinates, etc.)
  -  2D array
- [ ] Decide how dead cells are represented
  - alive: `true`
  - dead: `false`
- [ ] Define board boundaries (finite grid, dead edges, or wrap-around)
  - finite

### Neighbor Counting

- [ ] Count neighbors for a single cell
- [ ] Verify corner and edge behavior
- [ ] Confirm diagonal neighbors are included

### Rules

- [ ] Live cell with < 2 neighbors dies
- [ ] Live cell with 2 or 3 neighbors survives
- [ ] Live cell with > 3 neighbors dies
- [ ] Dead cell with exactly 3 neighbors becomes alive

### Generation Evolution

- [ ] Compute next generation without mutating current state
- [ ] Apply rules simultaneously to all cells
- [ ] Return a new board instance

### Canonical Patterns

- [ ] Still life: Block remains unchanged
- [ ] Oscillator: Blinker alternates every generation
- [ ] Spaceship: Glider moves across the board

### Output (Optional)

- [ ] Render board as ASCII string
- [ ] Print generations to terminal
- [ ] Animate with timed updates

### Refactoring

- [ ] Separate evolution logic from rendering
- [ ] Keep core logic pure and testable
- [ ] Remove duplication in neighbor checks
