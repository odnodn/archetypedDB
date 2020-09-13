insert into comorbidities (id, name, icd_code, abbreviation, name_pt, abbreviation_pt, synonyms, "createdAt", "updatedAt")
values

       (default, 'Diabetes mellitus', 'E10', 'DM', 'Diabetes mellitus', 'DM', array['Diabetes', 'Diabetes mellitus'], now(), now()),
       (default, 'Chronic obstructive pulmonary disease, unspecified', 'J44', 'COPD', 'Doença Pulmonar Obstrutiva Crônica', 'DPOC', array['DPOC', 'Pulmonar'], now(), now()),
       (default, 'Cardiovascular disease, unspecified', 'I51.6', 'CVD', 'Doenças Cardiovasculares', 'CVC', array['Cardiacas', 'Cardiovasculares', 'Coracao'], now(), now()),
       (default, 'Diseases of liver', 'K70', null, 'Doenças do Fígado', null, array['Figado', 'Hepaticas'], now(), now()),
       (default, 'Malignant Neoplasms', 'C00', null, 'Malignidade',  null, array['Tumores Malignos'], now(), now()),
       (default, 'Disorder of kidney and ureter, unspecified', 'N28.9', null, 'Doenças Renais', null, array['Renais', 'Rins'], now(), now()),
       (default, 'Obesity', 'E66', null, 'Obesidade', null, array['Obesidade', 'Sobrepeso'], now(), now()),
       (default, 'Essential (primary) hypertension', 'I10', 'HTN', 'Hipertensão', 'HAS', array['Hipertensao'], now(), now()),
       (default, 'Essential (primary) hypertension', 'I10', 'HTN', 'Hipertensão', 'HAS', array['Hipertensao'], now(), now());