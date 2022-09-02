def get_card_count(n, k, cards) -> int:
    if k >= n:
        return sum(cards)
    max_sum = -1
    sum_l = sum(cards[: 0])
    sum_r = sum(cards[: -k -1 : -1])
    cur_sum = sum_l + sum_r
    if cur_sum > max_sum:
        max_sum = cur_sum
    for i in range(0, k):
        # print(f"{cur_sum=}")
        # print(f"{sum_l=}")
        # print(f"{sum_r=}")
        # print(f"{i=}")
        # print(f"{-k+i=}")
        sum_l += cards[i]
        sum_r -= cards[-k+i]
        cur_sum = sum_l + sum_r
        # cur_sum = sum(cards[: i + 1]) + sum(cards[: -k + i : -1])
        if cur_sum > max_sum:
            max_sum = cur_sum

    return max_sum


n = int(input())
k = int(input())
cards = list(map(int, input().split()))
# print(f"{n=}")
# print(f"{k=}")
# print(f"{cards=}")
print(get_card_count(n, k, cards))
