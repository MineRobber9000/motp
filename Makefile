motp.zip: $(wildcard motp/*)
	cd motp && zip -r ../motp.zip .

.PHONY: clean test
clean:
	rm -rf motp.zip

WORLD:=/home/khuxkm/.minecraft/saves/creative

test: motp.zip
	rm -f $(WORLD)/datapacks/motp.zip
	cp motp.zip $(WORLD)/datapacks
	@echo "Be sure to run /reload when you load your world!"
