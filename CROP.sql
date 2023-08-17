CREATE DATABASE PMS;
USE  PMS;
CREATE TABLE PEST_DETAILS
(
 CROP varchar(100),
 PESTICIDE VARCHAR(100),
 PRECAUTION VARCHAR(500)
);
INSERT INTO PEST_DETAILS VALUES ('WHEAT','Mycore Bio Fertilizer','Method of Application:
Broadcasting
Needs to ensure that it reaches the root zone of the crop
Time of application:
4 kg/Acre, for Cereals, Pulses, Oil seed and Vegetable crops. At the time of irrigation, along with fertilizer
8 kg/Acre, for all other horticulture and plantation crops.
Caution: Ensure sufficient moisture in the soil.');
INSERT INTO PEST_DETAILS VALUES ('PADDY','JACK DANIELS','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('MIRCHI','BLENDERS PRIDE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('TOBACC0','100 PIPERS','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('PULSES','MANSION HOUSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('COTTON','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('GROUNDNUT','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('MAIZE','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('JUTE','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('MANGO','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('MILLETS','GREY GOOSE','WEAR A MASK');
INSERT INTO PEST_DETAILS VALUES ('SUNFLOWER','GREY GOOSE','WEAR A MASK');
SELECT * FROM PEST_DETAILS;