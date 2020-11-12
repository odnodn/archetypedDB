CREATE TABLE "nonstandardComorbidities"
(
    id              serial  not null
        constraint "nonstandardComorbidities_pkey"
            primary key,
    description            varchar not null,
    "createdAt" timestamp,
    "updatedAt" timestamp
);