x-adic-numbers
==============

this shows a number (num) in x-adic (base-adic) expression in a string type.
the base must be larger than 1.

usage: (**x-adic** *num* *base*)

example:
```Lisp
(x-adic 12 10) ;;"12."
(x-adic 12 2) ;;"1100."
(x-adic 12 4.5) ;;"23."
(x-adic 12.5 2) ;;"1100.1"

```
