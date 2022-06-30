
-include config.mak

CFLAGS += -I./include/ -Wextra -Wall
SOURCEFILES = $(wildcard src/*.c src/*/*.c)
OBJECTFILES = $(SOURCEFILES:.c=)
LIBRARYNAME = $(libraryname)

all: $(OBJECTFILES)

clean:

	$(RM) $(OBJECTFILES)
	$(RM) config.mak
