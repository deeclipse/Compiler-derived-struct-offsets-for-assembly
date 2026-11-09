import re, sys
out = []
for line in open(sys.argv[1]):
    m = re.search(r'->(\w+)\s+[$#]?(-?\d+)', line)
    if m:
        out.append(f"#define {m[1]} {m[2]}")
open(sys.argv[2], "w").write("\n".join(out) + "\n")