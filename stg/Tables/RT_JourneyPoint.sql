CREATE TABLE [stg].[RT_JourneyPoint] (
    [JourneyPointRef]                     CHAR (22)       NOT NULL,
    [JourneyRef]                          CHAR (18)       NOT NULL,
    [SourceSystemCode]                    NVARCHAR (20)   NOT NULL,
    [SourceSystemEntryRef]                NVARCHAR (22)   NULL,
    [OperatingDayDate]                    DATE            NULL,
    [LineNumber]                          NUMERIC (4)     NULL,
    [LineDirectionCode]                   NCHAR (1)       NULL,
    [JourneyNumber]                       NUMERIC (4)     NULL,
    [SequenceNumber]                      SMALLINT        NULL,
    [JourneyPatternPointGid]              BIGINT          NULL,
    [IsStopPoint]                         BIT             NULL,
    [StopPointId]                         INT             NULL,
    [StopPointOwner]                      INT             NULL,
    [StopPointNumber]                     INT             NULL,
    [StopPointSequenceNumber]             SMALLINT        NULL,
    [IsTimingPoint]                       BIT             NULL,
    [TimingPointSequenceNumber]           SMALLINT        NULL,
    [ArrivalType]                         TINYINT         NULL,
    [DepartureType]                       TINYINT         NULL,
    [PlannedJourneyDistanceMeters]        DECIMAL (10, 2) NULL,
    [PlannedArrivalDateTime]              DATETIME2 (0)   NULL,
    [PlannedDepartureDateTime]            DATETIME2 (0)   NULL,
    [PlannedLineDirectionHeadwaySeconds]  INT             NULL,
    [ObservedJourneyDistanceMeters]       DECIMAL (10, 2) NULL,
    [ObservedArrivalDateTime]             DATETIME2 (0)   NULL,
    [ObservedDepartureDateTime]           DATETIME2 (0)   NULL,
    [ObservedLineDirectionHeadwaySeconds] INT             NULL,
    [ObservedVehicleId]                   NUMERIC (5)     NULL,
    [EstimatedArrivalDateTimeFinal]       DATETIME2 (0)   NULL,
    [EstimatedDepartureDateTimeFinal]     DATETIME2 (0)   NULL,
    [TargetArrivalDateTimeFinal]          DATETIME2 (0)   NULL,
    [TargetDepartureDateTimeFinal]        DATETIME2 (0)   NULL,
    [ArrivalStateFinal]                   TINYINT         NULL,
    [DepartureStateFinal]                 TINYINT         NULL,
    [TotalCheckInCount]                   SMALLINT        NULL,
    [TotalCheckOutCount]                  SMALLINT        NULL,
    [TotalCashTicketCount]                SMALLINT        NULL,
    [TotalCashTicketAmount]               INT             NULL,
    [IsCanceled]                          BIT             NULL,
    [CancelCauseCode]                     NVARCHAR (20)   NULL,
    [OutlierClassification]               TINYINT         NULL,
    [DatedVehicleJourneyId]               BIGINT          NULL,
    [DatedVehicleJourneyGid]              NUMERIC (16)    NULL,
    [JourneyPatternId]                    BIGINT          NULL,
    [TimedJourneyPatternId]               BIGINT          NULL
);


GO

