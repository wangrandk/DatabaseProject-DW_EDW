CREATE TABLE [stg_dim].[SALE_OperationalSale_Customer] (
    [SourceSystemCode]          NVARCHAR (20)     NOT NULL,
    [SourceSystemEntryRef]      NVARCHAR (250)    NULL,
    [CustomerCode]              NVARCHAR (20)     NOT NULL,
    [CustomerName]              NVARCHAR (250)    NOT NULL,
    [CustomerDisplayName]       NVARCHAR (250)    NULL,
    [CustomerDisplayIndex]      INT               NULL,
    [CustomerAttention]         NVARCHAR (250)    NULL,
    [CustomerAddress1]          NVARCHAR (250)    NULL,
    [CustomerAddress2]          NVARCHAR (250)    NULL,
    [CustomerPostalCode]        NVARCHAR (20)     NULL,
    [CustomerCity]              NVARCHAR (250)    NULL,
    [CustomerCountryCode]       NVARCHAR (20)     NULL,
    [CustomerCountryName]       NVARCHAR (250)    NULL,
    [CustomerPhone]             NVARCHAR (250)    NULL,
    [CustomerEmail]             NVARCHAR (250)    NULL,
    [CustomerGroupCode]         NVARCHAR (20)     NULL,
    [CustomerGroupDisplayIndex] INT               NULL,
    [CustomerLatitude]          DECIMAL (18, 12)  NULL,
    [CustomerLongitude]         DECIMAL (18, 12)  NULL,
    [CustomerGeography]         [sys].[geography] NULL,
    [MunicipalityCode]          NVARCHAR (20)     NULL,
    [MunicipalityName]          NVARCHAR (250)    NULL,
    [MunicipalityDisplayName]   NVARCHAR (250)    NULL,
    [MunicipalityDisplayIndex]  INT               NULL,
    [ValidFromDate]             DATE              NULL,
    [ValidToDate]               DATE              NULL,
    [IsCurrent]                 BIT               NULL
);


GO

