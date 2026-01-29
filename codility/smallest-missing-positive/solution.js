export function solution(inputArray) {

    let positives = new Set()

    for (let index = 0; index < inputArray.length; index++) {
        if (inputArray[index] > 0) {
            positives.add(inputArray[index])
        }
    }

    if (positives.size < 1) return 1;

    let result = 1
    while (positives.has(result)) {
        result++;
    }

    return result;
}

console.log(solution([1, 3, 6, 4, 1, 2])); // 5
console.log(solution([1, 2, 3]));       // 4
console.log(solution([-1, -3]));       // 1
