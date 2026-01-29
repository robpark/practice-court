import {solution} from "./solution.js";

function runTests() {
    const tests = [
        {
            name: "example case",
            input: [1, 3, 6, 4, 1, 2],
            expected: 5,
        },
        {
            name: "already contiguous",
            input: [1, 2, 3],
            expected: 4,
        },
        {
            name: "all negatives",
            input: [-1, -3],
            expected: 1,
        },
        {
            name: "missing one",
            input: [2, 3, 4],
            expected: 1,
        },
        {
            name: "duplicates only",
            input: [2, 2, 2],
            expected: 1,
        },
    ];

    let passed = 0;

    for (const t of tests) {
        const result = solution(t.input);
        const ok = result === t.expected;

        console.log(
            `${ok ? "✓" : "✗"} ${t.name} | expected=${t.expected}, got=${result}`
        );

        if (ok) passed++;
    }

    console.log(`\n${passed}/${tests.length} tests passed`);
}

runTests();
