

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: agegroupsin5years_country; Type: TABLE; Schema: public; Owner: census; Tablespace:
--

CREATE TABLE agegroupsin5years_country (
    total integer NOT NULL,
    "age groups in 5 years" character varying(128) NOT NULL,
    country_code character varying(8) NOT NULL
);


ALTER TABLE public.agegroupsin5years_country OWNER TO census;


INSERT INTO ward (ward_no, municipality_code, district_code, province_code, year)
VALUES SELECT * FROM tbl_ward

alter table tbl_ward add FOREIGN key district_code REFERENCES district(code)