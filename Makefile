CFLAGS = -O2 -Wall
LDFLAGS = -Wall
LEXER = flex

TARGET = credit_card

LSRCS = credit_card.l
CSRCS = credit_card.c

$(TARGET): $(CSRCS)
	$(CC) -o $@ $(CSRCS)

$(CSRCS): $(LSRCS)
	$(LEXER) -o $@ $<

.PHONY: clean
clean:
	rm -f $(CSRCS) $(TARGET)
