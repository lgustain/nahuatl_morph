all: nah.gen.hfst nah.mor.hfst

nah.lexc.hfst: nah.lexc
	hfst-lexc $< -o $@

nah.twol.hfst: nah.twol
	hfst-twolc $< -o $@

nah.gen.hfst: nah.twol.hfst nah.lexc.hfst
	hfst-compose-intersect -1 nah.lexc.hfst -2 nah.twol.hfst -o $@

nah.mor.hfst: nah.gen.hfst
	hfst-invert $< -o $@

clean:
	rm *.hfst
