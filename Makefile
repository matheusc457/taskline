CC = gcc
CFLAGS = -Wall -O2
SRC = taskline.c cJSON.c
OUT = taskline
PREFIX = /usr/local/bin

all: $(OUT)

$(OUT): $(SRC)
	$(CC) $(CFLAGS) $(SRC) -o $(OUT)

clean:
	rm -f $(OUT)

install: $(OUT)
	install -m 755 $(OUT) $(PREFIX)/$(OUT)

uninstall:
	rm -f $(PREFIX)/$(OUT)

