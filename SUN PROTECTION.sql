/*
Date: 06/03/2024
author: Erman Gao
*/
-- ----------------------------
-- Drop the table before creating the table what we want
-- ----------------------------
DROP TABLE cancer_UVindex;
CREATE TABLE cancer_UVindex (
    Year NUMBER(10) NOT NULL,
    Count_incidence NUMBER(10) NOT NULL,
    Count_mortality NUMBER(10) NOT NULL,
    Avg_UVIndex FLOAT
);
ALTER TABLE cancer_UVindex ADD CONSTRAINT Year_pk PRIMARY KEY ( Year );
-- ----------------------------
-- Records of the table cancer_UVindex with year, count_incidence, count_mortality and avg_UV_index
-- ----------------------------


INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2007, 1141908, 398960, 5.002981132);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2008, 1176692, 406676, 6.275225806);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2009, 1206588, 410152, 6.376909091);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2010, 1240732, 419900, 5.958808864);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2011, 1264552, 424328, 5.894150418);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2012, 1302104, 431268, 6.109180328);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2013, 1317948, 439934, 6.205342466);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2014, 1349388, 442052, 6.024876712);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2015, 1384016, 454028, 6.295808219);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2016, 1422504, 459978, 6.219863388);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2017, 1449900, 466260, 6.111758242);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2018, 1489636, 473368, 5.833671233);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2019, 1524194, 483352, 5.982876712);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2020, 1574480, 488184, 6.220546448);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2021, 1610496, 501964, 6.118328767);
INSERT INTO cancer_UVindex (Year, Count_incidence, Count_mortality, Avg_UVIndex) VALUES (2022, 1648540, 506332, 6.057835616);
