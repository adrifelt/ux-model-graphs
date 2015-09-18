pngs = \
01-simple-boolean.png\
02-simple-boolean-with-confusion.png

%.png: %.dot
	dot -Tpng $< > $@

show: $(pngs)
	eog $(pngs)

clean:
	rm *.png
