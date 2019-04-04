all:
		hfst-lexc nah.lexc -o nah.lexc.hfst
		hfst-twolc nah.twol -o nah.twol.hfst
		hfst-compose-intersect -1 nah.lexc.hfst -2 nah.twol.hfst -o nah.gen.hfst