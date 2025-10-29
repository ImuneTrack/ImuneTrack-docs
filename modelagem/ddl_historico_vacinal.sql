-- public.historico_vacinal definição

-- Drop table

-- DROP TABLE public.historico_vacinal;

CREATE TABLE public.historico_vacinal (
	id serial4 NOT NULL,
	usuario_id int4 NOT NULL,
	vacina_id int4 NOT NULL,
	numero_dose int4 NOT NULL,
	status public."statusdose" NOT NULL,
	data_aplicacao date NULL,
	data_prevista date NULL,
	lote varchar(50) NULL,
	local_aplicacao varchar(100) NULL,
	profissional varchar(100) NULL,
	observacoes text NULL,
	created_at date NOT NULL,
	updated_at date NOT NULL,
	CONSTRAINT historico_vacinal_pkey PRIMARY KEY (id)
);
CREATE INDEX ix_historico_vacinal_id ON public.historico_vacinal USING btree (id);


-- public.historico_vacinal chaves estrangeiras

ALTER TABLE public.historico_vacinal ADD CONSTRAINT historico_vacinal_usuario_id_fkey FOREIGN KEY (usuario_id) REFERENCES public.usuarios(id);
ALTER TABLE public.historico_vacinal ADD CONSTRAINT historico_vacinal_vacina_id_fkey FOREIGN KEY (vacina_id) REFERENCES public.vacinas(id);