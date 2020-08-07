insert into comorbidities (id, name, icd_code, abbreviation, name_pt, abbreviation_pt)
values

       (default, 'Diabetes mellitus', 'E10', 'DM', 'Diabetes mellitus', 'DM'),
       (default, 'Chronic obstructive pulmonary disease, unspecified', 'J44', 'COPD', 'Doença Pulmonar Obstrutiva Crônica', 'DPOC'),
       (default, 'Cardiovascular disease, unspecified', 'I51.6', 'CVD', 'Doenças Cardiovasculares', 'CVC'),
       (default, 'Diseases of liver', 'K70', null, 'Doenças do Fígado', null),
       (default, 'Malignant Neoplasms', 'C00', null, 'Malignidade',  null),
       (default, 'Asthma',  'J45', null, 'Asma', null),
       (default, 'Disorder of kidney and ureter, unspecified', 'N28.9', null, 'Doenças Renais', null),
       (default, 'Human immunodeficiency virus [HIV] disease', 'B20', 'HIV', 'Vírus da Himunodeficiência Humana', 'HIV'),
       (default, 'Obesity', 'E66', null, 'Obesidade', null);

alter table comorbidades add column name_pt varchar not null 
alter table comorbidades add column sigla_pt varchar not null 