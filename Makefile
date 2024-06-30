all:
	find . -type f -name "*.pdf"     -exec sh -c 'output_name=$$(echo "{}" | sed "s/ /_/g; s/\.pdf//g"); pdftoppm -png -rx 600 -ry 600 "{}" "$$output_name"; convert "$$output_name-1.png" -crop 3018x3018+395+312 $$output_name.png; rm "$$output_name-1.png"' \;

test:
	find . -type f -name "*\ 28.pdf" -exec sh -c 'output_name=$$(echo "{}" | sed "s/ /_/g; s/\.pdf//g"); pdftoppm -png -rx 600 -ry 600 "{}" "$$output_name"; convert "$$output_name-1.png" -crop 3018x3018+395+312 $$output_name.png; rm "$$output_name-1.png"' \;

dim:
	$(eval input_image=tennis_gazelle_card_1-1.png)
	$(eval original_dimensions=$(identify -format "%wx%h" tennis_gazelle_card_1-1.png))
	echo ${original_dimensions}


# 3808x3642+0+0, originally

# ex:
# given originally, 720x480+0+0
# top 5px
# bottom 7px
# right 14px
# left 3px
# then you could do it with (widthxheight+left+top / wxh+l+t format):
# convert image.jpg -crop 703x470+3+5 output.jpg

# 3018x3018+395+312, resultant
# 312 border of white all around, and we want to remove a little more
# from the horizontal than the vertical to reach square, so remove twice 312
# from the vertical cut (3624-(2*312) = 3018), and remove twice 312 from the
# horizontal as well as twice 83 to achieve a square (3808-(2*312)-(2*83)=3018)

zip:
	zip -j productionCards.zip *.png

clean:
	rm -f *.png