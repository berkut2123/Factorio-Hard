Automatic Train Station Names
=============================

This mod allows to automatically set train station names after a certain
pattern. If a train station name contains parentheses `()`, they will be
automatically filled with the position of the train stop. If the name
contains brackets `[]`, they will be filled with a number which is one
larger than the largest number of all other train stations with the same
name pattern. The station name pattern will be taken either from a blueprint
or from the mod settings, where a default name pattern can be set.

Example patterns:

* `Station []`: The stations will be called `Station [1]`, `Station [2]`, ...
* `Mine at ()`: A station will be called e.g. `Mine at (-31,103)`
* `Station [] at ()`: A station will be called e.g. `Station [2] at (21,17)`
  when there already is a station called `Station [1] at (11,-7)`

Example
-------

The following blueprint contains several train stations with different names:

    0eNqtldFqgzAUhl9FztUGEZrUauo79GqXpQxbszagUUy6VcR3XzRQNurYD9uViXq+L5yTkwx0rK6q7bRxlA+kT42xlO8Hsvpsimp65/pWUU7aqZoYmaKeZl2hKxoZaVOqG+V8PDBSxmmnVYifJ/2rudZH1fkf7pHOh5rYuqb1tLaxPqQxk8djYsmo9w/hyaXu1Cl8SxlZV4Qx7bRR0f4QFS56evZLeFAJTJX8g2oNqVa/m17CyMuWNAmkSf6q2UAaiWs+tLtEb/qmymgGLzjTu9NO0vPFxfPWeqwXD2lcffeKBWYGMyWKlDAyRZFbGJmgyClFIFPATI4y4fpwgSLxVa5RJJ7MBEXCJecbFAlvTA430E/94w/u+WjPv9wEjN5VZ0Njy0wIyberTIzjJ7kCCeI=
