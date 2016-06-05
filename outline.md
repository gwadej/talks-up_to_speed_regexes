# Outline for Up to Speed with Regex

1. What are they?
    - Language for matching strings
    - Recognizing
    - Parsing
    - Data extraction
    - Data transformation
    - Validation
2. Getting Started
    - a
    - \0, \n, \r, \t, \f,
    - .
    - abc
    - a|b
    - a+, `a*`, a?
    - ^, $
3. A little more advanced
    - \d, \D, \w, \W, \s, \S (Limited to ASCII)
    - [char], [^char]
    - \A, \z, \Z, \b, \B
    - (abc), (?:abc)
    - \1, \2, \3, etc
4. Fundamental tips
    - Character classes
        - use of backslash in character class
        - use of character classes inside
    - grouping
        - capture group
        - noncapture group
    - # Match what you know
    - Matching what you don't know
    - # Don't over match
5. Simple tricks and traps
    - * vs + vs ?
    - greedy vs non-greedy
    - # longest left-most
    - # anchors are your friend
    - # avoid alternation (unless that is what you need)
    - # be careful nesting qualifiers
    - # `a*` and `a?` can be successful matching nothing
    - # anchors match between characters
6. More advanced features
    - Greedy vs non greedy +/`*`/?/{n,m} vs +?/`*?`/??/{n,m}?
    - lookahead: (?=abc), (?!abc)
    - lookbehind: `(?<=abc)`, `(?<!abc)`
7. Reasoning about regexes
    - backtracking
    - efficiency
    - readability
    - decide how much you really want to match
8. Examples
    - # /(\d\d\d) \1/ vs /(\d\d\d) \d\d\d/
    - /^.+$/, /.+$/, /^.+/, `/^.*$/`
    - /^dog|cat$/
    - /^(25[0-5]|2[0-4]\d|1\d\d|[1-9]?\d)$/ vs /^\d{1,3}$/
    - #/dead\bbeef/
    - /[\s\n\t\f\v]/
    - `/<p>.*<\/p>/` vs `/<p>.*?<\/p>/` vs `/<p>[^<]*<\/p>/`
9. Ruby vs JavaScript vs Perl
    - JavaScript has no lookbehinds
    - \d, \w, \s match ASCII characters not unicode
10. Tools
    - http://rubular.com
    - rxrx from Perl's Regexp::Debugger
    - http://www.regexpal.com/
    - Search on-line, there are a bunch
11. Mastering Regular Expressions
    - Pointer to the book
