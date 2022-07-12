SOURCES := $(shell find -name '*.md')
OBJECTS := $(SOURCES:.md=.html)

all: $(OBJECTS)

%.html: %.md
	pandoc --defaults _pandoc/defaults.yaml --output $@ $<

clean:
	$(RM) $(OBJECTS)

.PHONY: all clean
