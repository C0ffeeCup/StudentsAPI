PGDMP         $                {            students    15.3    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24768    students    DATABASE     |   CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE students;
                postgres    false            �            1259    24777    Students    TABLE     	  CREATE TABLE public."Students" (
    "Id" bigint NOT NULL,
    "Name" text NOT NULL,
    "Surname" text NOT NULL,
    "Patronymic" text NOT NULL,
    "DateExam" timestamp without time zone NOT NULL,
    "Id_Subject" bigint NOT NULL,
    "Grade" integer NOT NULL
);
    DROP TABLE public."Students";
       public         heap    postgres    false            �            1259    24776    Students_Id_seq    SEQUENCE     �   ALTER TABLE public."Students" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Students_Id_seq"
    START WITH 1000000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    24769    Subjects    TABLE     W   CREATE TABLE public."Subjects" (
    "Id" bigint NOT NULL,
    "Name" text NOT NULL
);
    DROP TABLE public."Subjects";
       public         heap    postgres    false            �            1259    24792    Subjects_Id_seq    SEQUENCE     �   ALTER TABLE public."Subjects" ALTER COLUMN "Id" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."Subjects_Id_seq"
    START WITH 1000000
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    214            �          0    24777    Students 
   TABLE DATA           n   COPY public."Students" ("Id", "Name", "Surname", "Patronymic", "DateExam", "Id_Subject", "Grade") FROM stdin;
    public          postgres    false    216   =       �          0    24769    Subjects 
   TABLE DATA           2   COPY public."Subjects" ("Id", "Name") FROM stdin;
    public          postgres    false    214   Y                  0    0    Students_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Students_Id_seq"', 1000026, true);
          public          postgres    false    215                       0    0    Subjects_Id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."Subjects_Id_seq"', 1000004, true);
          public          postgres    false    217            m           2606    24826    Students Students_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public            postgres    false    216            k           2606    24813    Subjects Subjects_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Subjects"
    ADD CONSTRAINT "Subjects_pkey" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Subjects" DROP CONSTRAINT "Subjects_pkey";
       public            postgres    false    214            n           2606    24814 !   Students Students_Id_Subject_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_Id_Subject_fkey" FOREIGN KEY ("Id_Subject") REFERENCES public."Subjects"("Id") NOT VALID;
 O   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_Id_Subject_fkey";
       public          postgres    false    214    216    3179            �     x���KN�0���*�@*��Y�)��&�#����M�5\��|	�h��e����U���EX��@)xBn�Bp�����'�\-�(cS5N���RW�/���dI���x�,���t(�Aa"x�~��{�N��F��Z4̢qOp�X_4v���ܨ�'�Vl�1Q,������K����� Ԑ�~ȋ_MF�cM�	VT=�p
�M��rH��I��Ҙ?���v��hΜQ���^�/�+�Q`Қ�2���Ԇ�!�z�$�7��/�      �   �   x�uN��0��)<"�8�"4H�(a�0�$6+�ۈ�IC[�ӻ��y:
����m0�߸y8X�%]�p%�J�A
th�eGO�N
�r/jT�q�p�*�C�N���=����D�R���G�?�����A�s�z)e?�W�cj˔^�?���$��+��z����˹     