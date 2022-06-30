
-include config.mak
SOURCEFILES = $(wildcard src/*.c src/*/*.c)
OBJECTFILES = $(SOURCEFILES:.c=)

all: $(OBJECTFILES)

clean:

	$(RM) $(OBJECTFILES)
	$(RM) config.mak
