CREATE TABLE [data].[RK_PartOfTrip_2022] (
    [TripRef]                       NVARCHAR (20)   NULL,
    [CardTransactionSequenceNumber] INT             NULL,
    [TransactionID]                 BIGINT          NULL,
    [TransactionType]               INT             NULL,
    [ServiceProviderID]             INT             NULL,
    [ServiceProviderName]           NVARCHAR (50)   NULL,
    [DeviceID]                      INT             NULL,
    [ContractorID]                  INT             NULL,
    [ContractorName]                NVARCHAR (50)   NULL,
    [ModalType]                     INT             NULL,
    [MsgReportDate]                 DATETIME2 (0)   NULL,
    [MediaTypeName]                 NVARCHAR (50)   NULL,
    [BusinessDayDate]               DATE            NULL,
    [TransactionValue]              DECIMAL (10, 2) NULL,
    [ValidationModel]               INT             NULL,
    [ValidationModelCode]           NVARCHAR (2)    NULL,
    [FareSetReferenceNumber]        INT             NULL,
    [FareSetReferenceName]          NVARCHAR (255)  NULL,
    [SiteID]                        INT             NULL,
    [SiteName]                      NVARCHAR (255)  NULL,
    [StopPointID]                   INT             NULL,
    [StopPointName]                 NVARCHAR (255)  NULL,
    [TripID]                        BIGINT          NULL,
    [TripDate]                      DATE            NULL,
    [TripType]                      NVARCHAR (255)  NULL,
    [TripStartTime]                 TIME (0)        NULL,
    [RouteName]                     NVARCHAR (10)   NULL,
    [PartialTripFromStopPointID]    INT             NULL,
    [PartialTripFromStopPointName]  NVARCHAR (255)  NULL,
    [PartialTripToStopPointID]      INT             NULL,
    [PartialTripToStopPointName]    NVARCHAR (255)  NULL,
    [StartSiteID]                   INT             NULL,
    [StartSiteName]                 NVARCHAR (50)   NULL,
    [EndSiteID]                     INT             NULL,
    [EndSiteName]                   NVARCHAR (50)   NULL,
    [Weight]                        DECIMAL (10, 2) NULL,
    [Zones_Share]                   DECIMAL (10, 2) NULL,
    [ZonePrice]                     DECIMAL (10, 2) NULL,
    [ZonePriceBasis]                NVARCHAR (50)   NULL,
    [TripPrice]                     DECIMAL (10, 2) NULL,
    [TripPrice_Share_Arriva]        DECIMAL (10, 2) NULL,
    [TripPrice_Share_First]         DECIMAL (10, 2) NULL,
    [TripPrice_Share_Sydtrafik]     DECIMAL (10, 2) NULL,
    [TripPrice_Share_DSB]           DECIMAL (10, 2) NULL,
    [TripPrice_Share_Movia_S]       DECIMAL (10, 2) NULL,
    [TripPrice_Share_Movia_V]       DECIMAL (10, 2) NULL,
    [TripPrice_Share_Movia_H]       DECIMAL (10, 2) NULL,
    [TripPrice_Share_S_tog]         DECIMAL (10, 2) NULL,
    [TripPrice_Share_NT]            DECIMAL (10, 2) NULL,
    [TripPrice_Share_Metro]         DECIMAL (10, 2) NULL,
    [TripPrice_Share_Midttrafik]    DECIMAL (10, 2) NULL,
    [TripPrice_Share_Fynbus]        DECIMAL (10, 2) NULL,
    [TripPrice_Share_Delocalized]   DECIMAL (10, 2) NULL,
    [TripPrice_Share_NotDivided]    DECIMAL (10, 2) NULL,
    [ProductCode]                   BIGINT          NULL,
    [ProductName]                   NVARCHAR (50)   NULL,
    [Year]                          INT             NULL,
    [Month]                         INT             NULL,
    [Day]                           INT             NULL,
    [PreviousMsgReportDate]         DATETIME2 (0)   NULL,
    [PreviousStopPointID]           INT             NULL,
    [NextMsgReportDate]             DATETIME2 (0)   NULL,
    [NextStopPointID]               INT             NULL,
    [VehicleID]                     INT             NULL,
    [JourneyRef]                    CHAR (18)       NULL,
    [FromJourneyPointRef]           CHAR (22)       NULL,
    [FromJourneyPointMatchType]     TINYINT         NULL,
    [FromJourneyPointMatchDistance] FLOAT (53)      NULL,
    [ToJourneyPointRef]             CHAR (22)       NULL,
    [ToJourneyPointMatchType]       TINYINT         NULL,
    [ToJourneyPointMatchDistance]   FLOAT (53)      NULL
);


GO

CREATE CLUSTERED COLUMNSTORE INDEX [CSIX_RK_PartOfTrip_2022]
    ON [data].[RK_PartOfTrip_2022];


GO
