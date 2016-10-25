math
======================================================================

Some basic math in SQL

.. contents:: Module Contents
   :local:
   :depth: 2





Functions
---------



.. _FUNCTION-math.erf:

``math.erf``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Gauss error function

This function is a wrapper for the
Python 3 implementation.

Parameters
 - ``x`` :ref:`float <DOMAIN-float>`
   
    

Language
 plpython3u


Returns
 float



.. code-block:: guess

   import math
   return math.erf(x)



.. _FUNCTION-math.factorial:

``math.factorial``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Factorial function using the
``WITH RECURSIVE`` SQL feature.

Logical definition::

    f(0) = 1
    f(n) = n * f (n - 1)

Parameters
 - ``p_n`` :ref:`int <DOMAIN-int>`
   
    



Returns
 int



.. code-block:: plpgsql

   RETURN (
     WITH RECURSIVE t AS (
         SELECT 1 AS f, 0 AS n
       UNION ALL
         SELECT f * (n + 1), n + 1 FROM t
     )
     SELECT f FROM t WHERE n=p_n LIMIT 1
   );









