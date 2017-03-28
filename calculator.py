"""
Modulo que realiza operaciones aritmeticas
"""


class CalculatorClass(object):
    """
    Clase con operaciones aritmeticas
    """

    def sum(self, num_list):
        """
        Metodo que suma
        """
        total = 0
        for number in num_list:
            total += number
        return total
