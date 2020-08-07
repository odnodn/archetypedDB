insert into comorbidades values(
    default, 'Hypertension',  'I10', 'SAH', 'Hipertensão', 'HAS'
    default, 'Diabetes mellitus', 'E10', 'DM', 'Diabetes mellitus', 'DM'
    default, 'Chronic Obstructive Pulmonary Disease', 'COPD', 'J44', 'Doença Pulmonar Obstrutiva Crônica', 'DPOC', 
    default, 'Cardiovascular disease, unspecified', 'CVD', 'I51.6', 'Doenças Cardiovasculares', 'CVC',
    default, 'Diseases of liver', null, 'K70', 'Doenças do Fígado', null,
    default, 'Malignant Neoplasms', null, 'C00', 'Malignidade',  null,
    default, 'Asthma', null, 'J45', 'Asma', null,
    default, 'Other disorders of kidney and ureter', null, 'N25', 'Doenças Renais', null,
    default, 'Human immunodeficiency virus [HIV] disease', 'HIV', 'B20', 'Vírus da Himunodeficiência Humana', 'HIV'  ,
    default, 'Obesity', null, 'E66', 'Obesidade', null
)

alter table comorbidades add column name_pt varchar not null 
alter table comorbidades add column sigla_pt varchar not null 