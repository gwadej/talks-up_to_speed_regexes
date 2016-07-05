# Character classes

1. What does each of these match?
    - `/\d+/`
    - `/[0-7]+/`
    - `/\A[bcdfghjklmnpqrstvwxyz][aeiou][bcdfghjklmnpqrstvwxyz]\z/`
    - `/\A\S+\s+\S+\z/`
2. Write a regular expression to match the first set but not the second.
    - "BA8 F678", "MK4 X999", "SD5 J112", "PO2 K747"
    - "123 5678", "ABC DEFG", "SD4BJ112", "po2 k747"
3. Hexadecimal numbers (each hex digit has a value of 0-15, where the 10-15
   digits are represented by A-F).
