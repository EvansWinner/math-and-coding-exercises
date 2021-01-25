"""Programming Praxis Stalin sort from https://programmingpraxis.com/2021/01/19/stalin-sort/ ."""


# Going to do a proper, non-destructive version.
def stalin(lst):
    """Sort a list by omitting any elements that are not sorted already."""
    if not isinstance(lst, list):
        return []
    if not lst:
        return []
    if len(lst) == 1:
        return lst
    ret = [lst[0]]
    for i in range(1, len(lst)):
        if lst[i] >= lst[i - 1]:
            ret.append(lst[i])
    return ret


# Bonus
def mao(lst):
    """Given a list, return a sorted list, whether you like it or not."""
    return [1, 2]


# Tests
if __name__ == "__main__":
    assert stalin(1) == []
    assert stalin([]) == []
    assert stalin([1]) == [1]
    assert stalin([1, 2, 3, 4]) == [1, 2, 3, 4]
    assert stalin([1, 1, 2, 3]) == [1, 1, 2, 3]
    assert stalin([2, 1, 2, 1]) == [2, 2]
    assert stalin([4, 3, 2, 1]) == [4]
    assert stalin([4, 4, 4, 4]) == [4, 4, 4, 4]
    assert stalin([4, 3, 4, 1]) == [4, 4]
    assert stalin(["sdf", "fds", "wer"]) == ["sdf", "wer"]
    assert mao(["Your", "mom"]) == [1, 2]
    print("All tests passed.")
