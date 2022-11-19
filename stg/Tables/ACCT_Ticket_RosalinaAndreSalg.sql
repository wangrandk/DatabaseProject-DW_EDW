CREATE TABLE [stg].[ACCT_Ticket_RosalinaAndreSalg] (
    [Periodekort_Id]      INT          NULL,
    [Periodekort_Nr]      INT          NULL,
    [Periodekort_Blanket] VARCHAR (11) NULL,
    [PeriodekortType_Tag] VARCHAR (20) NULL,
    [Stamkort_Blanket]    VARCHAR (11) NULL,
    [Stamkort_Nr]         INT          NULL,
    [Periode_Fra]         DATETIME     NULL,
    [Periode_Til]         DATETIME     NULL,
    [Zoneantal]           INT          NULL,
    [Zoner]               VARCHAR (30) NULL,
    [Kortsalg_Nr]         VARCHAR (8)  NULL,
    [Solgt_Datotid]       DATETIME     NULL,
    [Solgt_Sekvens]       INT          NULL,
    [Solgt_Bruger]        VARCHAR (8)  NULL,
    [Regnskab_Sekvens]    INT          NULL,
    [Pris]                MONEY        NULL,
    [Retur_Transaktion]   INT          NULL,
    [Kommission_Datotid]  DATETIME     NULL,
    [Oprettet_Datotid]    DATETIME     NULL,
    [Rabat]               MONEY        NULL,
    [FraFinanskonto]      INT          NULL,
    [FraSektionsNr]       INT          NULL,
    [FraProjektNr]        INT          NULL,
    [TilFinanskonto]      INT          NULL,
    [TilSektionsNr]       INT          NULL,
    [TilProjektNr]        INT          NULL,
    [Kunde_Id]            INT          NULL,
    [Foedselsdato]        DATETIME     NULL,
    [CPR]                 INT          NULL,
    [SalgsType]           VARCHAR (11) NULL,
    [Id]                  INT          NULL
);


GO

