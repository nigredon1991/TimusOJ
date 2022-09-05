def zero(operator=None):
    return _digit(0, operator)


def one(operator=None):
    return _digit(1, operator)


def two(operator=None):
    return _digit(2, operator)


def three(operator=None):
    return _digit(3, operator)


def four(operator=None):
    return _digit(4, operator)


def five(operator=None):
    return _digit(5, operator)


def six(operator=None):
    return _digit(6, operator)


def seven(operator=None):
    return _digit(7, operator)


def eight(operator=None):
    return _digit(8, operator)


def nine(operator=None):
    return _digit(9, operator)


def _digit(number, operator=None):
    print(f"{number=}")
    print(f"{operator=}")
    if operator is None:
        return number
    return operator(number)


def plus(second_operand):
    return lambda first_operand: first_operand + second_operand


def minus(second_operand):
    return lambda first_operand: first_operand - second_operand


def lala(num, num1=None):
    print(num * num1)


def times(second_operand):
    # print(f"{second_operand=}")
    # return lambda x: lala(x, second_operand)
    # return lambda first_operand: print(first_operand, second_operand)
    return lambda first_operand: first_operand * second_operand


def divided_by(second_operand):
    return lambda first_operand: first_operand / second_operand


print(seven(times(five())))
