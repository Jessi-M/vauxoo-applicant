"""
Modulo que calcula si un numero es primo
"""


class PrimeClass(object):
    """
    Clase que calcula si un entero es primo
    """

    def is_prime(self, num_int):
        """
        Metodo que dado un entero dice si es primo o no
        """
        if num_int <= 1:
            return False
        else:
            for divisor in range(2, num_int):
                if num_int % divisor == 0:
                    return False
            return True
