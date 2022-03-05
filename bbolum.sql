-- Table: public.bbolum

-- DROP TABLE IF EXISTS public.bbolum;

CREATE TABLE IF NOT EXISTS public.bbolum
(
    objectid integer NOT NULL DEFAULT nextval('bbolum_objectid_seq'::regclass),
    ic_kapi_no character varying(10) COLLATE pg_catalog."default",
    kullanim_id integer,
    faaliyet_id integer,
    bbolum_durumu_id integer,
    kullanim_alani double precision,
    kisi_sayisi integer,
    oda_sayisi integer,
    arsapay integer,
    arsapayda integer,
    isinma_sekli_id integer,
    yakit_cinsi_id integer,
    aciklama character varying(255) COLLATE pg_catalog."default",
    su_abone_no character varying(30) COLLATE pg_catalog."default",
    elektrik_abone_no character varying(30) COLLATE pg_catalog."default",
    dogalgaz_abone_no character varying(30) COLLATE pg_catalog."default",
    ctv_abone_no character varying(30) COLLATE pg_catalog."default",
    emlak_vergisi_no character varying(30) COLLATE pg_catalog."default",
    kapi_id bigint,
    geo_durum boolean DEFAULT true,
    bulundugu_kat character varying(30) COLLATE pg_catalog."default",
    isyeri_tabela_tur character varying(30) COLLATE pg_catalog."default",
    kacak boolean,
    kullanim_detay_id integer,
    m_date date,
    m_status character varying(10) COLLATE pg_catalog."default",
    uavt_kod integer,
    uavt_adres_kod character varying(50) COLLATE pg_catalog."default",
    m_log_user character varying(100) COLLATE pg_catalog."default",
    uavt_binakod integer,
    aktarilan_ickapi_no character varying(255) COLLATE pg_catalog."default",
    adi character varying(150) COLLATE pg_catalog."default",
    gizlilik boolean DEFAULT true,
    telefon_no character varying(50) COLLATE pg_catalog."default",
    kisi character varying(250) COLLATE pg_catalog."default",
    tapu_bbolumno character varying(50) COLLATE pg_catalog."default",
    afet_kullanim_amaci_id integer,
    afet_bolge_id integer,
    yatak_sayisi integer,
    afet_objesi boolean DEFAULT false,
    maks_kod bigint,
    maks_tip_id integer,
    maks_durum_id integer,
    maks_kalttur_id integer,
    tapubagimsizkimlikno character varying(255) COLLATE pg_catalog."default",
    uavt_kalttur_id integer,
    uygulama_adi character varying(30) COLLATE pg_catalog."default",
    maks_kullanim_id integer,
    dtarih date,
    degisim character varying(200) COLLATE pg_catalog."default",
    CONSTRAINT "PIX627977759" PRIMARY KEY (objectid),
    CONSTRAINT bbolum_objectid_uniq UNIQUE (objectid)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.bbolum
    OWNER to postgres;
-- Index: bbolum_idx

-- DROP INDEX IF EXISTS public.bbolum_idx;

CREATE INDEX IF NOT EXISTS bbolum_idx
    ON public.bbolum USING btree
    (m_status COLLATE pg_catalog."default" ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: bbolum_idx0

-- DROP INDEX IF EXISTS public.bbolum_idx0;

CREATE INDEX IF NOT EXISTS bbolum_idx0
    ON public.bbolum USING btree
    (m_date ASC NULLS LAST)
    TABLESPACE pg_default;
-- Index: bbolum_idx23

-- DROP INDEX IF EXISTS public.bbolum_idx23;
public.aile_kutugu
CREATE INDEX IF NOT EXISTS bbolum_idx23
    ON public.bbolum USING btree
    (kapi_id ASC NULLS LAST)
    TABLESPACE pg_default;