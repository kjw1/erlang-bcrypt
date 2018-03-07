{application, 'bcrypt', [
	{description, "bcrypt wrapper for erlang"},
	{vsn, "0.5.4"},
	{modules, ['bcrypt','bcrypt_app','bcrypt_nif','bcrypt_nif_worker','bcrypt_pool','bcrypt_port','bcrypt_port_sup','bcrypt_sup']},
	{registered, [bcrypt_sup]},
	{applications, [kernel,stdlib,crypto]},
	{mod, {bcrypt_app, []}},
	{env, []}
]}.