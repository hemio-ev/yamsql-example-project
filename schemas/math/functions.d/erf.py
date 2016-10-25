---
# schema/math/function.d/erf.py
name: erf 
description: |
 Gauss error function

 This function is a wrapper for the
 Python 3 implementation.

parameters:
 - name: x
   type: float
returns: float

language: plpython3u
---
import math
return math.erf(x)

