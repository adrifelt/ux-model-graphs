pngs = \
01-simple-boolean.png\
02-simple-boolean-with-confusion.png\
03-simple-boolean-with-orthogonal-states.png\
04-simple-boolean-with-reset.png\
05-simple-boolean-with-reset-clean.png\
06-full-screen.png

%.png: %.dot
	dot -Tpng $< > $@

pngs: $(pngs)

show: $(pngs)
	eog $(pngs)

clean:
	rm *.png
