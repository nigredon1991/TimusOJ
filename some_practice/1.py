nums = [0,1,3,50,75]
lower = 0
upper = 99

x = list (range(lower, upper+1))

new_elems = []
for elem in x:
    if elem in nums:
        continue
    new_elems.append(elem)

print(new_elems)
new_elems.append(new_elems[-1]+2)
result = []
last = None
new_elem = []
for elem in new_elems:
    if last == elem - 1:
        # print(f"continue {last=}, {elem=}")
        last = elem
        continue
    if new_elem and new_elem[0] != last:
        new_elem.append(last)
    last = elem
    print(f"{new_elem=}")
    if len(new_elem) == 2:
        # print(f"append 2 {new_elem[0]}->{new_elem[1]}")
        result.append(f"{new_elem[0]}->{new_elem[1]}")
        new_elem = []
    if len(new_elem) == 1:
        # print(f"append 1 {new_elem[0]}")
        result.append(f"{new_elem[0]}")
        new_elem = []
    new_elem.append(elem)


print(result)



