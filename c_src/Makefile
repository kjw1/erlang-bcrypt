include env.mk

ERL_CFLAGS = -fPIC -I${ERTS_INCLUDE_DIR} -I${ERL_INTERFACE_INCLUDE_DIR} -I/usr/local/lib/erlang/usr/include
ERL_LDFLAGS = -L${ERL_INTERFACE_LIB_DIR} -L/usr/local/lib/erlang/usr/lib -lerl_interface -lei

compile: ../priv/bcrypt ../priv/bcrypt_nif.so

../priv/bcrypt:
	$(CC) $(CFLAGS) $(ERL_CFLAGS) $(EXE_LDFLAGS) bcrypt_port.c bcrypt.c blowfish.c $(LDFLAGS) $(ERL_LDFLAGS) -lpthread -o ../priv/bcrypt

../priv/bcrypt_nif.so:
	$(CC) $(CFLAGS) -Ic_src -Wall $(ERL_CFLAGS) $(EXE_LDFLAGS) async_queue.c bcrypt_nif.c bcrypt.c blowfish.c $(LDFLAGS) -shared $(ERL_LDFLAGS) -lpthread -o ../priv/bcrypt_nif.so

clean:
	@rm -f ../priv/bcrypt
	@rm -f ../priv/bcrypt_nif.so

.PHONY: clean compile
