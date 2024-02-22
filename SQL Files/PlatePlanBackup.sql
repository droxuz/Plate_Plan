PGDMP  
    1                |         	   PlatePlan    16.1    16.1     "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    16399 	   PlatePlan    DATABASE     m   CREATE DATABASE "PlatePlan" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "PlatePlan";
                postgres    false            �            1259    16410    business    TABLE     �   CREATE TABLE public.business (
    email character varying(50) NOT NULL,
    password character varying(50),
    "openFrom" time(6) without time zone,
    "openUntil" time(6) without time zone,
    "reservationSlots" integer
);
    DROP TABLE public.business;
       public         heap    postgres    false            �            1259    16405 	   customers    TABLE     �   CREATE TABLE public.customers (
    email character varying(50) NOT NULL,
    firstname character varying(30),
    lastname character varying(30),
    password character varying(30)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16415    reservations    TABLE       CREATE TABLE public.reservations (
    id character varying(50)[] NOT NULL,
    "customerId" character varying(50)[],
    date date,
    "time" time(6) without time zone,
    "specialNotes" character varying(200),
    "tableId" character varying(50)[],
    "partySize" integer
);
     DROP TABLE public.reservations;
       public         heap    postgres    false            �            1259    16422    servers    TABLE     �   CREATE TABLE public.servers (
    id character varying(50) NOT NULL,
    firstname character varying(30),
    lastname character varying(30)
);
    DROP TABLE public.servers;
       public         heap    postgres    false            �            1259    16425    tables    TABLE     ~   CREATE TABLE public.tables (
    id character varying(50) NOT NULL,
    capacity integer,
    server character varying(30)
);
    DROP TABLE public.tables;
       public         heap    postgres    false                      0    16410    business 
   TABLE DATA           `   COPY public.business (email, password, "openFrom", "openUntil", "reservationSlots") FROM stdin;
    public          postgres    false    216   o                 0    16405 	   customers 
   TABLE DATA           I   COPY public.customers (email, firstname, lastname, password) FROM stdin;
    public          postgres    false    215   �                 0    16415    reservations 
   TABLE DATA           n   COPY public.reservations (id, "customerId", date, "time", "specialNotes", "tableId", "partySize") FROM stdin;
    public          postgres    false    217                    0    16422    servers 
   TABLE DATA           :   COPY public.servers (id, firstname, lastname) FROM stdin;
    public          postgres    false    218                    0    16425    tables 
   TABLE DATA           6   COPY public.tables (id, capacity, server) FROM stdin;
    public          postgres    false    219   �       �           2606    16414    business business_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.business
    ADD CONSTRAINT business_pkey PRIMARY KEY (email);
 @   ALTER TABLE ONLY public.business DROP CONSTRAINT business_pkey;
       public            postgres    false    216            �           2606    16409    customers customers_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (email);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    215            �           2606    16421    reservations reservations_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.reservations
    ADD CONSTRAINT reservations_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.reservations DROP CONSTRAINT reservations_pkey;
       public            postgres    false    217            �           2606    16433    servers servers_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.servers
    ADD CONSTRAINT servers_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.servers DROP CONSTRAINT servers_pkey;
       public            postgres    false    218            �           2606    16429    tables tables_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tables
    ADD CONSTRAINT tables_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tables DROP CONSTRAINT tables_pkey;
       public            postgres    false    219               /   x�K�I+JM��,H,..�/J�44�20 "N#c+SK�Ҁ+F��� "�
�         C   x�������)��������E)\Y�y�@��������\N�����
$y (U��� F��� �!�            x������ � �         V   x��K
�0���aЍ 
�[7-�	Ă�革�I��~�S�!ɋقަ�be�����$u�9ˍ=����d�n��Q���         F   x�+IL�I5�4�4�*1�8M8� LcN3Ncӄӂ��4�44�4������,�,����c���� G�     