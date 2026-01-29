import {evolveCell} from "./cell.js";

const DEAD_CELL = '.';
const LIVING_CELL = '█'


function transformRow(row) {
    return row.map(function (cell) {
        if (cell) {
            return LIVING_CELL;
        } else {
            return DEAD_CELL;
        }
    });
}

export function render(board) {
    const renderRows = board.map(function (row) {
        let renderRow = transformRow(row);
        return renderRow.join(' ');
    })
    return "\n" + renderRows.join("\n") + "\n";
}

export function evolve(board) {
    let newBoard = [];
    for (let row = 0; row < board.length; row++) {
        let newRow = []
        for (let column = 0; column < board[row].length; column++) {
            let newCell = evolveCell(board, row, column);
            newRow.push(newCell);
        }
        newBoard.push(newRow);
    }
    return newBoard;
}

