SWITCHES = 20
HOSTS = 16
PORTS = 4

assert SWITCHES * PORTS > HOSTS

import random

Switches = [0 for x in range(SWITCHES)]
Leftovers = list(range(SWITCHES))

for x in range(HOSTS):
	print(f"servers[{x}].ethg++ <--> cable <--> switches[{x%SWITCHES}].ethg++;")
	Switches[x%SWITCHES] += 1

Connections = []

while len(Leftovers) > 1:
	s1 = random.choice(Leftovers)
	s2 = random.choice(Leftovers)
	if s1 == s2:
		continue
	if (s1, s2) in Connections or (s2, s1) in Connections:
		continue
	Connections.append((s1,s2))
	Switches[s1] += 1
	Switches[s2] += 1
	if Switches[s1] >= PORTS:
		Leftovers.remove(s1)
	if Switches[s2] >= PORTS:
		Leftovers.remove(s2)

while len(Leftovers) > 0:
	last = Leftovers[0]
	oldcon = random.choice(Connections)
	Connections.remove(oldcon)
	Connections.append((last,oldcon[0]))
	Connections.append((last,oldcon[1]))
	Switches[last] += 2
	if Switches[last] >= PORTS:
		Leftovers.remove(last)

for con in Connections:
	Switches[con[0]] -= 1
	Switches[con[1]] -= 1
	print(f"switches[{con[0]}].ethg++ <--> cable <--> switches[{con[1]}].ethg++;")
