main = print $ sum $ map f nums
       where f (w, i) = (length w) * i

nums = [("one", u),
        ("two", u),
        ("three", u),
        ("four", u),
        ("five", u),
        ("six", u),
        ("seven", u),
        ("eight", u),
        ("nine", u),
        ("ten", s),
        ("eleven", s),
        ("twelve", s),
        ("thirteen", s),
        ("fourteen", s),
        ("fifteen", s),
        ("sixteen", s),
        ("seventeen", s),
        ("eighteen", s),
        ("nineteen", s),
        ("twenty", t),
        ("thirty", t),
        ("forty", t),
        ("fifty", t),
        ("sixty", t),
        ("seventy", t),
        ("eighty", t),
        ("ninety", t),
        ("hundred", 900),
        ("and", 99*9),
        ("onethousand", 1)]
        where u = 9*10 + 100
              t = 10*10
              s = 10
