module CTF where
convert "to" f = (f - 32) * 5 / 9
convert "from" c = ((c * 9) / 5) + 32