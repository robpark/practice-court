export function evolveCell(board, row, column) {
    let cell = board[row][column];
    let livingNeighors = 0;
    for (let testRow = row - 1; testRow <= row + 1; testRow++) {
        if (testRow < 0 || testRow >= board.length) {
            continue;
        }
        if ((column > 0) && board[testRow][column - 1]) {
            livingNeighors++;
        }
        if ((testRow !== row) && board[testRow][column]) {
            livingNeighors++;
        }
        if (board[testRow][column + 1]) {
            livingNeighors++;
        }
    }
    if (livingNeighors < 2 || livingNeighors > 3) {
        cell = false;
    }
    return cell;
}