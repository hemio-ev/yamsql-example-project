---
# schema/math/function.d/factorial.plsql
name: factorial
description: |
 Factorial function using the
 ``WITH RECURSIVE`` SQL feature.

 Logical definition::

     f(0) = 1
     f(n) = n * f (n - 1)

parameters:
 - name: p_n
   type: int
returns: int
---
RETURN (
  WITH RECURSIVE t AS (
      SELECT 1 AS f, 0 AS n
    UNION ALL
      SELECT f * (n + 1), n + 1 FROM t
  )
  SELECT f FROM t WHERE n=p_n LIMIT 1
);
