# 1. One degree fahrenheit is 5/9 of one degree celsius
# 2. The freezing point of water is 0 degrees celsius but 32 degrees fahrenheit

def ftoc(f)
  c = (f - 32.0) * 5.0 / 9.0
end

def ctof(c)
  f = c * (9.0 / 5.0) + 32.0
end
