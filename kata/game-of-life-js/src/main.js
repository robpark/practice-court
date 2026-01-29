import {evolve, render} from "./board.js";

let board = [
    [true, true, false, false, false],
    [false, true, false, false, false],
    [false, false, true, false, false],
    [false, false, true, true, false],
    [false, false, true, true, false],
];
console.log(render(board));

for (let evolution = 0; evolution < 5; evolution++) {
    board = evolve(board);
    console.log(render(board));
}
