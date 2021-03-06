PGDMP                         w         
   admgestion    10.5    10.5 �    ]           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ^           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            _           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            `           1262    29354 
   admgestion    DATABASE     �   CREATE DATABASE admgestion WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Spain.1252' LC_CTYPE = 'Spanish_Spain.1252';
    DROP DATABASE admgestion;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            a           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            b           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    34916    carreras    TABLE     �   CREATE TABLE public.carreras (
    id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.carreras;
       public         postgres    false    3            �            1259    34914    carreras_id_seq    SEQUENCE     �   CREATE SEQUENCE public.carreras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.carreras_id_seq;
       public       postgres    false    226    3            c           0    0    carreras_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.carreras_id_seq OWNED BY public.carreras.id;
            public       postgres    false    225            �            1259    34735 	   data_rows    TABLE       CREATE TABLE public.data_rows (
    id integer NOT NULL,
    data_type_id integer NOT NULL,
    field character varying(191) NOT NULL,
    type character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    required boolean DEFAULT false NOT NULL,
    browse boolean DEFAULT true NOT NULL,
    read boolean DEFAULT true NOT NULL,
    edit boolean DEFAULT true NOT NULL,
    add boolean DEFAULT true NOT NULL,
    delete boolean DEFAULT true NOT NULL,
    details text,
    "order" integer DEFAULT 1 NOT NULL
);
    DROP TABLE public.data_rows;
       public         postgres    false    3            �            1259    34733    data_rows_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_rows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.data_rows_id_seq;
       public       postgres    false    204    3            d           0    0    data_rows_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.data_rows_id_seq OWNED BY public.data_rows.id;
            public       postgres    false    203            �            1259    34719 
   data_types    TABLE     �  CREATE TABLE public.data_types (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    slug character varying(191) NOT NULL,
    display_name_singular character varying(191) NOT NULL,
    display_name_plural character varying(191) NOT NULL,
    icon character varying(191),
    model_name character varying(191),
    description character varying(191),
    generate_permissions boolean DEFAULT false NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    server_side smallint DEFAULT '0'::smallint NOT NULL,
    controller character varying(191),
    policy_name character varying(191),
    details text
);
    DROP TABLE public.data_types;
       public         postgres    false    3            �            1259    34717    data_types_id_seq    SEQUENCE     �   CREATE SEQUENCE public.data_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.data_types_id_seq;
       public       postgres    false    202    3            e           0    0    data_types_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.data_types_id_seq OWNED BY public.data_types.id;
            public       postgres    false    201            �            1259    35077    departamentos    TABLE     �   CREATE TABLE public.departamentos (
    id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    descripcion text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 !   DROP TABLE public.departamentos;
       public         postgres    false    3            �            1259    35075    departamentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.departamentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.departamentos_id_seq;
       public       postgres    false    3    246            f           0    0    departamentos_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.departamentos_id_seq OWNED BY public.departamentos.id;
            public       postgres    false    245            �            1259    34908 
   documentos    TABLE     �   CREATE TABLE public.documentos (
    id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.documentos;
       public         postgres    false    3            �            1259    34906    documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.documentos_id_seq;
       public       postgres    false    3    224            g           0    0    documentos_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.documentos_id_seq OWNED BY public.documentos.id;
            public       postgres    false    223            �            1259    35061    items    TABLE       CREATE TABLE public.items (
    id integer NOT NULL,
    servicio_id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    descripcion text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.items;
       public         postgres    false    3            �            1259    35059    items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.items_id_seq;
       public       postgres    false    244    3            h           0    0    items_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.items_id_seq OWNED BY public.items.id;
            public       postgres    false    243            �            1259    34767 
   menu_items    TABLE       CREATE TABLE public.menu_items (
    id integer NOT NULL,
    menu_id integer,
    title character varying(191) NOT NULL,
    url character varying(191) NOT NULL,
    target character varying(191) DEFAULT '_self'::character varying NOT NULL,
    icon_class character varying(191),
    color character varying(191),
    parent_id integer,
    "order" integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    route character varying(191),
    parameters text
);
    DROP TABLE public.menu_items;
       public         postgres    false    3            �            1259    34765    menu_items_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.menu_items_id_seq;
       public       postgres    false    3    208            i           0    0    menu_items_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.menu_items_id_seq OWNED BY public.menu_items.id;
            public       postgres    false    207            �            1259    34757    menus    TABLE     �   CREATE TABLE public.menus (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.menus;
       public         postgres    false    3            �            1259    34755    menus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public       postgres    false    3    206            j           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
            public       postgres    false    205            �            1259    34682 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(191) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         postgres    false    3            �            1259    34680    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public       postgres    false    3    197            k           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
            public       postgres    false    196            �            1259    34703    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(191) NOT NULL,
    token character varying(191) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         postgres    false    3            �            1259    34946    pensum    TABLE     �   CREATE TABLE public.pensum (
    id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.pensum;
       public         postgres    false    3            �            1259    34944    pensum_id_seq    SEQUENCE     �   CREATE SEQUENCE public.pensum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.pensum_id_seq;
       public       postgres    false    230    3            l           0    0    pensum_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.pensum_id_seq OWNED BY public.pensum.id;
            public       postgres    false    229            �            1259    34815    permission_role    TABLE     j   CREATE TABLE public.permission_role (
    permission_id integer NOT NULL,
    role_id integer NOT NULL
);
 #   DROP TABLE public.permission_role;
       public         postgres    false    3            �            1259    34808    permissions    TABLE     �   CREATE TABLE public.permissions (
    id integer NOT NULL,
    key character varying(191) NOT NULL,
    table_name character varying(191),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public         postgres    false    3            �            1259    34806    permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public       postgres    false    214    3            m           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
            public       postgres    false    213            �            1259    34887    post_tag    TABLE     �   CREATE TABLE public.post_tag (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.post_tag;
       public         postgres    false    3            �            1259    34885    post_tag_id_seq    SEQUENCE     �   CREATE SEQUENCE public.post_tag_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.post_tag_id_seq;
       public       postgres    false    3    220            n           0    0    post_tag_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.post_tag_id_seq OWNED BY public.post_tag.id;
            public       postgres    false    219            �            1259    34998    precio_documentos    TABLE       CREATE TABLE public.precio_documentos (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    documento_id integer NOT NULL,
    precio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 %   DROP TABLE public.precio_documentos;
       public         postgres    false    3            �            1259    34996    precio_documentos_id_seq    SEQUENCE     �   CREATE SEQUENCE public.precio_documentos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.precio_documentos_id_seq;
       public       postgres    false    3    236            o           0    0    precio_documentos_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.precio_documentos_id_seq OWNED BY public.precio_documentos.id;
            public       postgres    false    235            �            1259    35016    precio_programas    TABLE     �   CREATE TABLE public.precio_programas (
    id integer NOT NULL,
    carrera_id integer NOT NULL,
    pensum_id integer NOT NULL,
    precio double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 $   DROP TABLE public.precio_programas;
       public         postgres    false    3            �            1259    35014    precio_programas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.precio_programas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.precio_programas_id_seq;
       public       postgres    false    238    3            p           0    0    precio_programas_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.precio_programas_id_seq OWNED BY public.precio_programas.id;
            public       postgres    false    237            �            1259    34784    roles    TABLE     �   CREATE TABLE public.roles (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public         postgres    false    3            �            1259    34782    roles_id_seq    SEQUENCE     �   CREATE SEQUENCE public.roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public       postgres    false    210    3            q           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
            public       postgres    false    209            �            1259    35045 	   servicios    TABLE       CREATE TABLE public.servicios (
    id integer NOT NULL,
    tipo_servicio_id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    descripcion text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.servicios;
       public         postgres    false    3            �            1259    35043    servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.servicios_id_seq;
       public       postgres    false    242    3            r           0    0    servicios_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.servicios_id_seq OWNED BY public.servicios.id;
            public       postgres    false    241            �            1259    34794    settings    TABLE     -  CREATE TABLE public.settings (
    id integer NOT NULL,
    key character varying(191) NOT NULL,
    display_name character varying(191) NOT NULL,
    value text,
    details text,
    type character varying(191) NOT NULL,
    "order" integer DEFAULT 1 NOT NULL,
    "group" character varying(191)
);
    DROP TABLE public.settings;
       public         postgres    false    3            �            1259    34792    settings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.settings_id_seq;
       public       postgres    false    212    3            s           0    0    settings_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.settings_id_seq OWNED BY public.settings.id;
            public       postgres    false    211            �            1259    34954    solicitud_documento    TABLE       CREATE TABLE public.solicitud_documento (
    id integer NOT NULL,
    solicitud_id integer NOT NULL,
    documento_id integer NOT NULL,
    precio_fact double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.solicitud_documento;
       public         postgres    false    3            �            1259    34952    solicitud_documento_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_documento_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.solicitud_documento_id_seq;
       public       postgres    false    3    232            t           0    0    solicitud_documento_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.solicitud_documento_id_seq OWNED BY public.solicitud_documento.id;
            public       postgres    false    231            �            1259    34972    solicitud_programas    TABLE     �  CREATE TABLE public.solicitud_programas (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    user_id integer NOT NULL,
    carrera_id integer NOT NULL,
    pensum_id integer NOT NULL,
    descripcion character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    precio_fact double precision,
    status character varying(191) NOT NULL,
    pago_img character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.solicitud_programas;
       public         postgres    false    3            �            1259    34970    solicitud_programas_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_programas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.solicitud_programas_id_seq;
       public       postgres    false    3    234            u           0    0    solicitud_programas_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.solicitud_programas_id_seq OWNED BY public.solicitud_programas.id;
            public       postgres    false    233            �            1259    35114    solicitud_servicio_item    TABLE       CREATE TABLE public.solicitud_servicio_item (
    id integer NOT NULL,
    solicitud_servicio_id integer NOT NULL,
    item_id integer NOT NULL,
    cantidad character varying(191),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 +   DROP TABLE public.solicitud_servicio_item;
       public         postgres    false    3            �            1259    35112    solicitud_servicio_item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_servicio_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.solicitud_servicio_item_id_seq;
       public       postgres    false    250    3            v           0    0    solicitud_servicio_item_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.solicitud_servicio_item_id_seq OWNED BY public.solicitud_servicio_item.id;
            public       postgres    false    249            �            1259    35088    solicitud_servicios    TABLE     �  CREATE TABLE public.solicitud_servicios (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    user_id integer NOT NULL,
    departamento_id integer NOT NULL,
    servicio_id integer NOT NULL,
    observaciones character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    status character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 '   DROP TABLE public.solicitud_servicios;
       public         postgres    false    3            �            1259    35086    solicitud_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitud_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.solicitud_servicios_id_seq;
       public       postgres    false    3    248            w           0    0    solicitud_servicios_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.solicitud_servicios_id_seq OWNED BY public.solicitud_servicios.id;
            public       postgres    false    247            �            1259    34924    solicitudes    TABLE     w  CREATE TABLE public.solicitudes (
    id integer NOT NULL,
    uuid uuid NOT NULL,
    user_id integer NOT NULL,
    carrera_id integer NOT NULL,
    email character varying(191) NOT NULL,
    pago_img character varying(191) NOT NULL,
    status character varying(191) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.solicitudes;
       public         postgres    false    3            �            1259    34922    solicitudes_id_seq    SEQUENCE     �   CREATE SEQUENCE public.solicitudes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.solicitudes_id_seq;
       public       postgres    false    228    3            x           0    0    solicitudes_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.solicitudes_id_seq OWNED BY public.solicitudes.id;
            public       postgres    false    227            �            1259    34895    sugerencias    TABLE     �   CREATE TABLE public.sugerencias (
    id integer NOT NULL,
    descripcion character varying(191) NOT NULL,
    user_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.sugerencias;
       public         postgres    false    3            �            1259    34893    sugerencias_id_seq    SEQUENCE     �   CREATE SEQUENCE public.sugerencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.sugerencias_id_seq;
       public       postgres    false    222    3            y           0    0    sugerencias_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.sugerencias_id_seq OWNED BY public.sugerencias.id;
            public       postgres    false    221            �            1259    35034    tipo_servicios    TABLE     �   CREATE TABLE public.tipo_servicios (
    id integer NOT NULL,
    nombre character varying(191) NOT NULL,
    descripcion text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 "   DROP TABLE public.tipo_servicios;
       public         postgres    false    3            �            1259    35032    tipo_servicios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tipo_servicios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.tipo_servicios_id_seq;
       public       postgres    false    3    240            z           0    0    tipo_servicios_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.tipo_servicios_id_seq OWNED BY public.tipo_servicios.id;
            public       postgres    false    239            �            1259    34844    translations    TABLE     d  CREATE TABLE public.translations (
    id integer NOT NULL,
    table_name character varying(191) NOT NULL,
    column_name character varying(191) NOT NULL,
    foreign_key integer NOT NULL,
    locale character varying(191) NOT NULL,
    value text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
     DROP TABLE public.translations;
       public         postgres    false    3            �            1259    34842    translations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.translations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.translations_id_seq;
       public       postgres    false    3    217            {           0    0    translations_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.translations_id_seq OWNED BY public.translations.id;
            public       postgres    false    216            �            1259    34868 
   user_roles    TABLE     _   CREATE TABLE public.user_roles (
    user_id integer NOT NULL,
    role_id integer NOT NULL
);
    DROP TABLE public.user_roles;
       public         postgres    false    3            �            1259    34690    users    TABLE     &  CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying(191) NOT NULL,
    email character varying(191) NOT NULL,
    password character varying(191) NOT NULL,
    cedula character varying(191),
    address character varying(191),
    phone character varying(191),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    avatar character varying(191) DEFAULT 'users/default.png'::character varying,
    role_id integer,
    settings text
);
    DROP TABLE public.users;
       public         postgres    false    3            �            1259    34688    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public       postgres    false    3    199            |           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
            public       postgres    false    198            6           2604    34919    carreras id    DEFAULT     j   ALTER TABLE ONLY public.carreras ALTER COLUMN id SET DEFAULT nextval('public.carreras_id_seq'::regclass);
 :   ALTER TABLE public.carreras ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            #           2604    34738    data_rows id    DEFAULT     l   ALTER TABLE ONLY public.data_rows ALTER COLUMN id SET DEFAULT nextval('public.data_rows_id_seq'::regclass);
 ;   ALTER TABLE public.data_rows ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204                        2604    34722    data_types id    DEFAULT     n   ALTER TABLE ONLY public.data_types ALTER COLUMN id SET DEFAULT nextval('public.data_types_id_seq'::regclass);
 <   ALTER TABLE public.data_types ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            @           2604    35080    departamentos id    DEFAULT     t   ALTER TABLE ONLY public.departamentos ALTER COLUMN id SET DEFAULT nextval('public.departamentos_id_seq'::regclass);
 ?   ALTER TABLE public.departamentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    245    246    246            5           2604    34911    documentos id    DEFAULT     n   ALTER TABLE ONLY public.documentos ALTER COLUMN id SET DEFAULT nextval('public.documentos_id_seq'::regclass);
 <   ALTER TABLE public.documentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            ?           2604    35064    items id    DEFAULT     d   ALTER TABLE ONLY public.items ALTER COLUMN id SET DEFAULT nextval('public.items_id_seq'::regclass);
 7   ALTER TABLE public.items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    243    244    244            ,           2604    34770    menu_items id    DEFAULT     n   ALTER TABLE ONLY public.menu_items ALTER COLUMN id SET DEFAULT nextval('public.menu_items_id_seq'::regclass);
 <   ALTER TABLE public.menu_items ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    207    208            +           2604    34760    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    206    205    206                       2604    34685    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    197    197            8           2604    34949 	   pensum id    DEFAULT     f   ALTER TABLE ONLY public.pensum ALTER COLUMN id SET DEFAULT nextval('public.pensum_id_seq'::regclass);
 8   ALTER TABLE public.pensum ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            1           2604    34811    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214            3           2604    34890    post_tag id    DEFAULT     j   ALTER TABLE ONLY public.post_tag ALTER COLUMN id SET DEFAULT nextval('public.post_tag_id_seq'::regclass);
 :   ALTER TABLE public.post_tag ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    220    220            ;           2604    35001    precio_documentos id    DEFAULT     |   ALTER TABLE ONLY public.precio_documentos ALTER COLUMN id SET DEFAULT nextval('public.precio_documentos_id_seq'::regclass);
 C   ALTER TABLE public.precio_documentos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    236    235    236            <           2604    35019    precio_programas id    DEFAULT     z   ALTER TABLE ONLY public.precio_programas ALTER COLUMN id SET DEFAULT nextval('public.precio_programas_id_seq'::regclass);
 B   ALTER TABLE public.precio_programas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    238    237    238            .           2604    34787    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            >           2604    35048    servicios id    DEFAULT     l   ALTER TABLE ONLY public.servicios ALTER COLUMN id SET DEFAULT nextval('public.servicios_id_seq'::regclass);
 ;   ALTER TABLE public.servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    242    242            /           2604    34797    settings id    DEFAULT     j   ALTER TABLE ONLY public.settings ALTER COLUMN id SET DEFAULT nextval('public.settings_id_seq'::regclass);
 :   ALTER TABLE public.settings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    211    212            9           2604    34957    solicitud_documento id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_documento ALTER COLUMN id SET DEFAULT nextval('public.solicitud_documento_id_seq'::regclass);
 E   ALTER TABLE public.solicitud_documento ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    232    232            :           2604    34975    solicitud_programas id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_programas ALTER COLUMN id SET DEFAULT nextval('public.solicitud_programas_id_seq'::regclass);
 E   ALTER TABLE public.solicitud_programas ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    233    234    234            B           2604    35117    solicitud_servicio_item id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_servicio_item ALTER COLUMN id SET DEFAULT nextval('public.solicitud_servicio_item_id_seq'::regclass);
 I   ALTER TABLE public.solicitud_servicio_item ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    249    250            A           2604    35091    solicitud_servicios id    DEFAULT     �   ALTER TABLE ONLY public.solicitud_servicios ALTER COLUMN id SET DEFAULT nextval('public.solicitud_servicios_id_seq'::regclass);
 E   ALTER TABLE public.solicitud_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    247    248            7           2604    34927    solicitudes id    DEFAULT     p   ALTER TABLE ONLY public.solicitudes ALTER COLUMN id SET DEFAULT nextval('public.solicitudes_id_seq'::regclass);
 =   ALTER TABLE public.solicitudes ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            4           2604    34898    sugerencias id    DEFAULT     p   ALTER TABLE ONLY public.sugerencias ALTER COLUMN id SET DEFAULT nextval('public.sugerencias_id_seq'::regclass);
 =   ALTER TABLE public.sugerencias ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    221    222            =           2604    35037    tipo_servicios id    DEFAULT     v   ALTER TABLE ONLY public.tipo_servicios ALTER COLUMN id SET DEFAULT nextval('public.tipo_servicios_id_seq'::regclass);
 @   ALTER TABLE public.tipo_servicios ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240            2           2604    34847    translations id    DEFAULT     r   ALTER TABLE ONLY public.translations ALTER COLUMN id SET DEFAULT nextval('public.translations_id_seq'::regclass);
 >   ALTER TABLE public.translations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217                       2604    34693    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            B          0    34916    carreras 
   TABLE DATA               F   COPY public.carreras (id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    226   �(      ,          0    34735 	   data_rows 
   TABLE DATA               �   COPY public.data_rows (id, data_type_id, field, type, display_name, required, browse, read, edit, add, delete, details, "order") FROM stdin;
    public       postgres    false    204   ,)      *          0    34719 
   data_types 
   TABLE DATA               �   COPY public.data_types (id, name, slug, display_name_singular, display_name_plural, icon, model_name, description, generate_permissions, created_at, updated_at, server_side, controller, policy_name, details) FROM stdin;
    public       postgres    false    202   +      V          0    35077    departamentos 
   TABLE DATA               X   COPY public.departamentos (id, nombre, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    246   �+      @          0    34908 
   documentos 
   TABLE DATA               H   COPY public.documentos (id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    224   5-      T          0    35061    items 
   TABLE DATA               ]   COPY public.items (id, servicio_id, nombre, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    244   �-      0          0    34767 
   menu_items 
   TABLE DATA               �   COPY public.menu_items (id, menu_id, title, url, target, icon_class, color, parent_id, "order", created_at, updated_at, route, parameters) FROM stdin;
    public       postgres    false    208   �/      .          0    34757    menus 
   TABLE DATA               A   COPY public.menus (id, name, created_at, updated_at) FROM stdin;
    public       postgres    false    206   B1      %          0    34682 
   migrations 
   TABLE DATA               :   COPY public.migrations (id, migration, batch) FROM stdin;
    public       postgres    false    197   }1      (          0    34703    password_resets 
   TABLE DATA               C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public       postgres    false    200   �3      F          0    34946    pensum 
   TABLE DATA               D   COPY public.pensum (id, nombre, created_at, updated_at) FROM stdin;
    public       postgres    false    230   4      7          0    34815    permission_role 
   TABLE DATA               A   COPY public.permission_role (permission_id, role_id) FROM stdin;
    public       postgres    false    215   f4      6          0    34808    permissions 
   TABLE DATA               R   COPY public.permissions (id, key, table_name, created_at, updated_at) FROM stdin;
    public       postgres    false    214   �4      <          0    34887    post_tag 
   TABLE DATA               >   COPY public.post_tag (id, created_at, updated_at) FROM stdin;
    public       postgres    false    220   �5      L          0    34998    precio_documentos 
   TABLE DATA               i   COPY public.precio_documentos (id, carrera_id, documento_id, precio, created_at, updated_at) FROM stdin;
    public       postgres    false    236   �5      N          0    35016    precio_programas 
   TABLE DATA               e   COPY public.precio_programas (id, carrera_id, pensum_id, precio, created_at, updated_at) FROM stdin;
    public       postgres    false    238   �6      2          0    34784    roles 
   TABLE DATA               O   COPY public.roles (id, name, display_name, created_at, updated_at) FROM stdin;
    public       postgres    false    210    7      R          0    35045 	   servicios 
   TABLE DATA               f   COPY public.servicios (id, tipo_servicio_id, nombre, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    242   �7      4          0    34794    settings 
   TABLE DATA               a   COPY public.settings (id, key, display_name, value, details, type, "order", "group") FROM stdin;
    public       postgres    false    212   E8      H          0    34954    solicitud_documento 
   TABLE DATA               r   COPY public.solicitud_documento (id, solicitud_id, documento_id, precio_fact, created_at, updated_at) FROM stdin;
    public       postgres    false    232   |9      J          0    34972    solicitud_programas 
   TABLE DATA               �   COPY public.solicitud_programas (id, uuid, user_id, carrera_id, pensum_id, descripcion, email, precio_fact, status, pago_img, created_at, updated_at) FROM stdin;
    public       postgres    false    234   :      Z          0    35114    solicitud_servicio_item 
   TABLE DATA               w   COPY public.solicitud_servicio_item (id, solicitud_servicio_id, item_id, cantidad, created_at, updated_at) FROM stdin;
    public       postgres    false    250   f;      X          0    35088    solicitud_servicios 
   TABLE DATA               �   COPY public.solicitud_servicios (id, uuid, user_id, departamento_id, servicio_id, observaciones, email, status, created_at, updated_at) FROM stdin;
    public       postgres    false    248   �;      D          0    34924    solicitudes 
   TABLE DATA               u   COPY public.solicitudes (id, uuid, user_id, carrera_id, email, pago_img, status, created_at, updated_at) FROM stdin;
    public       postgres    false    228   *=      >          0    34895    sugerencias 
   TABLE DATA               W   COPY public.sugerencias (id, descripcion, user_id, created_at, updated_at) FROM stdin;
    public       postgres    false    222   X>      P          0    35034    tipo_servicios 
   TABLE DATA               Y   COPY public.tipo_servicios (id, nombre, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    240   ?      9          0    34844    translations 
   TABLE DATA               w   COPY public.translations (id, table_name, column_name, foreign_key, locale, value, created_at, updated_at) FROM stdin;
    public       postgres    false    217   @      :          0    34868 
   user_roles 
   TABLE DATA               6   COPY public.user_roles (user_id, role_id) FROM stdin;
    public       postgres    false    218   -@      '          0    34690    users 
   TABLE DATA               �   COPY public.users (id, name, email, password, cedula, address, phone, remember_token, created_at, updated_at, avatar, role_id, settings) FROM stdin;
    public       postgres    false    199   m@      }           0    0    carreras_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.carreras_id_seq', 6, true);
            public       postgres    false    225            ~           0    0    data_rows_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_rows_id_seq', 22, true);
            public       postgres    false    203                       0    0    data_types_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.data_types_id_seq', 3, true);
            public       postgres    false    201            �           0    0    departamentos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.departamentos_id_seq', 6, true);
            public       postgres    false    245            �           0    0    documentos_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.documentos_id_seq', 5, true);
            public       postgres    false    223            �           0    0    items_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.items_id_seq', 32, true);
            public       postgres    false    243            �           0    0    menu_items_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_items_id_seq', 11, true);
            public       postgres    false    207            �           0    0    menus_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menus_id_seq', 1, true);
            public       postgres    false    205            �           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 38, true);
            public       postgres    false    196            �           0    0    pensum_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.pensum_id_seq', 2, true);
            public       postgres    false    229            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 26, true);
            public       postgres    false    213            �           0    0    post_tag_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.post_tag_id_seq', 1, false);
            public       postgres    false    219            �           0    0    precio_documentos_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.precio_documentos_id_seq', 30, true);
            public       postgres    false    235            �           0    0    precio_programas_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.precio_programas_id_seq', 8, true);
            public       postgres    false    237            �           0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 7, true);
            public       postgres    false    209            �           0    0    servicios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.servicios_id_seq', 4, true);
            public       postgres    false    241            �           0    0    settings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.settings_id_seq', 10, true);
            public       postgres    false    211            �           0    0    solicitud_documento_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.solicitud_documento_id_seq', 12, true);
            public       postgres    false    231            �           0    0    solicitud_programas_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.solicitud_programas_id_seq', 4, true);
            public       postgres    false    233            �           0    0    solicitud_servicio_item_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.solicitud_servicio_item_id_seq', 9, true);
            public       postgres    false    249            �           0    0    solicitud_servicios_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.solicitud_servicios_id_seq', 4, true);
            public       postgres    false    247            �           0    0    solicitudes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.solicitudes_id_seq', 5, true);
            public       postgres    false    227            �           0    0    sugerencias_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.sugerencias_id_seq', 8, true);
            public       postgres    false    221            �           0    0    tipo_servicios_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.tipo_servicios_id_seq', 2, true);
            public       postgres    false    239            �           0    0    translations_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.translations_id_seq', 1, false);
            public       postgres    false    216            �           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 10, true);
            public       postgres    false    198            x           2606    34921    carreras carreras_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.carreras
    ADD CONSTRAINT carreras_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.carreras DROP CONSTRAINT carreras_pkey;
       public         postgres    false    226            S           2606    34749    data_rows data_rows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_pkey;
       public         postgres    false    204            M           2606    34730 !   data_types data_types_name_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_name_unique UNIQUE (name);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_name_unique;
       public         postgres    false    202            O           2606    34728    data_types data_types_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_pkey;
       public         postgres    false    202            Q           2606    34732 !   data_types data_types_slug_unique 
   CONSTRAINT     \   ALTER TABLE ONLY public.data_types
    ADD CONSTRAINT data_types_slug_unique UNIQUE (slug);
 K   ALTER TABLE ONLY public.data_types DROP CONSTRAINT data_types_slug_unique;
       public         postgres    false    202            �           2606    35085     departamentos departamentos_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.departamentos
    ADD CONSTRAINT departamentos_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.departamentos DROP CONSTRAINT departamentos_pkey;
       public         postgres    false    246            v           2606    34913    documentos documentos_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.documentos
    ADD CONSTRAINT documentos_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.documentos DROP CONSTRAINT documentos_pkey;
       public         postgres    false    224            �           2606    35069    items items_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.items DROP CONSTRAINT items_pkey;
       public         postgres    false    244            Y           2606    34776    menu_items menu_items_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_pkey;
       public         postgres    false    208            U           2606    34764    menus menus_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_name_unique;
       public         postgres    false    206            W           2606    34762    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public         postgres    false    206            D           2606    34687    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public         postgres    false    197            |           2606    34951    pensum pensum_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.pensum
    ADD CONSTRAINT pensum_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.pensum DROP CONSTRAINT pensum_pkey;
       public         postgres    false    230            g           2606    34829 $   permission_role permission_role_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_pkey PRIMARY KEY (permission_id, role_id);
 N   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_pkey;
       public         postgres    false    215    215            d           2606    34813    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public         postgres    false    214            r           2606    34892    post_tag post_tag_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.post_tag
    ADD CONSTRAINT post_tag_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.post_tag DROP CONSTRAINT post_tag_pkey;
       public         postgres    false    220            �           2606    35003 (   precio_documentos precio_documentos_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.precio_documentos
    ADD CONSTRAINT precio_documentos_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.precio_documentos DROP CONSTRAINT precio_documentos_pkey;
       public         postgres    false    236            �           2606    35021 &   precio_programas precio_programas_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.precio_programas
    ADD CONSTRAINT precio_programas_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.precio_programas DROP CONSTRAINT precio_programas_pkey;
       public         postgres    false    238            [           2606    34791    roles roles_name_unique 
   CONSTRAINT     R   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_name_unique UNIQUE (name);
 A   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_name_unique;
       public         postgres    false    210            ]           2606    34789    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public         postgres    false    210            �           2606    35053    servicios servicios_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public         postgres    false    242            _           2606    34805    settings settings_key_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_key_unique UNIQUE (key);
 F   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_key_unique;
       public         postgres    false    212            a           2606    34803    settings settings_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.settings DROP CONSTRAINT settings_pkey;
       public         postgres    false    212            ~           2606    34959 ,   solicitud_documento solicitud_documento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.solicitud_documento
    ADD CONSTRAINT solicitud_documento_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.solicitud_documento DROP CONSTRAINT solicitud_documento_pkey;
       public         postgres    false    232            �           2606    34980 ,   solicitud_programas solicitud_programas_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.solicitud_programas
    ADD CONSTRAINT solicitud_programas_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.solicitud_programas DROP CONSTRAINT solicitud_programas_pkey;
       public         postgres    false    234            �           2606    35119 4   solicitud_servicio_item solicitud_servicio_item_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.solicitud_servicio_item
    ADD CONSTRAINT solicitud_servicio_item_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.solicitud_servicio_item DROP CONSTRAINT solicitud_servicio_item_pkey;
       public         postgres    false    250            �           2606    35096 ,   solicitud_servicios solicitud_servicios_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_pkey;
       public         postgres    false    248            z           2606    34932    solicitudes solicitudes_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT solicitudes_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT solicitudes_pkey;
       public         postgres    false    228            t           2606    34900    sugerencias sugerencias_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_pkey;
       public         postgres    false    222            �           2606    35042 "   tipo_servicios tipo_servicios_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.tipo_servicios
    ADD CONSTRAINT tipo_servicios_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.tipo_servicios DROP CONSTRAINT tipo_servicios_pkey;
       public         postgres    false    240            j           2606    34852    translations translations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_pkey;
       public         postgres    false    217            l           2606    34854 J   translations translations_table_name_column_name_foreign_key_locale_unique 
   CONSTRAINT     �   ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique UNIQUE (table_name, column_name, foreign_key, locale);
 t   ALTER TABLE ONLY public.translations DROP CONSTRAINT translations_table_name_column_name_foreign_key_locale_unique;
       public         postgres    false    217    217    217    217            n           2606    34882    user_roles user_roles_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_pkey PRIMARY KEY (user_id, role_id);
 D   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_pkey;
       public         postgres    false    218    218            F           2606    34702    users users_cedula_unique 
   CONSTRAINT     V   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cedula_unique UNIQUE (cedula);
 C   ALTER TABLE ONLY public.users DROP CONSTRAINT users_cedula_unique;
       public         postgres    false    199            H           2606    34700    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public         postgres    false    199            J           2606    34698    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public         postgres    false    199            K           1259    34706    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public         postgres    false    200            e           1259    34830 #   permission_role_permission_id_index    INDEX     h   CREATE INDEX permission_role_permission_id_index ON public.permission_role USING btree (permission_id);
 7   DROP INDEX public.permission_role_permission_id_index;
       public         postgres    false    215            h           1259    34831    permission_role_role_id_index    INDEX     \   CREATE INDEX permission_role_role_id_index ON public.permission_role USING btree (role_id);
 1   DROP INDEX public.permission_role_role_id_index;
       public         postgres    false    215            b           1259    34814    permissions_key_index    INDEX     L   CREATE INDEX permissions_key_index ON public.permissions USING btree (key);
 )   DROP INDEX public.permissions_key_index;
       public         postgres    false    214            o           1259    34884    user_roles_role_id_index    INDEX     R   CREATE INDEX user_roles_role_id_index ON public.user_roles USING btree (role_id);
 ,   DROP INDEX public.user_roles_role_id_index;
       public         postgres    false    218            p           1259    34883    user_roles_user_id_index    INDEX     R   CREATE INDEX user_roles_user_id_index ON public.user_roles USING btree (user_id);
 ,   DROP INDEX public.user_roles_user_id_index;
       public         postgres    false    218            �           2606    34750 (   data_rows data_rows_data_type_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.data_rows
    ADD CONSTRAINT data_rows_data_type_id_foreign FOREIGN KEY (data_type_id) REFERENCES public.data_types(id) ON UPDATE CASCADE ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.data_rows DROP CONSTRAINT data_rows_data_type_id_foreign;
       public       postgres    false    2895    204    202            �           2606    35070    items items_servicio_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.items
    ADD CONSTRAINT items_servicio_id_foreign FOREIGN KEY (servicio_id) REFERENCES public.servicios(id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public.items DROP CONSTRAINT items_servicio_id_foreign;
       public       postgres    false    242    2952    244            �           2606    34777 %   menu_items menu_items_menu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu_items
    ADD CONSTRAINT menu_items_menu_id_foreign FOREIGN KEY (menu_id) REFERENCES public.menus(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.menu_items DROP CONSTRAINT menu_items_menu_id_foreign;
       public       postgres    false    2903    208    206            �           2606    34818 5   permission_role permission_role_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_permission_id_foreign;
       public       postgres    false    215    2916    214            �           2606    34823 /   permission_role permission_role_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.permission_role
    ADD CONSTRAINT permission_role_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.permission_role DROP CONSTRAINT permission_role_role_id_foreign;
       public       postgres    false    210    2909    215            �           2606    35004 6   precio_documentos precio_documentos_carrera_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio_documentos
    ADD CONSTRAINT precio_documentos_carrera_id_foreign FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.precio_documentos DROP CONSTRAINT precio_documentos_carrera_id_foreign;
       public       postgres    false    226    236    2936            �           2606    35009 8   precio_documentos precio_documentos_documento_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio_documentos
    ADD CONSTRAINT precio_documentos_documento_id_foreign FOREIGN KEY (documento_id) REFERENCES public.documentos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 b   ALTER TABLE ONLY public.precio_documentos DROP CONSTRAINT precio_documentos_documento_id_foreign;
       public       postgres    false    2934    236    224            �           2606    35022 4   precio_programas precio_programas_carrera_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio_programas
    ADD CONSTRAINT precio_programas_carrera_id_foreign FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ^   ALTER TABLE ONLY public.precio_programas DROP CONSTRAINT precio_programas_carrera_id_foreign;
       public       postgres    false    226    238    2936            �           2606    35027 3   precio_programas precio_programas_pensum_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.precio_programas
    ADD CONSTRAINT precio_programas_pensum_id_foreign FOREIGN KEY (pensum_id) REFERENCES public.pensum(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.precio_programas DROP CONSTRAINT precio_programas_pensum_id_foreign;
       public       postgres    false    230    238    2940            �           2606    35054 ,   servicios servicios_tipo_servicio_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_tipo_servicio_id_foreign FOREIGN KEY (tipo_servicio_id) REFERENCES public.tipo_servicios(id) ON UPDATE CASCADE ON DELETE CASCADE;
 V   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_tipo_servicio_id_foreign;
       public       postgres    false    240    242    2950            �           2606    34965 <   solicitud_documento solicitud_documento_documento_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_documento
    ADD CONSTRAINT solicitud_documento_documento_id_foreign FOREIGN KEY (documento_id) REFERENCES public.documentos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.solicitud_documento DROP CONSTRAINT solicitud_documento_documento_id_foreign;
       public       postgres    false    232    224    2934            �           2606    34960 <   solicitud_documento solicitud_documento_solicitud_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_documento
    ADD CONSTRAINT solicitud_documento_solicitud_id_foreign FOREIGN KEY (solicitud_id) REFERENCES public.solicitudes(id) ON UPDATE CASCADE ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.solicitud_documento DROP CONSTRAINT solicitud_documento_solicitud_id_foreign;
       public       postgres    false    232    2938    228            �           2606    34986 :   solicitud_programas solicitud_programas_carrera_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_programas
    ADD CONSTRAINT solicitud_programas_carrera_id_foreign FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;
 d   ALTER TABLE ONLY public.solicitud_programas DROP CONSTRAINT solicitud_programas_carrera_id_foreign;
       public       postgres    false    2936    234    226            �           2606    34991 9   solicitud_programas solicitud_programas_pensum_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_programas
    ADD CONSTRAINT solicitud_programas_pensum_id_foreign FOREIGN KEY (pensum_id) REFERENCES public.pensum(id) ON UPDATE CASCADE ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.solicitud_programas DROP CONSTRAINT solicitud_programas_pensum_id_foreign;
       public       postgres    false    234    230    2940            �           2606    34981 7   solicitud_programas solicitud_programas_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_programas
    ADD CONSTRAINT solicitud_programas_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.solicitud_programas DROP CONSTRAINT solicitud_programas_user_id_foreign;
       public       postgres    false    234    199    2890            �           2606    35125 ?   solicitud_servicio_item solicitud_servicio_item_item_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_servicio_item
    ADD CONSTRAINT solicitud_servicio_item_item_id_foreign FOREIGN KEY (item_id) REFERENCES public.items(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.solicitud_servicio_item DROP CONSTRAINT solicitud_servicio_item_item_id_foreign;
       public       postgres    false    2954    244    250            �           2606    35120 M   solicitud_servicio_item solicitud_servicio_item_solicitud_servicio_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_servicio_item
    ADD CONSTRAINT solicitud_servicio_item_solicitud_servicio_id_foreign FOREIGN KEY (solicitud_servicio_id) REFERENCES public.solicitud_servicios(id) ON UPDATE CASCADE ON DELETE CASCADE;
 w   ALTER TABLE ONLY public.solicitud_servicio_item DROP CONSTRAINT solicitud_servicio_item_solicitud_servicio_id_foreign;
       public       postgres    false    250    248    2958            �           2606    35102 ?   solicitud_servicios solicitud_servicios_departamento_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_departamento_id_foreign FOREIGN KEY (departamento_id) REFERENCES public.departamentos(id) ON UPDATE CASCADE ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_departamento_id_foreign;
       public       postgres    false    248    2956    246            �           2606    35107 ;   solicitud_servicios solicitud_servicios_servicio_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_servicio_id_foreign FOREIGN KEY (servicio_id) REFERENCES public.servicios(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_servicio_id_foreign;
       public       postgres    false    242    2952    248            �           2606    35097 7   solicitud_servicios solicitud_servicios_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitud_servicios
    ADD CONSTRAINT solicitud_servicios_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.solicitud_servicios DROP CONSTRAINT solicitud_servicios_user_id_foreign;
       public       postgres    false    248    2890    199            �           2606    34939 *   solicitudes solicitudes_carrera_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT solicitudes_carrera_id_foreign FOREIGN KEY (carrera_id) REFERENCES public.carreras(id) ON UPDATE CASCADE ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT solicitudes_carrera_id_foreign;
       public       postgres    false    226    228    2936            �           2606    34934 '   solicitudes solicitudes_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.solicitudes
    ADD CONSTRAINT solicitudes_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.solicitudes DROP CONSTRAINT solicitudes_user_id_foreign;
       public       postgres    false    199    228    2890            �           2606    34901 '   sugerencias sugerencias_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.sugerencias
    ADD CONSTRAINT sugerencias_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.sugerencias DROP CONSTRAINT sugerencias_user_id_foreign;
       public       postgres    false    222    199    2890            �           2606    34876 %   user_roles user_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_role_id_foreign;
       public       postgres    false    210    2909    218            �           2606    34871 %   user_roles user_roles_user_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_roles
    ADD CONSTRAINT user_roles_user_id_foreign FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.user_roles DROP CONSTRAINT user_roles_user_id_foreign;
       public       postgres    false    218    2890    199            �           2606    34863    users users_role_id_foreign    FK CONSTRAINT     z   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id);
 E   ALTER TABLE ONLY public.users DROP CONSTRAINT users_role_id_foreign;
       public       postgres    false    210    199    2909            B   �   x����
�0D��W�T�4��K�� ��˒���n I��z�ࡽ̛yV��$aJ���#�	T��Ce��4`}�|���L;u9s�\9�0�n�������0��QV#�:q 	�eNg�>ؤ��H���l �7����o[�aD      ,   �  x��TMo�0=��"�y,;߷��k1t�N%VR��eXJ7c�e����2`��$���#�U@y2;YÇ�px��w�1%D)�/�{�k��E�3�H#���w1�2���}�u�;���ɾ�~�3���� -��Q���}W�l��a�x�s��k)�,rA����S�u,N��ˠ�4��NU��%#i0i�K"�'�Eʈ�����֗�
���Imˣ�6���y-��ʖ�AU0H��q��~0c�ٚm��o���64��mx�Bh��bG�5C\ț*������);L�
*=ʆ�6�b��*���h�p�\�'����m�������+�F����u���-I��'���3ӌ�ӏ��0z9����^�nq>Ƹo0�W�<,���+
�(�L~�ώ\�g���,�dlg��@�k2h�!���=�"_@6�yI�Q�+]�9M�u������X��I���gv�}����V�}��� YO��      *   �   x���1�0��_��$i����"�No�$�6��
���g@;�����)�v���d��x<�.�FZحֈ���X�����y�AK��d���L�B�¨�����M�v6U�+����@�e$�u�;�'Nq��SX=Fs肷���d����21��Fq.���=pc      V   [  x�Ւ;NA���)|�$�c�D$ HHii�'��3ެg"8N@��bxC$���M�Z�������#��$��'ذ&
���H�8�X�!�/�4��/�H��[G�X��Fkv����8��V��0zNl�nԢ�!+���=����.cx��Vx�4�&���d>�,`Z.g�\�+f=.X�q��Į���瑘�k� Q"�:�]������l'�K�!��(U����1�$�^����%LH�P���W@Bd�?ȼ�l^��{t�~�.�b�۟�s��4�o?��β�iٳ(ܷ'e'�F��殇k��Zc�;t��k#>��S^�M�����m\�7tױ�      @   �   x��̿
�0��9y�{�J�^;ZEpu9zA�D����58d���g�݇\w�=f�g�3⿧�Zbȅ�*��ex���|�V�F9U���Z����Y(�.1Q�~ej�kdڄ�qΥ��n�y�Z �T�      T   "  x����n�0 �s�~ ��o�zA����"@��L�j��S�p��8�x�}1ư��f`rJ���|{l'O����K�*����O�4Fh�:�Px��Q�Jw���(�<�{!z��y4b�֍�!xt�Ij(P���&�ݣGzE-��s8'�သ>��Z���6�W�
H�,�.�r�-E^]�eUM=K�Y� ��X���+	FoD���oO�_��U�q���;o�c�[�vԟ9�M4B�\�&ٝ���fl��q��^���#� xö��B��x��d�@u\��9	��rb=-�T˩gi^��6�A��CU���>��UÿL�>�����2)�橆�6K���9���B,���&�[Ԟ�dC��ji�!mi��=[�܆�7�"#�͗d���2�J]IE�:�ѹ�f�)	S�X�g��Ӏ�:�q��#���g�r�u�������ޛ6;�|���f���n�gp���yM��9�RWf��:>,�/�e��#n%^[�9d9�︶�/�r�M���t���/PP��      0   7  x����j�0��x����͞��`'�A��	#m���$qlw��g1RfA^���%#�6D{A$E�C��}�rd҇P�|�>E!��0��t��U���h2���ךo�
^�dL�
^�"�l�j;^S��210�I5fΐ��2�l�i;&f'J�0�8�,2]x�m〤��	Q:�6a�d�V���ҜC�,�/)�� \��$px�a��� w�ji�'��
�un�Y]�@��(�3Q�nl�a�OŮ�����a��-�j��W̬�~�^�ּ>:3�>��f2[�.@�'G+ �2�r2��4Bx��2�-(      .   +   x�3�LL����420��50�50U04�22�21�&����� 4�
n      %   o  x�u���� ��^����{لp��U1�=���@��m�ƴ����;��V�%TPV�#{�U�r��y��������Ey�c� ��:d�E����Q� o���ڥ����I�ߨ��
J���sl����NBø`O���u����@�2��c��,�����Y�nZ���`�|�B��xo켫���V�u�fG���XK���.]H6R]�Fz3$"�D���v;�R�`Ƙ���	`�8A��,.85�Q�� X�3ˤ�m��YM�X�1�3s�b�oA�κ,��s #F��}3v��
�֯���)�zc��.;�����T�l�F��,�]��%B/���ic\fF�&$-{�ӛ����H��+x�SL��F���@�>�B�B^
����3V��zS㚇�`b�pŚbŭ������]�W�z�*
YOO5��<�_i��-��&Ǹ�� X����9����.�O!8�o}�֡4'M��ƳS1����<�u��n�ƃ��%tn ���u�}�g�NME+2��"6"h�{c߹Ű��Lq�ޤb���F���t���2?#<��'5˯��~��E��5�E���7g����ojj�K�>s�̝���r��n�Q�      (      x������ � �      F   =   x�3�H�+.�Up�+�L/��420��50�50U04�22�21�&�e��W�ZF��=... �i>      7   @   x���� �b�Gֿ���%�X����,W��S�¦P��b�5���G<��x�#�:3?��|      6   �   x���[
�0���*�@�IS_�pI͠E�H'��}��?
��g(�3!�K%Խ{�m��=�\n����r!�N�.�	eݣ�Sd�5�Ԇp
��h3E�Q]{3DS��{kw's,^�;!��땞E�`,�R���+z�k��Y��a��*�ŲEH�e�'.-c\,��u'�	���n��P.���P���ҩ]��7݉ }��1tlƆ�i36���X�Z7cG��ٹ˟��י��B�'�O�y      <      x������ � �      L   �   x����� @ѳ����Ƙ�Y���s��|E�$���D�dt�������~�_��A��Ϡ�<f��)P����d��B׷�Z�}@E!�[�W��L>�`���UkB�S�wH�C����3PQ�
ɭvɭL>eByH@����3&�L��	x����b�3�k��y�־�]n      N   ^   x�����0Cѳ3�iҖ���s@�D{���%��p��H���F���?7�7 �:-|$�ԦE�,4
|QTĢh(������cv9w� ��G|      2   �   x���1�0Eg�\�
BhU�J�Wb�b%� ����$�,���������ͼ�m�������eՔU[ԦӦ3��Ni�_�q�C������;���:�B�=�I��[p,d�����Hg�����_�S|�9*��'��Q�ŢL��
�g�i�a�G��I)���{�      R   }   x�3�4�t�IM.)�L�LILA�Z���*�X�X��`�2���V���Z��������#� cN#Nϼ����⒢��ҢDt��r:�d&���+��*�����]�XSc���� h�P�      4   '  x�}�OO�0����.�:��P�r��Ҕ5!�Hc�d�}{�8� n��{�Ϋ��A�A#�c,���,�����*f��{�߃FK��9��aNَcz�J�9A5A
Q�斛}н_��7m�Zv���<��ChV,��n���-7Q��,�'�F^9�YMj�XP\f�C"
�	�t�p����i<�:��Y�	!۔�m%<h���I�Z���4� i�u�b��x�-=�s$�&��G���MlL~]gMu�E��6��]���l�H�'�o7ȝ8g��^ʢ(� �D�7      H   �   x����1Ϧ
7�`�kjI�u�i�������F`*4#�ہZI\�˙e�Qo;@��� R8�� �L��hY���,6�Ñ�z ��#p��b����,�1o�\)��\F�AT�]��жĺ��� �S(i+      J   A  x����n� �3y
^��6�I���Γ&CH�)U���#[��դ�`	|���&A��2((��U�5(��wQG����a���,�,�<��>�����Oi�Ȓ}؏��4�ģ�h�$
d����$� L]��[�Cw��`|�^��r�mW ���S~�7ʙ��]���%/,�>�)���̓,���O�M��Z��\c��0��V�	��)J��+#����u��;MQ*��rb:Oq�ݾgq��-�`�^��ɔk��ߎO��j[�K;�v�o0��S�����EX���a���4���]UU_i뫐      Z   v   x�����0Cky
��'&�C0�ρS)ȝ+Y�dY P�0���l+�"���H�4��0(�>"�"%���H�҉�S�yLf��E���##�*z�	�H�� -���/���H�k#�RPH      X   .  x����N� �5}
^�	�KW��ps8PC��I�1�����cM4Xp �?��$�U�3-�aB���L�d�41�H�mLP�\�Tr�f2�e��T��4�ܽLP��y"����b�Q�{azc5�z�;E0ڢ���xϳc�`Rr.K��5d�q���<�u�e����Ҧ�	1�kϓ̀��h-0��1z��އ�r��(��׼n���u/��\7y�o��A*����� 㡗�P3���KP!d����g�#m�� ��i�4*P�ĥ,�f�kI���x��0�}&�q�d��z�=���{�~�@      D     x���=N1��>E.����]AA������F������lB���D�)f��ց�w4�:��\��]ERMР!�+��r�N�0���m�e�[������D ����1�=$��yYg���:�`������V�.ޱ��E(��*<=q3'�-1ʙp=VYB��A2�LɊ���4��K��+��r�c,��<-w��鯙%���a�{�XKp��&_��͑c�ϑ��S�� �\�Z6=ԉO�1]Z��;P�$�Yo�F�
.~�u�M�h����O}�       >   �   x�u�K�0��)|P�8��,lj%�H����eC������ЧG �p{2�d<�����n4.o�.q����+<�oDE�)�ڶ��maw�&vjD]]b(��v#Q[��%���^dX}��1Q�s�hN]� ;۫��İ����i�.f��uǴ�a�o�C���o�}��匈o�`�      P   �   x���1n�0Eg�� I`���,�ܠc�f���R��It�Љ�����C��oN��6K��ʵʂEW�l[EЕ����#�E��%����=�7���V��q���f��~Iq�u����T�g�V>4C׿���}��~<�q����Cs� ��T �( j.p�/Qv�f8��e���r�q��ZS!�}��[�;�s&�B�̹�ݯ1@C�?��ж�F8}      9      x������ � �      :   0   x�ȱ  ���2�O@Awq�9��/b2\N(XZlmRI�8�og�y����      '   �  x���ɒ�8��ʧ *���Il>��8��3�"@��l�mbj�a^l��j�Y]]>I����$���9��J蓬,*?�]��8#I�	�|��ϒ��=�9�~��^��U��fF^��I�4�M����f}�I�{iqi2TE	L�J(�����MD"�EFX�*��P��?E���
��q)?�i]$������iҺS�1��_��"$)���D�O�~����d��ݪ���?4"��u��K��w��p��x�ev`���K�)�I.�	�袪��%q;���ܸ'��~V5 *��B�y�{`��.c�WX�E�iM�J�oai`��-�S�5���1��O�;�1-�v75��֣ �Ǣov�4тhsķ��Y��6M8z�Uv��x���c��0A���_��.��#���#�a���,2z$ʒ����Lb]�F�2d�R�[L���w�s��2�`�X���g�X���*�:�@�!���=���w�<6�
DX���_�W˼>�3w}�w����"�qݱ��Q��X��NI�L.�a<����u��A,�B�����+�]Y�J�9�1���&�aD�<,r@����c��c�L�-�ct>�Eq۹#cm�`��6f2/o�����H;��}hĹ�� 0,�|��0F�vX�yͨ�ݧ��&�BD�^1>��M0R¿�[QJ�.j`p���f�z�O��-��Z��ޥwJ�,s��>D�T\�A��W�d�f�PO��C�!ؕqWV�<4�V���4o;��Fú`������UR(d�z�2Q1�k���(��&
�N"6�}��s�]����L&P�xi�t��J��
��x��^�:@
T�ݍ�.���{��F�M'�`���~RK�5kᮗ�����3�/2߱�?z�}O�b���!Fn� `2�܉0iB�������YGŦ�|��ḈG�
��%��(f��ٌ�(t��<�j�#�� �XF������R޺gm�n�A�C�&Gq��~}�F��P��qn��}n5�7D��G����r}�z�RI�id�����V�w���m>/�h�
aY�hU��!�5aI��c�,! ����l��U�V�$���P{v�#�13��l�������YK��3��A��P��F���'��4�W��1S$�g�$=2aY��`|0����8c�[�..#���s�j��Yi[�c�g�U��Vks��߱$wy���[Q���I�O��m�{*��x}8��lPU��F��^�B���Yk~gYm=�7b�G�/[y<��V2j.���P�E�.DpHM��e���ӱ�Lg67�؜pWw5~��auh����T�X�A�UX������5�f��/4��5�3G~�|xPZ*�����o���	偻���$*�	u~�0{V�k���� Gss߿I�*.��$�0!�t�;̱Zgס�f��z�;�/ (�
Ҥ����UL��`�㺃��8��g3���!p��fz�wq��Ľ��~���EG���v��|2y��~0ޕ�#D�����U�^H^�꼼�����H     