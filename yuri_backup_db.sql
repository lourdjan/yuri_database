PGDMP  "                    |            yuri    17.2    17.2 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            �           1262    17360    yuri    DATABASE        CREATE DATABASE yuri WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE yuri;
                     postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                     pg_database_owner    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                        pg_database_owner    false    4            �            1259    17477    aircraft_group    TABLE        CREATE TABLE public.aircraft_group (
    aircraft_group_id integer NOT NULL,
    aircraft_group_name character varying(255)
);
 "   DROP TABLE public.aircraft_group;
       public         heap r       postgres    false    4            �            1259    17476 $   aircraft_group_aircraft_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.aircraft_group_aircraft_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.aircraft_group_aircraft_group_id_seq;
       public               postgres    false    246    4            �           0    0 $   aircraft_group_aircraft_group_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.aircraft_group_aircraft_group_id_seq OWNED BY public.aircraft_group.aircraft_group_id;
          public               postgres    false    245            �            1259    17523    aircraft_group_junction    TABLE     �   CREATE TABLE public.aircraft_group_junction (
    aircraft_group_id integer NOT NULL,
    aircraft_id character varying(10) NOT NULL
);
 +   DROP TABLE public.aircraft_group_junction;
       public         heap r       postgres    false    4            �            1259    17427    aircraft_id_seq    SEQUENCE     x   CREATE SEQUENCE public.aircraft_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.aircraft_id_seq;
       public               postgres    false    4            �            1259    17428    aircraft_units    TABLE        CREATE TABLE public.aircraft_units (
    aircraft_id character varying(10) DEFAULT ('AID'::text || lpad((nextval('public.aircraft_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    aircraft_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    is_unit_amphibious boolean NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    can_ground_attack boolean NOT NULL,
    can_air_attack boolean NOT NULL,
    tech_type character varying(50) NOT NULL
);
 "   DROP TABLE public.aircraft_units;
       public         heap r       postgres    false    231    4            �            1259    17442    building_group    TABLE        CREATE TABLE public.building_group (
    building_group_id integer NOT NULL,
    building_group_name character varying(255)
);
 "   DROP TABLE public.building_group;
       public         heap r       postgres    false    4            �            1259    17441 $   building_group_building_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.building_group_building_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.building_group_building_group_id_seq;
       public               postgres    false    236    4            �           0    0 $   building_group_building_group_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.building_group_building_group_id_seq OWNED BY public.building_group.building_group_id;
          public               postgres    false    235            �            1259    17498    building_group_junction    TABLE     �   CREATE TABLE public.building_group_junction (
    building_group_id integer NOT NULL,
    building_id character varying(10) NOT NULL
);
 +   DROP TABLE public.building_group_junction;
       public         heap r       postgres    false    4            �            1259    17388    building_id_seq    SEQUENCE     x   CREATE SEQUENCE public.building_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.building_id_seq;
       public               postgres    false    4            �            1259    17379    country_id_seq    SEQUENCE     w   CREATE SEQUENCE public.country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public               postgres    false    4            �            1259    17380 	   countries    TABLE     *  CREATE TABLE public.countries (
    country_id character varying(10) DEFAULT ('COID'::text || lpad((nextval('public.country_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    faction_id character varying(10) NOT NULL,
    country_name character varying(255) NOT NULL,
    special_tech text
);
    DROP TABLE public.countries;
       public         heap r       postgres    false    219    4            �            1259    17490    country_tech    TABLE     8  CREATE TABLE public.country_tech (
    country_id character varying(10) NOT NULL,
    building_group_id integer,
    support_structure_group_id integer,
    support_powers_group_id integer,
    infantry_group_id integer,
    vehicle_group_id integer,
    aircraft_group_id integer,
    naval_group_id integer
);
     DROP TABLE public.country_tech;
       public         heap r       postgres    false    4            �            1259    17370    faction_id_seq    SEQUENCE     w   CREATE SEQUENCE public.faction_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.faction_id_seq;
       public               postgres    false    4            �            1259    17371    factions    TABLE     K  CREATE TABLE public.factions (
    faction_id character varying(10) DEFAULT ('FA'::text || lpad((nextval('public.faction_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    faction_name character varying(255) NOT NULL,
    faction_color character varying(50),
    n_country_affiliates integer,
    military_description text
);
    DROP TABLE public.factions;
       public         heap r       postgres    false    217    4            �            1259    17463    infantry_group    TABLE        CREATE TABLE public.infantry_group (
    infantry_group_id integer NOT NULL,
    infantry_group_name character varying(255)
);
 "   DROP TABLE public.infantry_group;
       public         heap r       postgres    false    4            �            1259    17462 $   infantry_group_infantry_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.infantry_group_infantry_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.infantry_group_infantry_group_id_seq;
       public               postgres    false    4    242            �           0    0 $   infantry_group_infantry_group_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.infantry_group_infantry_group_id_seq OWNED BY public.infantry_group.infantry_group_id;
          public               postgres    false    241            �            1259    17513    infantry_group_junction    TABLE     �   CREATE TABLE public.infantry_group_junction (
    infantry_group_id integer NOT NULL,
    infantry_id character varying(10) NOT NULL
);
 +   DROP TABLE public.infantry_group_junction;
       public         heap r       postgres    false    4            �            1259    17413    infantry_id_seq    SEQUENCE     x   CREATE SEQUENCE public.infantry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.infantry_id_seq;
       public               postgres    false    4            �            1259    17414    infantry_units    TABLE     !  CREATE TABLE public.infantry_units (
    infantry_id character varying(10) DEFAULT ('IFID'::text || lpad((nextval('public.infantry_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    infantry_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    is_unit_amphibious boolean NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    can_ground_attack boolean NOT NULL,
    can_air_attack boolean NOT NULL,
    tech_type character varying(50) NOT NULL
);
 "   DROP TABLE public.infantry_units;
       public         heap r       postgres    false    227    4            �            1259    17389    main_buildings    TABLE     )  CREATE TABLE public.main_buildings (
    building_id character varying(10) DEFAULT ('BUID'::text || lpad((nextval('public.building_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    building_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    armor_type text NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    power_consumption integer,
    can_be_captured boolean NOT NULL,
    tech_type character varying(50) NOT NULL,
    role_description text
);
 "   DROP TABLE public.main_buildings;
       public         heap r       postgres    false    221    4            �            1259    17484    naval_group    TABLE     v   CREATE TABLE public.naval_group (
    naval_group_id integer NOT NULL,
    naval_group_name character varying(255)
);
    DROP TABLE public.naval_group;
       public         heap r       postgres    false    4                        1259    17528    naval_group_junction    TABLE     �   CREATE TABLE public.naval_group_junction (
    naval_group_id integer NOT NULL,
    naval_unit_id character varying(10) NOT NULL
);
 (   DROP TABLE public.naval_group_junction;
       public         heap r       postgres    false    4            �            1259    17483    naval_group_naval_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.naval_group_naval_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.naval_group_naval_group_id_seq;
       public               postgres    false    248    4            �           0    0    naval_group_naval_group_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.naval_group_naval_group_id_seq OWNED BY public.naval_group.naval_group_id;
          public               postgres    false    247            �            1259    17434    naval_unit_id_seq    SEQUENCE     z   CREATE SEQUENCE public.naval_unit_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.naval_unit_id_seq;
       public               postgres    false    4            �            1259    17435    naval_units    TABLE     $  CREATE TABLE public.naval_units (
    naval_unit_id character varying(10) DEFAULT ('NUID'::text || lpad((nextval('public.naval_unit_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    naval_unit_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    is_unit_amphibious boolean NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    can_ground_attack boolean NOT NULL,
    can_air_attack boolean NOT NULL,
    tech_type character varying(50) NOT NULL
);
    DROP TABLE public.naval_units;
       public         heap r       postgres    false    233    4            �            1259    17406    support_power_id_seq    SEQUENCE     }   CREATE SEQUENCE public.support_power_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.support_power_id_seq;
       public               postgres    false    4            �            1259    17407    support_powers    TABLE     )  CREATE TABLE public.support_powers (
    support_power_id character varying(10) DEFAULT ('SPID'::text || lpad((nextval('public.support_power_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    support_power_name character varying(255) NOT NULL,
    tech_type character varying(50) NOT NULL
);
 "   DROP TABLE public.support_powers;
       public         heap r       postgres    false    225    4            �            1259    17456    support_powers_group    TABLE     �   CREATE TABLE public.support_powers_group (
    support_powers_group_id integer NOT NULL,
    support_powers_group_name character varying(255)
);
 (   DROP TABLE public.support_powers_group;
       public         heap r       postgres    false    4            �            1259    17508    support_powers_group_junction    TABLE     �   CREATE TABLE public.support_powers_group_junction (
    support_powers_group_id integer NOT NULL,
    support_power_id character varying(10) NOT NULL
);
 1   DROP TABLE public.support_powers_group_junction;
       public         heap r       postgres    false    4            �            1259    17455 0   support_powers_group_support_powers_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.support_powers_group_support_powers_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public.support_powers_group_support_powers_group_id_seq;
       public               postgres    false    240    4            �           0    0 0   support_powers_group_support_powers_group_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.support_powers_group_support_powers_group_id_seq OWNED BY public.support_powers_group.support_powers_group_id;
          public               postgres    false    239            �            1259    17449    support_structure_group    TABLE     �   CREATE TABLE public.support_structure_group (
    support_structure_group_id integer NOT NULL,
    support_structure_group_name character varying(255)
);
 +   DROP TABLE public.support_structure_group;
       public         heap r       postgres    false    4            �            1259    17503     support_structure_group_junction    TABLE     �   CREATE TABLE public.support_structure_group_junction (
    support_structure_group_id integer NOT NULL,
    support_structure_id character varying(10) NOT NULL
);
 4   DROP TABLE public.support_structure_group_junction;
       public         heap r       postgres    false    4            �            1259    17448 6   support_structure_group_support_structure_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.support_structure_group_support_structure_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 M   DROP SEQUENCE public.support_structure_group_support_structure_group_id_seq;
       public               postgres    false    4    238            �           0    0 6   support_structure_group_support_structure_group_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.support_structure_group_support_structure_group_id_seq OWNED BY public.support_structure_group.support_structure_group_id;
          public               postgres    false    237            �            1259    17397    support_structure_id_seq    SEQUENCE     �   CREATE SEQUENCE public.support_structure_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.support_structure_id_seq;
       public               postgres    false    4            �            1259    17398    support_structures    TABLE     n  CREATE TABLE public.support_structures (
    support_structure_id character varying(10) DEFAULT ('SID'::text || lpad((nextval('public.support_structure_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    support_structure_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    armor_type text NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    can_ground_attack boolean NOT NULL,
    can_air_attack boolean NOT NULL,
    power_consumption integer,
    tech_type character varying(50) NOT NULL,
    role_description text
);
 &   DROP TABLE public.support_structures;
       public         heap r       postgres    false    223    4            �            1259    17470    vehicle_group    TABLE     |   CREATE TABLE public.vehicle_group (
    vehicle_group_id integer NOT NULL,
    vehicle_group_name character varying(255)
);
 !   DROP TABLE public.vehicle_group;
       public         heap r       postgres    false    4            �            1259    17518    vehicle_group_junction    TABLE     �   CREATE TABLE public.vehicle_group_junction (
    vehicle_group_id integer NOT NULL,
    vehicle_id character varying(10) NOT NULL
);
 *   DROP TABLE public.vehicle_group_junction;
       public         heap r       postgres    false    4            �            1259    17469 "   vehicle_group_vehicle_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.vehicle_group_vehicle_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.vehicle_group_vehicle_group_id_seq;
       public               postgres    false    244    4            �           0    0 "   vehicle_group_vehicle_group_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.vehicle_group_vehicle_group_id_seq OWNED BY public.vehicle_group.vehicle_group_id;
          public               postgres    false    243            �            1259    17420    vehicle_id_seq    SEQUENCE     w   CREATE SEQUENCE public.vehicle_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.vehicle_id_seq;
       public               postgres    false    4            �            1259    17421    vehicle_units    TABLE       CREATE TABLE public.vehicle_units (
    vehicle_id character varying(10) DEFAULT ('VEID'::text || lpad((nextval('public.vehicle_id_seq'::regclass))::text, 3, '0'::text)) NOT NULL,
    vehicle_name character varying(255) NOT NULL,
    tech_level integer NOT NULL,
    hit_points integer NOT NULL,
    is_unit_amphibious boolean NOT NULL,
    cost_in_dollars numeric(10,2),
    build_time_in_seconds integer NOT NULL,
    can_ground_attack boolean NOT NULL,
    can_air_attack boolean NOT NULL,
    tech_type character varying(50) NOT NULL
);
 !   DROP TABLE public.vehicle_units;
       public         heap r       postgres    false    229    4            �           2604    17480     aircraft_group aircraft_group_id    DEFAULT     �   ALTER TABLE ONLY public.aircraft_group ALTER COLUMN aircraft_group_id SET DEFAULT nextval('public.aircraft_group_aircraft_group_id_seq'::regclass);
 O   ALTER TABLE public.aircraft_group ALTER COLUMN aircraft_group_id DROP DEFAULT;
       public               postgres    false    245    246    246            �           2604    17445     building_group building_group_id    DEFAULT     �   ALTER TABLE ONLY public.building_group ALTER COLUMN building_group_id SET DEFAULT nextval('public.building_group_building_group_id_seq'::regclass);
 O   ALTER TABLE public.building_group ALTER COLUMN building_group_id DROP DEFAULT;
       public               postgres    false    235    236    236            �           2604    17466     infantry_group infantry_group_id    DEFAULT     �   ALTER TABLE ONLY public.infantry_group ALTER COLUMN infantry_group_id SET DEFAULT nextval('public.infantry_group_infantry_group_id_seq'::regclass);
 O   ALTER TABLE public.infantry_group ALTER COLUMN infantry_group_id DROP DEFAULT;
       public               postgres    false    241    242    242            �           2604    17487    naval_group naval_group_id    DEFAULT     �   ALTER TABLE ONLY public.naval_group ALTER COLUMN naval_group_id SET DEFAULT nextval('public.naval_group_naval_group_id_seq'::regclass);
 I   ALTER TABLE public.naval_group ALTER COLUMN naval_group_id DROP DEFAULT;
       public               postgres    false    248    247    248            �           2604    17459 ,   support_powers_group support_powers_group_id    DEFAULT     �   ALTER TABLE ONLY public.support_powers_group ALTER COLUMN support_powers_group_id SET DEFAULT nextval('public.support_powers_group_support_powers_group_id_seq'::regclass);
 [   ALTER TABLE public.support_powers_group ALTER COLUMN support_powers_group_id DROP DEFAULT;
       public               postgres    false    240    239    240            �           2604    17452 2   support_structure_group support_structure_group_id    DEFAULT     �   ALTER TABLE ONLY public.support_structure_group ALTER COLUMN support_structure_group_id SET DEFAULT nextval('public.support_structure_group_support_structure_group_id_seq'::regclass);
 a   ALTER TABLE public.support_structure_group ALTER COLUMN support_structure_group_id DROP DEFAULT;
       public               postgres    false    238    237    238            �           2604    17473    vehicle_group vehicle_group_id    DEFAULT     �   ALTER TABLE ONLY public.vehicle_group ALTER COLUMN vehicle_group_id SET DEFAULT nextval('public.vehicle_group_vehicle_group_id_seq'::regclass);
 M   ALTER TABLE public.vehicle_group ALTER COLUMN vehicle_group_id DROP DEFAULT;
       public               postgres    false    244    243    244            �          0    17477    aircraft_group 
   TABLE DATA           P   COPY public.aircraft_group (aircraft_group_id, aircraft_group_name) FROM stdin;
    public               postgres    false    246   ��       �          0    17523    aircraft_group_junction 
   TABLE DATA           Q   COPY public.aircraft_group_junction (aircraft_group_id, aircraft_id) FROM stdin;
    public               postgres    false    255   2�       �          0    17428    aircraft_units 
   TABLE DATA           �   COPY public.aircraft_units (aircraft_id, aircraft_name, tech_level, hit_points, is_unit_amphibious, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, tech_type) FROM stdin;
    public               postgres    false    232   ~�       �          0    17442    building_group 
   TABLE DATA           P   COPY public.building_group (building_group_id, building_group_name) FROM stdin;
    public               postgres    false    236   ��       �          0    17498    building_group_junction 
   TABLE DATA           Q   COPY public.building_group_junction (building_group_id, building_id) FROM stdin;
    public               postgres    false    250   ��       v          0    17380 	   countries 
   TABLE DATA           W   COPY public.countries (country_id, faction_id, country_name, special_tech) FROM stdin;
    public               postgres    false    220   ?�       �          0    17490    country_tech 
   TABLE DATA           �   COPY public.country_tech (country_id, building_group_id, support_structure_group_id, support_powers_group_id, infantry_group_id, vehicle_group_id, aircraft_group_id, naval_group_id) FROM stdin;
    public               postgres    false    249   L�       t          0    17371    factions 
   TABLE DATA           w   COPY public.factions (faction_id, faction_name, faction_color, n_country_affiliates, military_description) FROM stdin;
    public               postgres    false    218   ��       �          0    17463    infantry_group 
   TABLE DATA           P   COPY public.infantry_group (infantry_group_id, infantry_group_name) FROM stdin;
    public               postgres    false    242   ��       �          0    17513    infantry_group_junction 
   TABLE DATA           Q   COPY public.infantry_group_junction (infantry_group_id, infantry_id) FROM stdin;
    public               postgres    false    253   ��       ~          0    17414    infantry_units 
   TABLE DATA           �   COPY public.infantry_units (infantry_id, infantry_name, tech_level, hit_points, is_unit_amphibious, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, tech_type) FROM stdin;
    public               postgres    false    228   ��       x          0    17389    main_buildings 
   TABLE DATA           �   COPY public.main_buildings (building_id, building_name, tech_level, hit_points, armor_type, cost_in_dollars, build_time_in_seconds, power_consumption, can_be_captured, tech_type, role_description) FROM stdin;
    public               postgres    false    222   ��       �          0    17484    naval_group 
   TABLE DATA           G   COPY public.naval_group (naval_group_id, naval_group_name) FROM stdin;
    public               postgres    false    248   �       �          0    17528    naval_group_junction 
   TABLE DATA           M   COPY public.naval_group_junction (naval_group_id, naval_unit_id) FROM stdin;
    public               postgres    false    256   K�       �          0    17435    naval_units 
   TABLE DATA           �   COPY public.naval_units (naval_unit_id, naval_unit_name, tech_level, hit_points, is_unit_amphibious, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, tech_type) FROM stdin;
    public               postgres    false    234   ��       |          0    17407    support_powers 
   TABLE DATA           Y   COPY public.support_powers (support_power_id, support_power_name, tech_type) FROM stdin;
    public               postgres    false    226   ��       �          0    17456    support_powers_group 
   TABLE DATA           b   COPY public.support_powers_group (support_powers_group_id, support_powers_group_name) FROM stdin;
    public               postgres    false    240   ��       �          0    17508    support_powers_group_junction 
   TABLE DATA           b   COPY public.support_powers_group_junction (support_powers_group_id, support_power_id) FROM stdin;
    public               postgres    false    252   ��       �          0    17449    support_structure_group 
   TABLE DATA           k   COPY public.support_structure_group (support_structure_group_id, support_structure_group_name) FROM stdin;
    public               postgres    false    238   B�       �          0    17503     support_structure_group_junction 
   TABLE DATA           l   COPY public.support_structure_group_junction (support_structure_group_id, support_structure_id) FROM stdin;
    public               postgres    false    251   ��       z          0    17398    support_structures 
   TABLE DATA           �   COPY public.support_structures (support_structure_id, support_structure_name, tech_level, hit_points, armor_type, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, power_consumption, tech_type, role_description) FROM stdin;
    public               postgres    false    224   ��       �          0    17470    vehicle_group 
   TABLE DATA           M   COPY public.vehicle_group (vehicle_group_id, vehicle_group_name) FROM stdin;
    public               postgres    false    244   u�       �          0    17518    vehicle_group_junction 
   TABLE DATA           N   COPY public.vehicle_group_junction (vehicle_group_id, vehicle_id) FROM stdin;
    public               postgres    false    254   ��       �          0    17421    vehicle_units 
   TABLE DATA           �   COPY public.vehicle_units (vehicle_id, vehicle_name, tech_level, hit_points, is_unit_amphibious, cost_in_dollars, build_time_in_seconds, can_ground_attack, can_air_attack, tech_type) FROM stdin;
    public               postgres    false    230   P�       �           0    0 $   aircraft_group_aircraft_group_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.aircraft_group_aircraft_group_id_seq', 5, true);
          public               postgres    false    245            �           0    0    aircraft_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.aircraft_id_seq', 10, true);
          public               postgres    false    231            �           0    0 $   building_group_building_group_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.building_group_building_group_id_seq', 3, true);
          public               postgres    false    235            �           0    0    building_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.building_id_seq', 30, true);
          public               postgres    false    221            �           0    0    country_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.country_id_seq', 11, true);
          public               postgres    false    219            �           0    0    faction_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.faction_id_seq', 4, true);
          public               postgres    false    217            �           0    0 $   infantry_group_infantry_group_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.infantry_group_infantry_group_id_seq', 6, true);
          public               postgres    false    241            �           0    0    infantry_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.infantry_id_seq', 27, true);
          public               postgres    false    227            �           0    0    naval_group_naval_group_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.naval_group_naval_group_id_seq', 3, true);
          public               postgres    false    247            �           0    0    naval_unit_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.naval_unit_id_seq', 12, true);
          public               postgres    false    233            �           0    0    support_power_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.support_power_id_seq', 11, true);
          public               postgres    false    225            �           0    0 0   support_powers_group_support_powers_group_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('public.support_powers_group_support_powers_group_id_seq', 4, true);
          public               postgres    false    239            �           0    0 6   support_structure_group_support_structure_group_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public.support_structure_group_support_structure_group_id_seq', 4, true);
          public               postgres    false    237            �           0    0    support_structure_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.support_structure_id_seq', 30, true);
          public               postgres    false    223            �           0    0 "   vehicle_group_vehicle_group_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.vehicle_group_vehicle_group_id_seq', 6, true);
          public               postgres    false    243            �           0    0    vehicle_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.vehicle_id_seq', 25, true);
          public               postgres    false    229            �           2606    17527 4   aircraft_group_junction aircraft_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.aircraft_group_junction
    ADD CONSTRAINT aircraft_group_junction_pkey PRIMARY KEY (aircraft_group_id, aircraft_id);
 ^   ALTER TABLE ONLY public.aircraft_group_junction DROP CONSTRAINT aircraft_group_junction_pkey;
       public                 postgres    false    255    255            �           2606    17482 "   aircraft_group aircraft_group_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.aircraft_group
    ADD CONSTRAINT aircraft_group_pkey PRIMARY KEY (aircraft_group_id);
 L   ALTER TABLE ONLY public.aircraft_group DROP CONSTRAINT aircraft_group_pkey;
       public                 postgres    false    246            �           2606    17433 "   aircraft_units aircraft_units_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.aircraft_units
    ADD CONSTRAINT aircraft_units_pkey PRIMARY KEY (aircraft_id);
 L   ALTER TABLE ONLY public.aircraft_units DROP CONSTRAINT aircraft_units_pkey;
       public                 postgres    false    232            �           2606    17502 4   building_group_junction building_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.building_group_junction
    ADD CONSTRAINT building_group_junction_pkey PRIMARY KEY (building_group_id, building_id);
 ^   ALTER TABLE ONLY public.building_group_junction DROP CONSTRAINT building_group_junction_pkey;
       public                 postgres    false    250    250            �           2606    17447 "   building_group building_group_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.building_group
    ADD CONSTRAINT building_group_pkey PRIMARY KEY (building_group_id);
 L   ALTER TABLE ONLY public.building_group DROP CONSTRAINT building_group_pkey;
       public                 postgres    false    236            �           2606    17387    countries countries_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);
 B   ALTER TABLE ONLY public.countries DROP CONSTRAINT countries_pkey;
       public                 postgres    false    220            �           2606    17494    country_tech country_tech_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT country_tech_pkey PRIMARY KEY (country_id);
 H   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT country_tech_pkey;
       public                 postgres    false    249            �           2606    17378    factions factions_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.factions
    ADD CONSTRAINT factions_pkey PRIMARY KEY (faction_id);
 @   ALTER TABLE ONLY public.factions DROP CONSTRAINT factions_pkey;
       public                 postgres    false    218            �           2606    17517 4   infantry_group_junction infantry_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.infantry_group_junction
    ADD CONSTRAINT infantry_group_junction_pkey PRIMARY KEY (infantry_group_id, infantry_id);
 ^   ALTER TABLE ONLY public.infantry_group_junction DROP CONSTRAINT infantry_group_junction_pkey;
       public                 postgres    false    253    253            �           2606    17468 "   infantry_group infantry_group_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.infantry_group
    ADD CONSTRAINT infantry_group_pkey PRIMARY KEY (infantry_group_id);
 L   ALTER TABLE ONLY public.infantry_group DROP CONSTRAINT infantry_group_pkey;
       public                 postgres    false    242            �           2606    17419 "   infantry_units infantry_units_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.infantry_units
    ADD CONSTRAINT infantry_units_pkey PRIMARY KEY (infantry_id);
 L   ALTER TABLE ONLY public.infantry_units DROP CONSTRAINT infantry_units_pkey;
       public                 postgres    false    228            �           2606    17396 "   main_buildings main_buildings_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.main_buildings
    ADD CONSTRAINT main_buildings_pkey PRIMARY KEY (building_id);
 L   ALTER TABLE ONLY public.main_buildings DROP CONSTRAINT main_buildings_pkey;
       public                 postgres    false    222            �           2606    17532 .   naval_group_junction naval_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.naval_group_junction
    ADD CONSTRAINT naval_group_junction_pkey PRIMARY KEY (naval_group_id, naval_unit_id);
 X   ALTER TABLE ONLY public.naval_group_junction DROP CONSTRAINT naval_group_junction_pkey;
       public                 postgres    false    256    256            �           2606    17489    naval_group naval_group_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.naval_group
    ADD CONSTRAINT naval_group_pkey PRIMARY KEY (naval_group_id);
 F   ALTER TABLE ONLY public.naval_group DROP CONSTRAINT naval_group_pkey;
       public                 postgres    false    248            �           2606    17440    naval_units naval_units_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.naval_units
    ADD CONSTRAINT naval_units_pkey PRIMARY KEY (naval_unit_id);
 F   ALTER TABLE ONLY public.naval_units DROP CONSTRAINT naval_units_pkey;
       public                 postgres    false    234            �           2606    17512 @   support_powers_group_junction support_powers_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.support_powers_group_junction
    ADD CONSTRAINT support_powers_group_junction_pkey PRIMARY KEY (support_powers_group_id, support_power_id);
 j   ALTER TABLE ONLY public.support_powers_group_junction DROP CONSTRAINT support_powers_group_junction_pkey;
       public                 postgres    false    252    252            �           2606    17461 .   support_powers_group support_powers_group_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.support_powers_group
    ADD CONSTRAINT support_powers_group_pkey PRIMARY KEY (support_powers_group_id);
 X   ALTER TABLE ONLY public.support_powers_group DROP CONSTRAINT support_powers_group_pkey;
       public                 postgres    false    240            �           2606    17412 "   support_powers support_powers_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.support_powers
    ADD CONSTRAINT support_powers_pkey PRIMARY KEY (support_power_id);
 L   ALTER TABLE ONLY public.support_powers DROP CONSTRAINT support_powers_pkey;
       public                 postgres    false    226            �           2606    17507 F   support_structure_group_junction support_structure_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.support_structure_group_junction
    ADD CONSTRAINT support_structure_group_junction_pkey PRIMARY KEY (support_structure_group_id, support_structure_id);
 p   ALTER TABLE ONLY public.support_structure_group_junction DROP CONSTRAINT support_structure_group_junction_pkey;
       public                 postgres    false    251    251            �           2606    17454 4   support_structure_group support_structure_group_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.support_structure_group
    ADD CONSTRAINT support_structure_group_pkey PRIMARY KEY (support_structure_group_id);
 ^   ALTER TABLE ONLY public.support_structure_group DROP CONSTRAINT support_structure_group_pkey;
       public                 postgres    false    238            �           2606    17405 *   support_structures support_structures_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.support_structures
    ADD CONSTRAINT support_structures_pkey PRIMARY KEY (support_structure_id);
 T   ALTER TABLE ONLY public.support_structures DROP CONSTRAINT support_structures_pkey;
       public                 postgres    false    224            �           2606    17522 2   vehicle_group_junction vehicle_group_junction_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.vehicle_group_junction
    ADD CONSTRAINT vehicle_group_junction_pkey PRIMARY KEY (vehicle_group_id, vehicle_id);
 \   ALTER TABLE ONLY public.vehicle_group_junction DROP CONSTRAINT vehicle_group_junction_pkey;
       public                 postgres    false    254    254            �           2606    17475     vehicle_group vehicle_group_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.vehicle_group
    ADD CONSTRAINT vehicle_group_pkey PRIMARY KEY (vehicle_group_id);
 J   ALTER TABLE ONLY public.vehicle_group DROP CONSTRAINT vehicle_group_pkey;
       public                 postgres    false    244            �           2606    17426     vehicle_units vehicle_units_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.vehicle_units
    ADD CONSTRAINT vehicle_units_pkey PRIMARY KEY (vehicle_id);
 J   ALTER TABLE ONLY public.vehicle_units DROP CONSTRAINT vehicle_units_pkey;
       public                 postgres    false    230            �           2606    17588 D   aircraft_group_junction fk_aircraft_group_junction_aircraft_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircraft_group_junction
    ADD CONSTRAINT fk_aircraft_group_junction_aircraft_group_id FOREIGN KEY (aircraft_group_id) REFERENCES public.aircraft_group(aircraft_group_id);
 n   ALTER TABLE ONLY public.aircraft_group_junction DROP CONSTRAINT fk_aircraft_group_junction_aircraft_group_id;
       public               postgres    false    4793    246    255            �           2606    17593 >   aircraft_group_junction fk_aircraft_group_junction_aircraft_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.aircraft_group_junction
    ADD CONSTRAINT fk_aircraft_group_junction_aircraft_id FOREIGN KEY (aircraft_id) REFERENCES public.aircraft_units(aircraft_id);
 h   ALTER TABLE ONLY public.aircraft_group_junction DROP CONSTRAINT fk_aircraft_group_junction_aircraft_id;
       public               postgres    false    255    4779    232            �           2606    17538 D   building_group_junction fk_building_group_junction_building_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.building_group_junction
    ADD CONSTRAINT fk_building_group_junction_building_group_id FOREIGN KEY (building_group_id) REFERENCES public.building_group(building_group_id);
 n   ALTER TABLE ONLY public.building_group_junction DROP CONSTRAINT fk_building_group_junction_building_group_id;
       public               postgres    false    4783    250    236            �           2606    17543 >   building_group_junction fk_building_group_junction_building_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.building_group_junction
    ADD CONSTRAINT fk_building_group_junction_building_id FOREIGN KEY (building_id) REFERENCES public.main_buildings(building_id);
 h   ALTER TABLE ONLY public.building_group_junction DROP CONSTRAINT fk_building_group_junction_building_id;
       public               postgres    false    4769    222    250            �           2606    17533 !   countries fk_countries_faction_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.countries
    ADD CONSTRAINT fk_countries_faction_id FOREIGN KEY (faction_id) REFERENCES public.factions(faction_id);
 K   ALTER TABLE ONLY public.countries DROP CONSTRAINT fk_countries_faction_id;
       public               postgres    false    218    220    4765            �           2606    17633 .   country_tech fk_country_tech_aircraft_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_aircraft_group_id FOREIGN KEY (aircraft_group_id) REFERENCES public.aircraft_group(aircraft_group_id);
 X   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_aircraft_group_id;
       public               postgres    false    4793    246    249            �           2606    17608 .   country_tech fk_country_tech_building_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_building_group_id FOREIGN KEY (building_group_id) REFERENCES public.building_group(building_group_id);
 X   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_building_group_id;
       public               postgres    false    249    4783    236            �           2606    17623 .   country_tech fk_country_tech_infantry_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_infantry_group_id FOREIGN KEY (infantry_group_id) REFERENCES public.infantry_group(infantry_group_id);
 X   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_infantry_group_id;
       public               postgres    false    249    242    4789            �           2606    17638 +   country_tech fk_country_tech_naval_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_naval_group_id FOREIGN KEY (naval_group_id) REFERENCES public.naval_group(naval_group_id);
 U   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_naval_group_id;
       public               postgres    false    4795    249    248            �           2606    17618 4   country_tech fk_country_tech_support_powers_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_support_powers_group_id FOREIGN KEY (support_powers_group_id) REFERENCES public.support_powers_group(support_powers_group_id);
 ^   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_support_powers_group_id;
       public               postgres    false    240    4787    249            �           2606    17613 7   country_tech fk_country_tech_support_structure_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_support_structure_group_id FOREIGN KEY (support_structure_group_id) REFERENCES public.support_structure_group(support_structure_group_id);
 a   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_support_structure_group_id;
       public               postgres    false    238    249    4785            �           2606    17628 -   country_tech fk_country_tech_vehicle_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.country_tech
    ADD CONSTRAINT fk_country_tech_vehicle_group_id FOREIGN KEY (vehicle_group_id) REFERENCES public.vehicle_group(vehicle_group_id);
 W   ALTER TABLE ONLY public.country_tech DROP CONSTRAINT fk_country_tech_vehicle_group_id;
       public               postgres    false    4791    249    244            �           2606    17568 D   infantry_group_junction fk_infantry_group_junction_infantry_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.infantry_group_junction
    ADD CONSTRAINT fk_infantry_group_junction_infantry_group_id FOREIGN KEY (infantry_group_id) REFERENCES public.infantry_group(infantry_group_id);
 n   ALTER TABLE ONLY public.infantry_group_junction DROP CONSTRAINT fk_infantry_group_junction_infantry_group_id;
       public               postgres    false    242    4789    253            �           2606    17573 >   infantry_group_junction fk_infantry_group_junction_infantry_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.infantry_group_junction
    ADD CONSTRAINT fk_infantry_group_junction_infantry_id FOREIGN KEY (infantry_id) REFERENCES public.infantry_units(infantry_id);
 h   ALTER TABLE ONLY public.infantry_group_junction DROP CONSTRAINT fk_infantry_group_junction_infantry_id;
       public               postgres    false    253    4775    228            �           2606    17598 ;   naval_group_junction fk_naval_group_junction_naval_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.naval_group_junction
    ADD CONSTRAINT fk_naval_group_junction_naval_group_id FOREIGN KEY (naval_group_id) REFERENCES public.naval_group(naval_group_id);
 e   ALTER TABLE ONLY public.naval_group_junction DROP CONSTRAINT fk_naval_group_junction_naval_group_id;
       public               postgres    false    256    4795    248            �           2606    17603 :   naval_group_junction fk_naval_group_junction_naval_unit_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.naval_group_junction
    ADD CONSTRAINT fk_naval_group_junction_naval_unit_id FOREIGN KEY (naval_unit_id) REFERENCES public.naval_units(naval_unit_id);
 d   ALTER TABLE ONLY public.naval_group_junction DROP CONSTRAINT fk_naval_group_junction_naval_unit_id;
       public               postgres    false    4781    234    256            �           2606    17563 O   support_powers_group_junction fk_support_powers_group_junction_support_power_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.support_powers_group_junction
    ADD CONSTRAINT fk_support_powers_group_junction_support_power_id FOREIGN KEY (support_power_id) REFERENCES public.support_powers(support_power_id);
 y   ALTER TABLE ONLY public.support_powers_group_junction DROP CONSTRAINT fk_support_powers_group_junction_support_power_id;
       public               postgres    false    226    252    4773            �           2606    17558 V   support_powers_group_junction fk_support_powers_group_junction_support_powers_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.support_powers_group_junction
    ADD CONSTRAINT fk_support_powers_group_junction_support_powers_group_id FOREIGN KEY (support_powers_group_id) REFERENCES public.support_powers_group(support_powers_group_id);
 �   ALTER TABLE ONLY public.support_powers_group_junction DROP CONSTRAINT fk_support_powers_group_junction_support_powers_group_id;
       public               postgres    false    4787    240    252            �           2606    17548 _   support_structure_group_junction fk_support_structure_group_junction_support_structure_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.support_structure_group_junction
    ADD CONSTRAINT fk_support_structure_group_junction_support_structure_group_id FOREIGN KEY (support_structure_group_id) REFERENCES public.support_structure_group(support_structure_group_id);
 �   ALTER TABLE ONLY public.support_structure_group_junction DROP CONSTRAINT fk_support_structure_group_junction_support_structure_group_id;
       public               postgres    false    251    4785    238            �           2606    17553 Y   support_structure_group_junction fk_support_structure_group_junction_support_structure_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.support_structure_group_junction
    ADD CONSTRAINT fk_support_structure_group_junction_support_structure_id FOREIGN KEY (support_structure_id) REFERENCES public.support_structures(support_structure_id);
 �   ALTER TABLE ONLY public.support_structure_group_junction DROP CONSTRAINT fk_support_structure_group_junction_support_structure_id;
       public               postgres    false    224    251    4771            �           2606    17578 A   vehicle_group_junction fk_vehicle_group_junction_vehicle_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle_group_junction
    ADD CONSTRAINT fk_vehicle_group_junction_vehicle_group_id FOREIGN KEY (vehicle_group_id) REFERENCES public.vehicle_group(vehicle_group_id);
 k   ALTER TABLE ONLY public.vehicle_group_junction DROP CONSTRAINT fk_vehicle_group_junction_vehicle_group_id;
       public               postgres    false    4791    244    254            �           2606    17583 ;   vehicle_group_junction fk_vehicle_group_junction_vehicle_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.vehicle_group_junction
    ADD CONSTRAINT fk_vehicle_group_junction_vehicle_id FOREIGN KEY (vehicle_id) REFERENCES public.vehicle_units(vehicle_id);
 e   ALTER TABLE ONLY public.vehicle_group_junction DROP CONSTRAINT fk_vehicle_group_junction_vehicle_id;
       public               postgres    false    254    230    4777            �   G   x�3�t���L-V�/-�P��/JM�Sp/�/-�2��9�e&�ō��\&���e��%\����E�\1z\\\ _�      �   <   x�5ɩ  @�C��O�`���@�&I��RP ,e}8�e,T������<c-      �     x�u�MO� ��O?G=� m�z�:c4&՛ɂ��d��o/�MvX{i���{��-�v�9)�@J�x�1u�9��� ��ss:�5	��*�>��=�wǴ����Lx�HzaV"��b���Y�D􎦗��
.����+����8-Лb�{��6�pC�g$��9���ڿ�
�Kd.�Z!;��zcm��| I1�-[V�,��A1�淚!S�ԔN�xq�6�I�^�O�9�2tʰ u����eH��j�$1����D�j�S��*˲ e��      �   &   x�3�t���L-�2��/�L-�2�,-������ ���      �   U   x�=ͩ�@DA�C�cOKa G�q`v�k�~\�s��|)P��*j����r�R�DU�PGͭ0��\JTPEu4��J�wJ�Wi<|      v   �   x�=��N� �3}
��vw�:v��f�Y�/S$��:��o/�S/�	�����|(�J��t*U/Oi�%@tX4n�4��W�8ȃ��ܤ��v��!�=� �\��e���.�^>��C�D�����V3�a��֢5�Xm�s��3��h#��A�Ԥ&rd|`r��L���#8��}�3y6�KbB��i�����l_���̷z��W��m�G$����#�`�G���؉������C]|^E��W&      �   ]   x�U�1�0��B�ֱI���;A3����_)hؒ���r�4�Ҳ��j3����j��캻ʢ�k�f�*�R��@{|6D|oR"Z      t   �   x�5�An1E��)|���^ t��*�	���<��I@��a`��e=?oV��ҭ�	���}E��(���1屁��O��R�k	��	ɥ����t�f��4��4�!��g2���ր��64�����`�ڌ�r������T�"�\7հ#IQ%�r�u���t1�C�2̬o��RM��X����C̤��c��f�]f      �   L   x�3�t���L-Vp*�,�,�Pp/�/-�2�
ss�e��(8�&%�AeM`��E���PAS� �gdiQ&W� Ɋ�      �   �   x�Eα�0D�:&O<�� �!���w� A����{}Z��%��
4сέl�ɍ�!�b�X �b�X �b�XЗ
4сέ�_�(zE����W�ޒ2L��L��L��Lo��PGϫ�@s����U�l�      ~   �  x���A��0��/��c{h���K�+�VMTi�J+�8�Ǧ�DJ}� ��$=�<�<c�|�^���`4�a3p��ᅓF�p0z�� �ך۵�:@(\���I���NF��/���l�OOJI���op_9��z+����[�1��G �M����vH���q�	,W0�Zl�8��²<���Qo3Xq}⨂�7*~�����5���?j.�@1�;�Z�C�o�^�f�sC�rF	��D��(9����#)��Qx���'���NV�`�e�R?�0@KQH��d��Uae��j���0xQ|��1e[��g�MG낭V{i�R���6Ia%*�{ilQ�S�Qt��N]$��]���l��|�����_x�W��v(�^�6.�r��`!*��3���QR
��p'�@�'m�S#��p������z��#7T�������`�:0��`ҁoV:�=x�)�d?�
��k�"W����d����      x   ~  x���]o�0���_�$&�*v�~\n�k��&$$�&�H��q:��9v��m�M���t��s^��ė_�_GAWJF��J�oL���E����s�HEvK���h ����3(c��Z��D���8T�]���=�x�3iA�8BwJ�hR�(�Q�^�ּ�l��K ��,�U쓤(��������4��;�e)�
/4Rȟ�-KD.L�?DwLۇF�� ���%M��A�v��|%���V�1��9�噐,'����B�:q�	/
���]�)�t[�L���h�F;k��>$�R(t�"序A/�,3A!��~��L&����e9��Ħ:�!"q�>a�]v�C��E
S<v��\oT��o��G!B�V�=zXm�)t�1��-���k��"]����
��,���BS�&��Zd�k0Mw��y�ع-�e����ȕMuͥ��kk�=�,	/p��0�_��ݪ%�ga����['0j�����;����T|څ�9�7'B	��E�`�܈�0�gO�ڻ2`ҤyB��� &a��ӄ�i�W?N���`a]��%�#��e����r_ �;
��89fȾ�G!�Ѧ2=�H�!�t�� D`s�Fz�L�P�nJ>7s0=�ƣQ�B�u/ҭ��ǂR�촄�`��fGaS=ɩ��7Y&�eR��a�����Y�"Oύ Z�ok#�W�5�I�m�Kw�!�蠋7� �'���R��5mR>ɚ���J���~ښ����ﺾ���h�+:!�����x>��͊*�E�8 �;>�38�l�n2<1�0��f��K��0L��KB�\3-,w���7zxg�m}�a�w�=XC>m7`��Aq[��HRᬔi��q��%���_�n��!t%�{Y��}��z�?�S��      �   &   x�3�t���L-�2��/�L-�2�,-������ ���      �   <   x�3���t100�2����,c8��2�2����,s8�β�����,C8ˈ+F��� H�      �     x���1o�0���Wxl��6��H�Tu�B;T�T9`�S�����_Z)�����{����9�\@n����C���!98?ժth�Gi�֚`�$�wd4A�|�\Y�w�={!e�ΒcYӠ�V^+�#�NRa<
]�� �G�َ콍-$�9�H��.�ȐJR�c;E�p9�Hn���	�q����t�mI�-dΩ�áU�F�����J}��F�V^kq})Z�����?����E<�>�*��rҪ2v8���&<Z�j��^�ż��m \�}�/�־      |   �   x�m��j�@��S�	�ݦ��P4�t���l���ze���}�r���a���Y�� O���ȇ���x	*IZ�h��D�C8I���Ƨ`�өu&:V�5�in��K��X���8^�;x/>j��9�2��M��{ئs����� C�}`�~Й0֣��+�V�<�FFNU�w�*���#� Q1�x�=�h*���+�\5M���{�      �   9   x�3�t���L-Vp�M-�LN�Sp/�/-�2��ss�e��p�pF�er��qqq ׾      �   E   x�3��t100�2����,c�Ѐ�.k�5��C�L�,S8���3����Yp�%�T���� �`2      �   7   x�3�t���L-Vp+J�K�Pp/�/-�2��rs�e��p�pF�er��qqq �t9      �   U   x�5�)�@EAMC%?�zz,�?Uϵ�8�}��ņ@�*h����P�"�E(��p@ A4+0�A ���4�Z�68      z   w  x��V]s�6}V~�}�N�iBl��<�d���fˬ��3;�\��,��L��+�B�-�2<`�}��\e�7Q�[m�Ak�K	?]K)p�3�Y?��D�ܠCGQ�~XA��<wB���.K��TV�f���,��	�
)g�����!J��$b��+'.�*��l�"x�}6����AX+$B��K�v����Oa.��0\��65�Ѱ!�`[����b�v����m|݃$�@��h���*�>8r3�
)��ܡBÝ6lԐx�z�:5�@�I|�sn�/^�B-��Z�mjC�UȸCj�C���B��U����r|�^5�/PQ��3�@!���0�Jѣ���$-�q[=�l+��_�K��k�!}������W�KmqT�R���	J@�댖p��RY��tm'�M�_PO�<#��|����5�`M��Ob�t�W6�֔��]��.� �����r��U u�&K����ﾧ2J��$m���0ibt3j���p�lҷd(���3��N��8f��jE���t��|'�N�ͫ�u���P�o5a6O���f�٭�����Az�{i�&S20�%_ `Q`�B�{D+9�� ���]�] ���:*-ѫ���%1i�##ʗ�,H=u��R���%���Y��'���z�p���x��i�aR��ϝ�O)�{���wٙ C�#����(��D4c���
Z��C��P��݀�>,�G?R��Df�%��oh�9��tIY�
a�;����.W�z����^d1�;d�eq��⼙ҋ��5��*L/���&��&�����r�ؤ���K���x�i�V/�m��]~Clv�"ʺ�E� 1�H�8���W۰s���˴ѷ.��@a0�L���q�i���~*]��x���>�
GDj�M�*��}C�CH�7�|	i+��$5��{Dە��v����a���	�v�b�\�4`_�|�
��#��IL9��hM	�ש�a���v��΃'Q��������Hs@�Z��9T��� �G�����`eK]_�-����=|�3��8�T��|�6�?��ڃ����t�U���5��*���Z��4��m�m]�}�7@�~�V^�sYh�:���@�ɜW����!����WcaxI��?{ggg� ���      �   J   x�3�t���L-VpO-�M�Sp/�/-�2��rs�e��(�d&U¥M`�A��řpaS�0�gdiQ&W� �      �   q   x�=̱�@C��-�w���v� ��:�6����>_ct�%�����Ў����,f1�Y�b��@��&2
Zh+��|�3���wk���/|�_�·.�4P#���R�gU� �M_7      �     x����j1���O�'��ϾL�:l(�q)��Q�²d$9�<}G�j���q����3?������R��Yc�R�������|�j��?�e�ck�{kF���p��ۛ>��0;d�m��rd�޼܉�ն�l�Fv��
�}�z��K���)�S~?菁U}�<50�7P�R9��9I�q���y��/"-�ܺ��H�V�}�����[��|&��&�i�EB����ǰ�O6=s`���-e�	D�̤Ξ��'�:��-���*��l�����w�9I�`�)tUj��\Y�9k�ud���PFM|�JC��
�k�#k'�Z(.�#w�B��MAV���@�h�g-���iAy+�
n��t��H�5U6�kx��
U?���B=�����V��'?��А�4{Ms�E;�WXe-�)�4�����'���������������w���=��.f/~,z�8��K�9<h�*�x����Q-`)�FbvLL]u��Y
��+�`u�`?�N}�?oF��/:��     