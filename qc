#!/bin/python3
import sys
argv = sys.argv[1:]
def main():
	if len(argv) == 0:
		prev = ""
		value = input(">")
		cur = 0
		while True:
			try:
				if value == "clear":
					print("\x1b[2J\x1b[1;1H", end="")
				elif value == "exit" \
				     or value == "quit" \
				     or value == "q":
					return
				elif "=" in value:
					exec(value)
					pass
				else:
					if value[0].isdigit():
						cur = eval(value)
						print(cur)
						pass
					else:
						cur = eval(str(cur) + value)
						print(cur)
						pass
					pass
			except: pass
			value = input(">")
			if len(value) == 0:
				value = prev
			prev = value
			pass
		pass
	else:
		print(eval(" ".join(argv)))
		pass

main()
