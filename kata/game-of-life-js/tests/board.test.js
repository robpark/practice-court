import {evolve, render} from "../src/board.js";

describe('rendering the board', () => {
    it('renders a 3x3 board with dead cells', () => {
        const board = [
            [false, false, false],
            [false, false, false],
            [false, false, false],
        ]
        expect(render(board)).toBe(
            `
. . .
. . .
. . .
`
        );
    });

    it('renders a 3x3 board with living cells', () => {
        const board = [
            [true, true, true],
            [true, true, true],
            [true, true, true],
        ]
        expect(render(board)).toBe(
            `
█ █ █
█ █ █
█ █ █
`
        );
    });

    it('renders a 3x3 board with mixed cells', () => {
        const board = [
            [false, false, true],
            [false, true, false],
            [true, false, false],
        ]
        expect(render(board)).toBe(
            `
. . █
. █ .
█ . .
`
        );
    });

    it('renders a 4x5 board with mixed cells', () => {
        const board = [
            [false, false, false, true],
            [false, true, false, false],
            [false, true, true, false],
            [false, true, true, false],
            [true, false, false, true],
        ]
        expect(render(board)).toBe(
            `
. . . █
. █ . .
. █ █ .
. █ █ .
█ . . █
`
        );
    });
});

describe('evolving the board', () => {
    it('evolves all cells', () => {
        const inBoard = [
            [false, false, true],
            [false, true, false],
            [true, false, false],
        ];
        const outBoard = [
            [false, false, false],
            [false, true, false],
            [false, false, false],
        ];
        expect(evolve(inBoard)).toEqual(outBoard);
    });
})