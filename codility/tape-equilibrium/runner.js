import {solution} from "./solution.js";

function runTests() {
    const tests = [
        {
            name: "example",
            input: [3, 1, 2, 4, 3],
            expected: 1,
        },
        {
            name: "two elements",
            input: [5, 6],
            expected: 1,
        },
        {
            name: "all equal",
            input: [10, 10, 10, 10],
            expected: 0,
        },
        {
            name: "negatives",
            input: [-10, -20, -30, -40],
            expected: 20,
        },
        {
            name: "mixed signs",
            input: [1000, -1000],
            expected: 2000,
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
