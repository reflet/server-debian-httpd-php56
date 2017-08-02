\c docker docker

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);

COPY auth_group (id, name) FROM stdin;
1	Gyoumu
2	Master
3	System
\.

