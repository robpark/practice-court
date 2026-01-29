import {evolveCell} from "../src/cell.js";

describe('evolving a cell', () => {
    it('dies from underpopulation', () => {
        const board = [
            [false, false, false],
            [false, true, false],
            [false, false, false],
        ];

        expect(evolveCell(board, 1, 1)).toBe(false);
    });

    it('dies from overpopulation', () => {
        const board = [
            [false, true, false],
            [true, true, true],
            [false, true, false],
        ];

        expect(evolveCell(board, 1, 1)).toBe(false);
    });

    it('stays alive with 2 living neighbors', () => {
        const board = [
            [false, false, false],
            [true, true, true],
            [false, false, false],
        ];

        expect(evolveCell(board, 1, 1)).toBe(true);
    });
})