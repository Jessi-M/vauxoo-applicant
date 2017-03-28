"""
modulo con operaciones aritmeticas
"""


class CalculatorClass(object):
    """
    clase para sumar los numeros
    """

    def sum(self, num_list):
        """
        metodo que suma los numeros de la lista
        """
        # your sum code here
	total = 0
	for number in num_list:
	    total+= number
        return total
