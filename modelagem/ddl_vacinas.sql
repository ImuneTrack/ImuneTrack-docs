-- public.vacinas definição

-- Drop table

-- DROP TABLE public.vacinas;

CREATE TABLE public.vacinas (
	id serial4 NOT NULL,
	nome varchar(100) NOT NULL,
	doses int4 NOT NULL,
	CONSTRAINT vacinas_pkey PRIMARY KEY (id)
);
CREATE INDEX ix_vacinas_id ON public.vacinas USING btree (id);
CREATE UNIQUE INDEX ix_vacinas_nome ON public.vacinas USING btree (nome);