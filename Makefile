
-include config.mak

CFLAGS += -I./include/ -Wextra -Wall
SOURCEFILES = $(wildcard src/*.c src/*/*.c)
OBJECTFILES = $(SOURCEFILES:.c=.o)
EXECUTABLENAME = $(OBJECTFILES:.o=)
LIBRARYNAME = $(libraryname)
STATICLIBRARY = lib$(LIBRARYNAME).a
LDLIBS += -L. -l$(LIBRARYNAME)

all:
	$(MAKE) objects
	$(MAKE) executable 

objects: $(OBJECTFILES)
	$(AR) -cvq $(STATICLIBRARY) $(OBJECTFILES)

executable: $(EXECUTABLENAME)

clean:

	$(RM) $(LIBRARYNAME)
	$(RM) $(OBJECTFILES)
	$(RM) config.mak
