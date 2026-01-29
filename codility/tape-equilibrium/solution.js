export function solution(inputArray) {
    let total = 0;
    for (let index = 0; index < inputArray.length; index++) {
        total += inputArray[index];
    }

    let leftSum = 0;
    let rightSum = 0;
    let minDiff = 10000000;

    for (let index = 0; index < inputArray.length -1; index++) {
        leftSum += inputArray[index];
        rightSum = total - leftSum;
        let diff = Math.abs(leftSum - rightSum);
        if (diff > minDiff) break;
        minDiff = diff;
    }

    return minDiff;
}

console.log(solution([3, 1, 2, 4, 3])); // 1
console.log(solution([1, 2, 1, 4])); // 0
console.log(solution([-1, -4, -3])); // 2
console.log(solution([-1, 3, -2, 4, -3])); // 1
console.log(solution([1000, -1000])); // 2000
