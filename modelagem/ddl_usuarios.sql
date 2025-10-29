-- public.usuarios definição

-- Drop table

-- DROP TABLE public.usuarios;

CREATE TABLE public.usuarios (
	id serial4 NOT NULL,
	nome varchar(100) NOT NULL,
	email varchar(255) NOT NULL,
	senha varchar(255) NOT NULL,
	created_at timestamp NULL,
	updated_at timestamp NULL,
	CONSTRAINT usuarios_pkey PRIMARY KEY (id)
);
CREATE UNIQUE INDEX ix_usuarios_email ON public.usuarios USING btree (email);
CREATE INDEX ix_usuarios_id ON public.usuarios USING btree (id);