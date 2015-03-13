# -------------------------------
# Theory: Creating a URL shorter
# -------------------------------

id = 18_498_284_109_233
url = "http://github.com/"
enc = "http://fbeegle.me/"

code = id.to_s(36)
puts enc << code
