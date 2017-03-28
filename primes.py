"""
modulo para calcular numeros primos
"""


class PrimeClass(object):
    """
    clase que dado un entero calcula si es o no primo
    """

    def is_prime(self, num_int):
        """
        metodo que toma el entero y dice si es primo
        """
	if num_int <= 1:
		return False
	else:
	    for divisor in xrange (2,num_int):
		if num_iny % divisor == 0:
		   return False
            return True
