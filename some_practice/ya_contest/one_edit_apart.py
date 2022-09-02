def OneEditApart(first: str, other: str) -> bool:
    if abs(len(first) - len(other)) > 1:
        return False

    # if abs(len(first) - len(other)) == 1:
    #     match = True
    # else:
    match = False
    i, j = 0, 0
    while i < len(first) and j < len(other):
        if first[i] == other[j]:
            i += 1
            j += 1
            continue
        if not match:
            match = True
            if len(first) == len(other):
                i += 1
                j += 1
                continue
            if len(first) < len(other):
                j += 1
            else:
                i += 1
        else:
            return False
    return True


print(str(OneEditApart("cat", "dog")) + "-False")
print(str(OneEditApart("cat", "cats")) + "-True")
print(str(OneEditApart("cat", "cut")) + "-True")
print(str(OneEditApart("cat", "cast")) + "-True")
print(str(OneEditApart("cat", "at")) + "-True")
print(str(OneEditApart("cat", "acts")) + "-False")
print(str(OneEditApart("cats", "casts")) + "-True")
print(str(OneEditApart("catsts", "casts")) + "-True")
print(str(OneEditApart("vavv", "vyv")) + "-False")
