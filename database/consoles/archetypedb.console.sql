create database archetypedb


CREATE TABLE "nonstandardComorbidities"
(
    id              serial  not null
        constraint "nonstandardComorbidities_pkey"
            primary key,
    description            varchar not null,
    "createdAt" timestamp,
    "updatedAt" timestamp
);

alter table "nonstandardComorbidities" add column "createdAt" timestamp
alter table "nonstandardComorbidities" add column "updatedAt" timestamp


INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('ASMA HIPERTENSAO TABAGISMO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETESDOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS OBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES GESTACAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES OBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETES SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DIABETICO DPOC TABAGISTA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA CARDIOVASCULAR INCLUINDO HIPERTENSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA CARDIOVASCULAR INCLUINDO HIPERTENSAO  DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA CARDIOVASCULAR INCLUINDO HIPERTENSAO  DIABETES  DOENCA PULMONAR CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCA PULMONAR CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICASDIABETESDOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS GESTANTE DE ALTO RISCO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS OBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCA HEPATICA CRONICA DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCA HEPATICA CRONICA DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RESPIRATORIAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RESPIRATORIAS CRONICAS IMUNOSSUPRESSAO DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES GESTACAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES IMUNOSSUPRESSAO DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DIABETES SOBREPESOOBESIDADE DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO PORTADOR DE DOENCAS CROMOSSOMICAS SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS GESTACAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES GESTACAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES IMUNOSSUPRESSAO DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE DOENCAS RENAIS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCAS CARDIACAS OU VASCULARES DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS DOENCAS RESPIRATORIAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS CARDIACAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) GESTANTE DE ALTO RISCO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS GESTACAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADASDIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DIABETES IMUNOSSUPRESSAO PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS CARDIACAS CRONICAS IMUNOSSUPRESSAO GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DOENCAS CARDIACAS CRONICAS OBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DIABETES IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS GESTANTE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS GESTANTE DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DIABETES IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS CARDIACAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5) DIABETES IMUNOSSUPRESSAO GESTANTE DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES DOENCAS RENAIS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS CARDIACAS OU VASCULARES DIABETES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS CARDIACAS OU VASCULARES DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS CARDIACAS OU VASCULARES SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS DOENCAS RENAIS CRONICAS IMUNOSSUPRESSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('DOENCAS RESPIRATORIAS CRONICAS SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('FATORES DE RISCOdescription DIABETES MELLITUS HAS DOENCA CARDIOVASCULAR CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTACAO DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTACAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTACAO SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTANTE DE ALTO RISCO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTANTE DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTANTE DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('GESTANTE DOENCAS CARDIACAS CRONICAS DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('HASSOBREPESO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('HIPERTENSAO', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('HIPERTENSAO DIABETES EXTABAGISTA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('HIPERTENSAO DIABETES MELLITUS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DIABETES DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DIABETES DOENCAS CARDIACAS CRONICAS PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS CARDIACAS OU VASCULARES DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('IMUNOSSUPRESSAO SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('OBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('OBESIDADE DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('OBESIDADE DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('OBESIDADE DOENCAS RESPIRATORIAS CRONICAS DESCOMPENSADAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS DOENCAS RENAIS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA DOENCAS RENAIS CRONICAS EM ESTAGIO AVANCADO (GRAUS 3 4 OU 5)', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS OU ESTADO DE FRAGILIDADE IMUNOLOGICA IMUNOSSUPRESSAO DOENCAS CARDIACAS CRONICAS', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('PORTADOR DE DOENCAS CROMOSSOMICAS SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE DIABETES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE DOENCA HEPATICA CRONICA DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE DOENCAS CARDIACAS OU VASCULARES', now(), now());
INSERT INTO "nonstandardComorbidities"(description, "createdAt", "updatedAt") VALUES ('SOBREPESOOBESIDADE DOENCAS RESPIRATORIAS CRONICAS', now(), now());


insert into comorbidities (id, icd_name, icd_code, abbreviation, name_pt, abbreviation_pt, synonyms, "createdAt", "updatedAt")
values

       (default, 'Diabetes mellitus', 'E10', 'DM', 'Diabetes mellitus', 'DM', array['Diabetes', 'Diabetes mellitus'], now(), now()),
       (default, 'Essential (primary) hypertension', 'I10', 'HTN', 'Hipertensão', 'HAS', array['Hipertensao'], now(), now()),
       (default, 'Chronic obstructive pulmonary disease, unspecified', 'J44', 'COPD', 'Doença Pulmonar Obstrutiva Crônica', 'DPOC', array['DPOC', 'Pulmonar'], now(), now()),
       (default, 'Cardiovascular disease, unspecified', 'I51.6', 'CVD', 'Doenças Cardiovasculares', 'CVC', array['Cardiacas', 'Cardiovasculares', 'Coracao'], now(), now()),
       (default, 'Diseases of liver', 'K70', null, 'Doenças do Fígado', null, array['Figado', 'Hepaticas'], now(), now()),
       (default, 'Malignant Neoplasms', 'C00', null, 'Malignidade',  null, array['Tumores Malignos'], now(), now()),
       (default, 'Disorder of kidney and ureter, unspecified', 'N28.9', null, 'Doenças Renais', null, array['Renais', 'Rins'], now(), now()),
       (default, 'Obesity', 'E66', null, 'Obesidade', null, array['Obesidade', 'Sobrepeso'], now(), now())




       alter table comorbidities rename column name to icd_name


select
       dic.id,
       CASE
           WHEN di.classe = 'DESCARTADO' or di.classe = 'NEGATIVO' THEN 0
           WHEN di.classe = 'CONFIRMADO' THEN 1 END AS result,
       CASE
           WHEN c.id = 1 THEN 'diabetes'
           WHEN c.id = 2 THEN 'hypertension'
           WHEN c.id = 3 THEN 'copd'
           WHEN c.id = 4 THEN 'cardiovascular_disease'
           WHEN c.id = 5 THEN 'liver_disease'
           WHEN c.id = 6 THEN 'malignancy'
           WHEN c.id = 7 THEN 'kidney_disease'
           WHEN c.id = 8 THEN 'obesity'
           END AS result
from "dataItemComorbidities" dic
         join data_items di on dic."dataItemId" = di.id
         join comorbidities c on dic."comorbidityId" = c.id
where classe != 'NULL'
  and classe is not null and classe != 'EM INVESTIGACAO';




select
       c.id,
       CASE
           WHEN di.classe = 'DESCARTADO' or di.classe = 'NEGATIVO' THEN 0
           WHEN di.classe = 'CONFIRMADO' THEN 1 END AS result
from "dataItemComorbidities" dic
         join data_items di on dic."dataItemId" = di.id
         join comorbidities c on dic."comorbidityId" = c.id
where classe != 'NULL'
  and classe is not null and classe != 'EM INVESTIGACAO';

select classe from data_items where id = 28


select count(dic.id)
from "dataItemComorbidities" dic
         join comorbidities c on dic."comorbidityId" = c.id
join data_items di on dic."dataItemId" = di.id
where c.id = 8 and classe != 'NULL'
  and classe is not null and classe != 'EM INVESTIGACAO';


