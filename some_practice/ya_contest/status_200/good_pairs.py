def abs(number):
    if number < 0:
        return -number
    return number


def get_number_of_good_pairs(numbers) -> int:
    count_pairs = 0
    for i in range(len(numbers)):
        for j in range(i + 1, len(numbers)):
            if abs(numbers[i] - numbers[j]) % 200 == 0:
                print(numbers[i])
                print(numbers[j])
                print(numbers[i] & 0b111)
                print(numbers[j] & 0b111)
                print()
            if numbers[i] & 0b111 == numbers[j] & 0b.111:
                if abs(numbers[i] - numbers[j]) % 200 == 0:
                    count_pairs += 1

    return count_pairs


n = int(input())
numbers = list(map(int, input().split()))
print(get_number_of_good_pairs(numbers))
