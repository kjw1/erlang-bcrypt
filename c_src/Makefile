include env.mk

ERL_CFLAGS = -fPIC -I ${ERTS_INCLUDE_DIR} -I ${ERL_INTERFACE_INCLUDE_DIR}
ERL_LDFLAGS = -L ${ERL_INTERFACE_LIB_DIR} -lerl_interface -lei

compile: ../priv/bcrypt

../priv/bcrypt:
	$(CC) $(CFLAGS) $(ERL_CFLAGS) $(EXE_LDFLAGS) bcrypt_port.c bcrypt.o blowfish.o $(LDFLAGS) $(ERL_LDFLAGS) -lpthread -o ../priv/bcrypt

clean:
	@rm -f ../priv/bcrypt

.PHONY: clean compile
