export function solution(inputArray) {
    let smallest = 1

    for (let index = 0; index < inputArray.length; index++) {
        for (let index = 0; index < inputArray.length; index++) {
            if (inputArray[index] < 1) continue;

            if (inputArray[index] === smallest) {
                smallest++;
                break;
            }
        }
    }

    return smallest;
}

console.log(solution([1, 3, 6, 4, 1, 2])); // 5
console.log(solution([1, 2, 3]));       // 4
console.log(solution([-1, -3]));       // 1
