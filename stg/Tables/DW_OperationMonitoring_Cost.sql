CREATE TABLE [stg].[DW_OperationMonitoring_Cost] (
    [InvoiceSectionName]     NVARCHAR (MAX) NULL,
    [AccountName]            NVARCHAR (MAX) NULL,
    [AccountOwnerId]         NVARCHAR (MAX) NULL,
    [SubscriptionId]         NVARCHAR (MAX) NULL,
    [SubscriptionName]       NVARCHAR (MAX) NULL,
    [ResourceGroup]          NVARCHAR (MAX) NULL,
    [ResourceLocation]       NVARCHAR (MAX) NULL,
    [Date]                   NVARCHAR (MAX) NULL,
    [ProductName]            NVARCHAR (MAX) NULL,
    [MeterCategory]          NVARCHAR (MAX) NULL,
    [MeterSubCategory]       NVARCHAR (MAX) NULL,
    [MeterId]                NVARCHAR (MAX) NULL,
    [MeterName]              NVARCHAR (MAX) NULL,
    [MeterRegion]            NVARCHAR (MAX) NULL,
    [UnitOfMeasure]          NVARCHAR (MAX) NULL,
    [Quantity]               NVARCHAR (MAX) NULL,
    [EffectivePrice]         NVARCHAR (MAX) NULL,
    [CostInBillingCurrency]  NVARCHAR (MAX) NULL,
    [CostCenter]             NVARCHAR (MAX) NULL,
    [ConsumedService]        NVARCHAR (MAX) NULL,
    [ResourceId]             NVARCHAR (MAX) NULL,
    [Tags]                   NVARCHAR (MAX) NULL,
    [OfferId]                NVARCHAR (MAX) NULL,
    [AdditionalInfo]         NVARCHAR (MAX) NULL,
    [ServiceInfo1]           NVARCHAR (MAX) NULL,
    [ServiceInfo2]           NVARCHAR (MAX) NULL,
    [ResourceName]           NVARCHAR (MAX) NULL,
    [ReservationId]          NVARCHAR (MAX) NULL,
    [ReservationName]        NVARCHAR (MAX) NULL,
    [UnitPrice]              NVARCHAR (MAX) NULL,
    [ProductOrderId]         NVARCHAR (MAX) NULL,
    [ProductOrderName]       NVARCHAR (MAX) NULL,
    [Term]                   NVARCHAR (MAX) NULL,
    [PublisherType]          NVARCHAR (MAX) NULL,
    [PublisherName]          NVARCHAR (MAX) NULL,
    [ChargeType]             NVARCHAR (MAX) NULL,
    [Frequency]              NVARCHAR (MAX) NULL,
    [PricingModel]           NVARCHAR (MAX) NULL,
    [AvailabilityZone]       NVARCHAR (MAX) NULL,
    [BillingAccountId]       NVARCHAR (MAX) NULL,
    [BillingAccountName]     NVARCHAR (MAX) NULL,
    [BillingCurrencyCode]    NVARCHAR (MAX) NULL,
    [BillingPeriodStartDate] NVARCHAR (MAX) NULL,
    [BillingPeriodEndDate]   NVARCHAR (MAX) NULL,
    [BillingProfileId]       NVARCHAR (MAX) NULL,
    [BillingProfileName]     NVARCHAR (MAX) NULL,
    [InvoiceSectionId]       NVARCHAR (MAX) NULL,
    [IsAzureCreditEligible]  NVARCHAR (MAX) NULL,
    [PartNumber]             NVARCHAR (MAX) NULL,
    [PayGPrice]              NVARCHAR (MAX) NULL,
    [PlanName]               NVARCHAR (MAX) NULL,
    [ServiceFamily]          NVARCHAR (MAX) NULL,
    [CostAllocationRuleName] NVARCHAR (MAX) NULL,
    [benefitId]              NVARCHAR (MAX) NULL,
    [benefitName]            NVARCHAR (MAX) NULL,
    [SourceFilePath]         NVARCHAR (MAX) NULL,
    [Environment]            NVARCHAR (MAX) NULL
);


GO
