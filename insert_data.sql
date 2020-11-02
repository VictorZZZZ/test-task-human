
-- Table: public.human

-- DROP TABLE public.human;

CREATE TABLE public.human
(
    id integer NOT NULL DEFAULT nextval('human_id_seq'::regclass),
    first_name character varying(255) COLLATE pg_catalog."default",
    second_name character varying(255) COLLATE pg_catalog."default",
    third_name character varying(255) COLLATE pg_catalog."default",
    CONSTRAINT human_pkey PRIMARY KEY (id)
)

    TABLESPACE pg_default;

ALTER TABLE public.human
    OWNER to postgres;

INSERT INTO human (first_name,second_name,third_name) VALUES ('Doyle','Vernon','Imogene'),('Hooper','Carter','Sopoline'),('Nash','Meredith','Lacota'),('Sawyer','Wayne','Hedy'),('May','Bernard','Quamar'),('Beck','Laith','Iris'),('Hansen','Adele','Calvin'),('Wilson','Wing','Alice'),('Guerra','Yuri','Kamal'),('Bass','Patricia','Xenos'),('Joseph','Castor','Stephen'),('Yang','Ivy','Melinda'),('Robles','Judith','Kato'),('Melton','Avye','Kirk'),('Guerrero','Luke','Indigo'),('Fleming','Hammett','Illana'),('Gates','Elvis','Basil'),('Mason','Stella','Kirk'),('Rosa','Daryl','Xena'),('Guerra','Fitzgerald','Lucius'),('Wolfe','Olivia','Odessa'),('Casey','Morgan','Bruno'),('Hardy','Karen','Anastasia'),('Meadows','Guy','Cruz'),('Bright','Blake','Phillip'),('Cole','Branden','Noelani'),('Donovan','Julian','Hoyt'),('Irwin','Hop','Taylor'),('Oneal','Salvador','Gemma'),('Kidd','Salvador','Heather'),('Wiggins','Charles','Ira'),('Powell','Magee','Candice'),('Noel','Devin','Devin'),('Wynn','Darrel','Neil'),('Munoz','Elizabeth','Valentine'),('Harmon','Aristotle','Odette'),('Craig','Hyacinth','Courtney'),('Lynn','Sylvia','Tad'),('Knox','Hedwig','TaShya'),('Hooper','Aspen','Maya'),('Dixon','Pandora','Reed'),('Mullen','Bradley','Regan'),('Hayes','Noble','Marah'),('Ortiz','Avye','Xenos'),('Floyd','Price','Colleen'),('Parsons','Gwendolyn','Ashton'),('Rowe','Karyn','Kirk'),('Nguyen','Kasper','Alan'),('Duffy','Haley','Xenos'),('Adkins','Baker','Susan'),('Fisher','Amanda','Petra'),('Espinoza','Nissim','Tatum'),('Robles','Angelica','Aquila'),('Jefferson','Zeph','Uriel'),('Melendez','Yoshio','Emma'),('Simmons','Sybil','Ciaran'),('Diaz','Ivory','Garrison'),('Ramos','Ethan','Hedy'),('Frederick','Donovan','Fatima'),('Maxwell','Ashton','Madeson'),('Ryan','Jacqueline','Lester'),('Marquez','Zahir','Stone'),('Solis','Joy','Daniel'),('Freeman','Hilary','Kylie'),('Bond','Stone','Scarlet'),('Tanner','Keegan','Kadeem'),('Munoz','Amery','Idona'),('Guerra','Dean','Tana'),('Washington','George','Zachary'),('Kinney','Gil','Scott'),('Robbins','Dahlia','Amal'),('Preston','Gloria','Jorden'),('Dunn','Xantha','Willow'),('Holden','Chanda','Hedda'),('Smith','Germane','Eagan'),('Mclean','Camille','Yoshio'),('Wolfe','Griffith','Carson'),('Carter','Roary','Lacy'),('Duncan','Blaine','Shea'),('Mendoza','Ray','Gail'),('Knowles','Orson','Fuller'),('Combs','Amena','Stacy'),('Ramsey','Anthony','Arden'),('Weber','Rigel','Ashely'),('Gonzales','Shad','Thor'),('Wilkins','Shea','Audrey'),('Odonnell','Raja','Amethyst'),('Cotton','Hashim','Alexandra'),('Lynch','Carly','Leigh'),('Whitfield','Allen','Astra'),('Barlow','Hadassah','Christopher'),('Macias','Devin','Beau'),('Salas','Autumn','Lisandra'),('Huffman','Sasha','Declan'),('Lester','Amir','Colton'),('Witt','Ifeoma','Alec'),('Curry','Kenyon','Candace'),('Dunlap','Jane','Chaney'),('Mcclure','Flynn','Tanisha'),('Whitney','Nathan','Olivia');
