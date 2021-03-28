-- Table: public.clouds_percent_overcast

-- DROP TABLE public.clouds_percent_overcast;

CREATE TABLE public.clouds_percent_overcast
(
    datetime timestamp without time zone NOT NULL,
    station text COLLATE pg_catalog."default" NOT NULL,
    datatype text COLLATE pg_catalog."default" NOT NULL,
    percent integer NOT NULL,
    placename text COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT clouds_percent_overcast_pkey PRIMARY KEY (datetime, station)
)

TABLESPACE pg_default;

ALTER TABLE public.clouds_percent_overcast
    OWNER to eric;

GRANT ALL ON TABLE public.clouds_percent_overcast TO eric;

GRANT SELECT ON TABLE public.clouds_percent_overcast TO grafana;

COMMENT ON COLUMN public.clouds_percent_overcast.percent
    IS 'In tenths of a percent. so the value 150 would be 15%';