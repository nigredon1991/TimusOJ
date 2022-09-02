def get_card_count(n, k, cards) -> int:
    if k >= n:
        return sum(cards)
    sums_l = [sum(cards[:x]) for x in range(0, k)]
    sums_r = [sum(cards[-x:]) for x in range(1, k + 1)]
    print(sums_l)
    print(sums_r)
    max_sum = 0
    for num_l, cur_sum_l in enumerate(sums_l):
        if cur_sum_l + sums_r[k - 1 - num_l] > max_sum:
            max_sum = cur_sum_l + sums_r[k - 1 - num_l]

    return max_sum


n = int(input())
k = int(input())
cards = list(map(int, input().split()))

print(get_card_count(n, k, cards))
