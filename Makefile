
SOURCEFILES = $(wildcard src/*.c src/*/*.c)

-include config.mak

OBJECTFILES = $(SOURCEFILES:.c=)

all: $(OBJECTFILES)

clean:

	$(RM) $(OBJECTFILES) 
