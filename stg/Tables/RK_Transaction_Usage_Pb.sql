CREATE TABLE [stg].[RK_Transaction_Usage_Pb] (
    [TransactionID]                                   BIGINT         NOT NULL,
    [FileName]                                        NCHAR (12)     NULL,
    [BusinessDay]                                     DATE           NULL,
    [BusinessHour]                                    TINYINT        NULL,
    [BusinessQuarterHour]                             TINYINT        NULL,
    [EquipmentID]                                     INT            NULL,
    [EquipmentType]                                   TINYINT        NULL,
    [SiteID]                                          INT            NULL,
    [MessageReceptionDate]                            DATETIME2 (0)  NULL,
    [Period]                                          INT            NULL,
    [IsReintegratedTransaction]                       TINYINT        NULL,
    [ReintegratedDateTime]                            DATETIME2 (0)  NULL,
    [MsgReportDate]                                   DATETIME2 (0)  NULL,
    [MediaSerialNumberID]                             BIGINT         NULL,
    [ApplicationTransactionSequenceNumber]            INT            NULL,
    [MsgSequenceNumber]                               BIGINT         NULL,
    [DeviceId]                                        INT            NULL,
    [TransactionType]                                 TINYINT        NULL,
    [TransactionBusinessDate]                         DATE           NULL,
    [TransactionStatus]                               TINYINT        NULL,
    [TransactionMediaLastDeviceID]                    INT            NULL,
    [ServiceProviderID]                               SMALLINT       NULL,
    [ContractorID]                                    SMALLINT       NULL,
    [FareAuthorityID]                                 SMALLINT       NULL,
    [StationID]                                       INT            NULL,
    [StopPointID]                                     BIGINT         NULL,
    [ModalType]                                       TINYINT        NULL,
    [ServiceJourneyType]                              INT            NULL,
    [StaffID]                                         INT            NULL,
    [StaffType]                                       TINYINT        NULL,
    [ShiftNumber]                                     BIGINT         NULL,
    [MediaCountryCode]                                SMALLINT       NULL,
    [MediaIssuerID]                                   SMALLINT       NULL,
    [MediaRetailerID]                                 SMALLINT       NULL,
    [MediaType]                                       TINYINT        NULL,
    [MediaValidityDate]                               DATE           NULL,
    [MediaVersion]                                    TINYINT        NULL,
    [MediaSecurityLevel]                              TINYINT        NULL,
    [MediaTest]                                       BIT            NULL,
    [CardEngravedID]                                  BIGINT         NULL,
    [ApplicationStatus]                               TINYINT        NULL,
    [ActionListStatus]                                TINYINT        NULL,
    [ActionListID]                                    BIGINT         NULL,
    [ActionListFailureCode]                           TINYINT        NULL,
    [CSCCurrencyUnit]                                 INT            NULL,
    [SystemCurrencyUnit]                              INT            NULL,
    [EODVersionID]                                    SMALLINT       NULL,
    [EODVersionComponent1]                            SMALLINT       NULL,
    [EODVersionComponent2]                            SMALLINT       NULL,
    [EODVersionComponent3]                            SMALLINT       NULL,
    [EODVersionComponent4]                            SMALLINT       NULL,
    [EODVersionComponent5]                            SMALLINT       NULL,
    [EODVersionComponent6]                            SMALLINT       NULL,
    [EODVersionComponent7]                            SMALLINT       NULL,
    [EODVersionComponent8]                            SMALLINT       NULL,
    [EODVersionComponent9]                            SMALLINT       NULL,
    [TrackingOperationType]                           TINYINT        NULL,
    [TrackingOperationNumber]                         INT            NULL,
    [VehicleID]                                       INT            NULL,
    [RouteID]                                         INT            NULL,
    [TripID]                                          BIGINT         NULL,
    [TripTimeDeparture]                               NVARCHAR (255) NULL,
    [LinePublicNumber]                                NVARCHAR (6)   NULL,
    [TripType]                                        TINYINT        NULL,
    [JourneySequenceNumber]                           INT            NULL,
    [JourneySplitted]                                 BIT            NULL,
    [JourneyTemporaryChange]                          SMALLINT       NULL,
    [DistanceCovered]                                 INT            NULL,
    [NumbersCoveredZone]                              TINYINT        NULL,
    [PreviousValidationID]                            INT            NULL,
    [JourneyServiceLevel]                             TINYINT        NULL,
    [PassengerGroupType1]                             TINYINT        NULL,
    [PassengerGroupTotal1]                            TINYINT        NULL,
    [PassengerGroupSupplement1]                       BIT            NULL,
    [PassengerGroupType2]                             TINYINT        NULL,
    [PassengerGroupTotal2]                            TINYINT        NULL,
    [PassengerGroupSupplement2]                       BIT            NULL,
    [PassengerGroupType3]                             TINYINT        NULL,
    [PassengerGroupTotal3]                            TINYINT        NULL,
    [PassengerGroupSupplement3]                       BIT            NULL,
    [PassengerClass]                                  TINYINT        NULL,
    [DiscountBasisFirstMonth]                         SMALLINT       NULL,
    [DiscountBasisInUse]                              TINYINT        NULL,
    [DiscountLevel]                                   TINYINT        NULL,
    [DiscountPointsEarned]                            INT            NULL,
    [DiscountBasis1_Journeys]                         TINYINT        NULL,
    [DiscountBasis1_Kilometers]                       SMALLINT       NULL,
    [DiscountBasis1_LevelM0]                          TINYINT        NULL,
    [DiscountBasis1_LevelM1]                          TINYINT        NULL,
    [DiscountBasis1_LevelM2]                          TINYINT        NULL,
    [DiscountBasis1_LevelM3]                          TINYINT        NULL,
    [DiscountBasis2_Journeys]                         TINYINT        NULL,
    [DiscountBasis2_Kilometers]                       SMALLINT       NULL,
    [DiscountBasis2_LevelM0]                          TINYINT        NULL,
    [DiscountBasis2_LevelM1]                          TINYINT        NULL,
    [DiscountBasis2_LevelM2]                          TINYINT        NULL,
    [DiscountBasis2_LevelM3]                          TINYINT        NULL,
    [DiscountBasis3_Journeys]                         TINYINT        NULL,
    [DiscountBasis3_Kilometers]                       SMALLINT       NULL,
    [DiscountBasis3_LevelM0]                          TINYINT        NULL,
    [DiscountBasis3_LevelM1]                          TINYINT        NULL,
    [DiscountBasis3_LevelM2]                          TINYINT        NULL,
    [DiscountBasis3_LevelM3]                          TINYINT        NULL,
    [LatestControlOrigin]                             INT            NULL,
    [LatestControlDate]                               DATETIME2 (0)  NULL,
    [ProductOwnerID]                                  SMALLINT       NULL,
    [ProductCode]                                     INT            NULL,
    [ProductFareVersion]                              SMALLINT       NULL,
    [InitialFee]                                      INT            NULL,
    [ProductSequenceNumber]                           BIGINT         NULL,
    [ProductSaleDeviceID]                             INT            NULL,
    [SourceID]                                        BIGINT         NULL,
    [ViaID]                                           BIGINT         NULL,
    [DestinationID]                                   BIGINT         NULL,
    [AdditionalZone1]                                 BIGINT         NULL,
    [AdditionalZone2]                                 BIGINT         NULL,
    [AdditionalZone3]                                 BIGINT         NULL,
    [AdditionalZone5]                                 BIGINT         NULL,
    [AdditionalZone6]                                 BIGINT         NULL,
    [AdditionalZone7]                                 BIGINT         NULL,
    [AdditionalZone8]                                 BIGINT         NULL,
    [AdditionalZone9]                                 BIGINT         NULL,
    [AdditionalZone10]                                BIGINT         NULL,
    [AdditionalZone11]                                BIGINT         NULL,
    [AdditionalZone12]                                BIGINT         NULL,
    [AdditionalZone13]                                BIGINT         NULL,
    [AdditionalZone14]                                BIGINT         NULL,
    [AdditionalZone15]                                BIGINT         NULL,
    [AdditionalZone16]                                BIGINT         NULL,
    [AdditionalZone17]                                BIGINT         NULL,
    [AdditionalZone18]                                BIGINT         NULL,
    [AdditionalZone19]                                BIGINT         NULL,
    [AdditionalZone20]                                BIGINT         NULL,
    [AdditionalZone21]                                BIGINT         NULL,
    [AdditionalZone22]                                BIGINT         NULL,
    [AdditionalZone23]                                BIGINT         NULL,
    [AdditionalZone24]                                BIGINT         NULL,
    [AdditionalZone25]                                BIGINT         NULL,
    [AdditionalZone26]                                BIGINT         NULL,
    [AdditionalZone27]                                BIGINT         NULL,
    [CentreZoneRadiusNumber]                          TINYINT        NULL,
    [ProductFareSetReferenceNumber]                   INT            NULL,
    [ProductEffectiveDate]                            DATE           NULL,
    [ProductExpiryDate]                               DATE           NULL,
    [ProductNumberOfPeriod]                           TINYINT        NULL,
    [ProductPeriodType]                               TINYINT        NULL,
    [ProductPassengerClass]                           TINYINT        NULL,
    [ProductAutoRenew]                                BIT            NULL,
    [ProductAutoRenewLastDate]                        DATETIME2 (0)  NULL,
    [ProductStatus]                                   TINYINT        NULL,
    [ProductValidityStartDate]                        DATE           NULL,
    [ProductValidityEndDate]                          DATE           NULL,
    [tPurseRemainingValue]                            INT            NULL,
    [tPurseNewRemainingValue]                         INT            NULL,
    [tPurseTransactionSequenceNumber]                 BIGINT         NULL,
    [LastAddValueDeviceID]                            INT            NULL,
    [tPurseYearlyConsumptionStatus]                   TINYINT        NULL,
    [tPurseYearlyConsumptionAmount]                   INT            NULL,
    [tPurseYearlyConsumptionAmountMax]                INT            NULL,
    [SupplementStatus]                                TINYINT        NULL,
    [SupplementType]                                  TINYINT        NULL,
    [SupplementOrigin]                                INT            NULL,
    [SupplementDistance]                              SMALLINT       NULL,
    [LocalNational]                                   BIT            NULL,
    [AdditionalZone4]                                 BIGINT         NULL,
    [Extension]                                       BIT            NULL,
    [CrossBorder]                                     BIT            NULL,
    [CurATSN]                                         INT            NULL,
    [FareIndicator]                                   TINYINT        NULL,
    [FareSetLocalNational]                            BIT            NULL,
    [ConcessionB3]                                    INT            NULL,
    [ConcessionA3]                                    INT            NULL,
    [MaximumPrice3]                                   INT            NULL,
    [MinimumPrice3]                                   INT            NULL,
    [NormalPrice2]                                    INT            NULL,
    [ConcessionB2]                                    INT            NULL,
    [ConcessionA2]                                    INT            NULL,
    [MaximumPrice2]                                   INT            NULL,
    [MinimumPrice2]                                   INT            NULL,
    [NormalPrice1Owner]                               INT            NULL,
    [ConcessionB1]                                    INT            NULL,
    [ConcessionA1]                                    INT            NULL,
    [MaximumPrice1]                                   INT            NULL,
    [MinimumPrice1]                                   INT            NULL,
    [JourneyPassengerType1]                           SMALLINT       NULL,
    [JourneyPassengerType2]                           SMALLINT       NULL,
    [JourneyPassengerType3]                           SMALLINT       NULL,
    [NormalPrice3]                                    INT            NULL,
    [FareSetReferenceNumber]                          INT            NULL,
    [DueFeeValue]                                     INT            NULL,
    [FurthestPoint]                                   INT            NULL,
    [EntryStationID]                                  INT            NULL,
    [FeeValue]                                        INT            NULL,
    [PreviousPrice]                                   INT            NULL,
    [PreviousPTO]                                     SMALLINT       NULL,
    [ProductFamily]                                   TINYINT        NULL,
    [ProductTransactionSequenceNumber]                SMALLINT       NULL,
    [TransactionValue]                                INT            NULL,
    [ValidationModel]                                 TINYINT        NULL,
    [AcceptedDurationExceededFlag]                    BIT            NULL,
    [JourneyDuration]                                 INT            NULL,
    [CorrespondingDistance]                           TINYINT        NULL,
    [JourneyCoveredNbOfZones]                         TINYINT        NULL,
    [JourneyDistanceCovered]                          INT            NULL,
    [BasicPriceOwner]                                 INT            NULL,
    [DiscountsAllowedOnFASupplement]                  SMALLINT       NULL,
    [DiscountsAllowedOnPositionSupplement]            SMALLINT       NULL,
    [DiscountsAllowedOnJourneySupplement]             SMALLINT       NULL,
    [DiscountsAllowedOnTimeSupplement]                SMALLINT       NULL,
    [DiscountsAllowedOnBusinessSupplement]            SMALLINT       NULL,
    [QuantityAndCrossMethod]                          TINYINT        NULL,
    [ThresholdTimeSupplement]                         BIT            NULL,
    [GroupOnBusiness]                                 BIT            NULL,
    [FareAuthoritySupplementFlag]                     BIT            NULL,
    [FAAllowedInGroup]                                BIT            NULL,
    [OriginFareAuthorityID]                           SMALLINT       NULL,
    [DestinationFareAuthorityID]                      SMALLINT       NULL,
    [FareAuthoritySupplementLevel]                    TINYINT        NULL,
    [FAA1]                                            INT            NULL,
    [FAB1]                                            INT            NULL,
    [FASupplement1Owner]                              INT            NULL,
    [FAA2]                                            INT            NULL,
    [FAB2]                                            INT            NULL,
    [FASupplement2]                                   INT            NULL,
    [FAA3]                                            INT            NULL,
    [FAB3]                                            INT            NULL,
    [FASupplement3]                                   INT            NULL,
    [PositionSupplementFlag]                          BIT            NULL,
    [PositionAllowedInGroup]                          BIT            NULL,
    [PositionSupplementLevel]                         TINYINT        NULL,
    [PositionA1]                                      INT            NULL,
    [PositionB1]                                      INT            NULL,
    [PositionSupplement1Owner]                        INT            NULL,
    [PositionA2]                                      INT            NULL,
    [PositionB2]                                      INT            NULL,
    [PositionSupplement2]                             INT            NULL,
    [PositionA3]                                      INT            NULL,
    [PositionB3]                                      INT            NULL,
    [PositionSupplement3]                             INT            NULL,
    [JourneyTypeSupplementFlag]                       BIT            NULL,
    [JourneyTypeAllowedInGroup]                       BIT            NULL,
    [JourneyTypeLevel]                                TINYINT        NULL,
    [JourneyTypeA1]                                   INT            NULL,
    [JourneyTypeB1]                                   INT            NULL,
    [JourneyTypeSupplement1Owner]                     INT            NULL,
    [JourneyTypeA2]                                   INT            NULL,
    [JourneyTypeB2]                                   INT            NULL,
    [JourneyTypeSupplement2]                          INT            NULL,
    [JourneyTypeA3]                                   INT            NULL,
    [JourneyTypeB3]                                   INT            NULL,
    [JourneyTypeSupplement3]                          INT            NULL,
    [TimeSupplementFlag]                              BIT            NULL,
    [TimeSupplementStamp]                             DATETIME2 (0)  NULL,
    [TimeSupplementAllowedInGroup]                    BIT            NULL,
    [TimeSupplementLevel]                             TINYINT        NULL,
    [TimeSupplementA1]                                INT            NULL,
    [TimeSupplementB1]                                INT            NULL,
    [TimeSupplement1Owner]                            INT            NULL,
    [TimeSupplementA2]                                INT            NULL,
    [TimeSupplementB2]                                INT            NULL,
    [TimeSupplement2]                                 INT            NULL,
    [TimeSupplementA3]                                INT            NULL,
    [TimeSupplementB3]                                INT            NULL,
    [TimeSupplement3]                                 INT            NULL,
    [BusinessSupplementFlag]                          BIT            NULL,
    [BusinessAllowedInGroup]                          BIT            NULL,
    [BusinessZoneDistance]                            SMALLINT       NULL,
    [BusinessKMDistance]                              SMALLINT       NULL,
    [BusinesBasicPrice]                               INT            NULL,
    [BusinessA1]                                      INT            NULL,
    [BusinessB1]                                      INT            NULL,
    [BusinessSupplement1]                             INT            NULL,
    [BusinessA2]                                      INT            NULL,
    [BusinessB2]                                      INT            NULL,
    [BusinessSupplement2]                             INT            NULL,
    [BusinessA3]                                      INT            NULL,
    [BusinessB3]                                      INT            NULL,
    [BusinessSupplement3]                             INT            NULL,
    [TimeDiscountFlag]                                BIT            NULL,
    [TimeDiscountAllowedInGroup]                      BIT            NULL,
    [TimeDiscountLevel]                               TINYINT        NULL,
    [TimeDiscountTimeStamp]                           DATETIME2 (0)  NULL,
    [TimeDiscountOriginPrice]                         INT            NULL,
    [TimeDiscountA1]                                  INT            NULL,
    [TimeDiscountB1]                                  INT            NULL,
    [TimeDiscount1Owner]                              INT            NULL,
    [TimeDiscountA2]                                  INT            NULL,
    [TimeDiscountB2]                                  INT            NULL,
    [TimeDiscount2]                                   INT            NULL,
    [TimeDiscountA3]                                  INT            NULL,
    [TimeDiscountB3]                                  INT            NULL,
    [TimeDiscount3]                                   INT            NULL,
    [QuantityDiscountFlag]                            BIT            NULL,
    [QuantityDiscountLevel]                           TINYINT        NULL,
    [QuantityDiscountBasis]                           TINYINT        NULL,
    [QuantityOriginPrice]                             INT            NULL,
    [QuantityDiscountA]                               INT            NULL,
    [QuantityDiscountB]                               INT            NULL,
    [QuantityDiscount]                                INT            NULL,
    [CrossDiscountFlag]                               BIT            NULL,
    [CrossDiscountLevel]                              TINYINT        NULL,
    [QuantityAndCrossDiscountFlag]                    BIT            NULL,
    [QuantityAndCrossDiscountA]                       INT            NULL,
    [QuantityAndCrossDiscountB]                       INT            NULL,
    [QuantityAndCrossDiscount]                        INT            NULL,
    [CrossOriginPrice]                                INT            NULL,
    [CrossDiscountA]                                  INT            NULL,
    [CrossDiscountB]                                  INT            NULL,
    [CrossDiscount]                                   INT            NULL,
    [IntermediatePrice1]                              INT            NULL,
    [IntermediatePrice2]                              INT            NULL,
    [IntermediatePrice3]                              INT            NULL,
    [IntermediatePrice4]                              INT            NULL,
    [PassengerTypeGroupReductionMethodFlag]           SMALLINT       NULL,
    [MFG_DiscountPercentage1]                         INT            NULL,
    [MFG_DiscountConstant1]                           INT            NULL,
    [MFG_GroupReduction1]                             INT            NULL,
    [MFG_DiscountPercentage2]                         INT            NULL,
    [MFG_DiscountConstant2]                           INT            NULL,
    [MFG_GroupReduction2]                             INT            NULL,
    [MFG_DiscountPercentage3]                         INT            NULL,
    [MFG_DiscountConstant3]                           INT            NULL,
    [MFG_GroupReduction3]                             INT            NULL,
    [MFEP_PassengerType1Number1]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage1Number1]                 INT            NULL,
    [MFEP_DiscountConstant1Number1]                   INT            NULL,
    [MFEP_GroupReduction1Number1]                     INT            NULL,
    [MFEP_PassengerType1Number2]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage1Number2]                 INT            NULL,
    [MFEP_DiscountConstant1Number2]                   INT            NULL,
    [MFEP_GroupReduction1Number2]                     INT            NULL,
    [MFEP_PassengerType1Number3]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage1Number3]                 INT            NULL,
    [MFEP_DiscountConstant1Number3]                   INT            NULL,
    [MFEP_GroupReduction1Number3]                     INT            NULL,
    [MFEP_PassengerType2Number1]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage2Number1]                 INT            NULL,
    [MFEP_DiscountConstant2Number1]                   INT            NULL,
    [MFEP_GroupReduction2Number1]                     INT            NULL,
    [MFEP_PassengerType2Number2]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage2Number2]                 INT            NULL,
    [MFEP_DiscountConstant2Number2]                   INT            NULL,
    [MFEP_GroupReduction2Number2]                     INT            NULL,
    [MFEP_PassengerType2Number3]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage2Number3]                 INT            NULL,
    [MFEP_DiscountConstant2Number3]                   INT            NULL,
    [MFEP_GroupReduction2Number3]                     INT            NULL,
    [MFEP_PassengerType3Number1]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage3Number1]                 INT            NULL,
    [MFEP_DiscountConstant3Number1]                   INT            NULL,
    [MFEP_GroupReduction3Number1]                     INT            NULL,
    [MFEP_PassengerType3Number2]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage3Number2]                 INT            NULL,
    [MFEP_DiscountConstant3Number2]                   INT            NULL,
    [MFEP_GroupReduction3Number2]                     INT            NULL,
    [MFEP_PassengerType3Number3]                      SMALLINT       NULL,
    [MFEP_DiscountPercentage3Number3]                 INT            NULL,
    [MFEP_DiscountConstant3Number3]                   INT            NULL,
    [MFEP_GroupReduction3Number3]                     INT            NULL,
    [Price1]                                          INT            NULL,
    [Price2]                                          INT            NULL,
    [Price3]                                          INT            NULL,
    [TravelGroupPrice]                                INT            NULL,
    [JourneyPrice]                                    INT            NULL,
    [PricePassengerType1Owner]                        INT            NULL,
    [PricePassengerType2]                             INT            NULL,
    [PricePassengerType3]                             INT            NULL,
    [PriceAdjustment]                                 INT            NULL,
    [GlobalGroupReductionFlag]                        BIT            NULL,
    [GroupReductionA]                                 INT            NULL,
    [GroupReductionB]                                 INT            NULL,
    [GroupReduction]                                  INT            NULL,
    [TriangularRuleFlag]                              BIT            NULL,
    [TriangularRuleTotalJourneyNbZonesOwner]          TINYINT        NULL,
    [TriangularRuleTotalNormalPrice]                  INT            NULL,
    [Triangle1JourneyNbZonesOwner]                    TINYINT        NULL,
    [Triangle1BasicPriceOwner]                        INT            NULL,
    [Triangular1TotalNormalPrice]                     INT            NULL,
    [Triangular1NormalPrice1Owner]                    INT            NULL,
    [Triangular1NormalPrice2]                         INT            NULL,
    [Triangular1NormalPrice3]                         INT            NULL,
    [Triangle2JourneyNbZonesOwner]                    TINYINT        NULL,
    [Triangle2BasicPriceOwner]                        INT            NULL,
    [Triangular2TotalNormalPrice]                     INT            NULL,
    [Triangular2NormalPrice1Owner]                    INT            NULL,
    [Triangular2NormalPrice2]                         INT            NULL,
    [Triangular2NormalPrice3]                         INT            NULL,
    [Triangle1FareAuthoritySupplementFlag]            BIT            NULL,
    [Triangle1FAAllowedInGroup]                       BIT            NULL,
    [Triangle1OriginFareAuthorityID]                  SMALLINT       NULL,
    [Triangle1DestinationFareAuthorityID]             SMALLINT       NULL,
    [Triangle1FAA1]                                   INT            NULL,
    [Triangle1FAB1]                                   INT            NULL,
    [Triangle1FASupplement1Owner]                     INT            NULL,
    [Triangle1FAA2]                                   INT            NULL,
    [Triangle1FAB2]                                   INT            NULL,
    [Triangle1FASupplement2]                          INT            NULL,
    [Triangle1FAA3]                                   INT            NULL,
    [Triangle1FAB3]                                   INT            NULL,
    [Triangle1FASupplement3]                          INT            NULL,
    [Triangle2FareAuthoritySupplementFlag]            BIT            NULL,
    [Triangle2FAAllowedInGroup]                       BIT            NULL,
    [Triangle2OriginFareAuthorityID]                  SMALLINT       NULL,
    [Triangle2DestinationFareAuthorityID]             SMALLINT       NULL,
    [Triangle2FAA1]                                   INT            NULL,
    [Triangle2FAB1]                                   INT            NULL,
    [Triangle2FASupplement1Owner]                     INT            NULL,
    [Triangle2FAA2]                                   INT            NULL,
    [Triangle2FAB2]                                   INT            NULL,
    [Triangle2FASupplement2]                          INT            NULL,
    [Triangle2FAA3]                                   INT            NULL,
    [Triangle2FAB3]                                   INT            NULL,
    [Triangle2FASupplement3]                          INT            NULL,
    [TriangleTotalFASupplement1Owner]                 INT            NULL,
    [TriangleTotalFASupplement2]                      INT            NULL,
    [TriangleTotalFASupplement3]                      INT            NULL,
    [Triangle1BusinessSupplementFlag]                 BIT            NULL,
    [Triangle1BusinessAllowedInGroup]                 BIT            NULL,
    [Triangle1BusinessZoneDistance]                   TINYINT        NULL,
    [Triangle1BusinessKMDistance]                     SMALLINT       NULL,
    [Triangle1BusinesBasicPrice]                      INT            NULL,
    [Triangle1BusinessA1]                             INT            NULL,
    [Triangle1BusinessB1]                             INT            NULL,
    [Triangle1BusinessSupplement1]                    INT            NULL,
    [Triangle1BusinessA2]                             INT            NULL,
    [Triangle1BusinessB2]                             INT            NULL,
    [Triangle1BusinessSupplement2]                    INT            NULL,
    [Triangle1BusinessA3]                             INT            NULL,
    [Triangle1BusinessB3]                             INT            NULL,
    [Triangle1BusinessSupplement3]                    INT            NULL,
    [Triangle2BusinessSupplementFlag]                 BIT            NULL,
    [Triangle2BusinessAllowedInGroup]                 BIT            NULL,
    [Triangle2BusinessZoneDistance]                   TINYINT        NULL,
    [Triangle2BusinessKMDistance]                     SMALLINT       NULL,
    [Triangle2BusinesBasicPrice]                      INT            NULL,
    [Triangle2BusinessA1]                             INT            NULL,
    [Triangle2BusinessB1]                             INT            NULL,
    [Triangle2BusinessSupplement1]                    INT            NULL,
    [Triangle2BusinessA2]                             INT            NULL,
    [Triangle2BusinessB2]                             INT            NULL,
    [Triangle2BusinessSupplement2]                    INT            NULL,
    [Triangle2BusinessA3]                             INT            NULL,
    [Triangle2BusinessB3]                             INT            NULL,
    [Triangle2BusinessSupplement3]                    INT            NULL,
    [TriangleTotalBusinessSupplement1]                INT            NULL,
    [EntryDateTime]                                   DATETIME2 (0)  NULL,
    [MCOLastKnownPointDateTime]                       DATETIME2 (0)  NULL,
    [TriangleTotalBusinessSupplement2]                INT            NULL,
    [MCOLastKnownPointStationID]                      INT            NULL,
    [TriangleTotalBusinessSupplement3]                INT            NULL,
    [HolderBirthDate]                                 DATE           NULL,
    [HolderProfile1ID]                                SMALLINT       NULL,
    [HolderProfileValidityDate1]                      DATE           NULL,
    [HolderProfile2ID]                                SMALLINT       NULL,
    [HolderProfileValidityDate2]                      DATE           NULL,
    [HolderPreferredClass]                            TINYINT        NULL,
    [TerminalID]                                      NVARCHAR (8)   NULL,
    [PaymentID]                                       BIGINT         NULL,
    [CreditCardType]                                  NVARCHAR (6)   NULL,
    [PaymentMeansType]                                TINYINT        NULL,
    [PaymentAgreementPTOId]                           SMALLINT       NULL,
    [PaymentAmount]                                   INT            NULL,
    [ChangeAmount]                                    INT            NULL,
    [PaymentSequenceNumber]                           BIGINT         NULL,
    [NbTransactionsPaid]                              SMALLINT       NULL,
    [ApplicationBlockingSequenceNumber]               INT            NULL,
    [BlockingType]                                    TINYINT        NULL,
    [OppositionObjectType]                            TINYINT        NULL,
    [ProductBlockingSequenceNumber]                   INT            NULL,
    [ReasonCodeBlocking]                              TINYINT        NULL,
    [tPurseBlockingSequenceNumber]                    INT            NULL,
    [AutomaticControlFailure]                         SMALLINT       NULL,
    [InspectionType]                                  TINYINT        NULL,
    [SwitchToPurse]                                   BIT            NULL,
    [CheckOutEncountered]                             BIT            NULL,
    [CombicardReturnJourneyPriceComputed]             BIT            NULL,
    [SubsidizedDetermination]                         INT            NULL,
    [BasicPriceOtherPassenger]                        INT            NULL,
    [FASupplement1OtherPassenger]                     INT            NULL,
    [JourneyPaidNbOfZonesOtherPassenger]              TINYINT        NULL,
    [JourneyPaidNbOfZonesOwner]                       TINYINT        NULL,
    [JourneyTypeSupplement1OtherPassenger]            INT            NULL,
    [MetroBasicPrice1OtherPassenger]                  INT            NULL,
    [MetroBasicPrice1Owner]                           INT            NULL,
    [MetroBasicPrice2]                                INT            NULL,
    [MetroBasicPrice3]                                INT            NULL,
    [MetroCumulatedSupplementOwner]                   INT            NULL,
    [MetroCumulatedSupplementOwnerFlag]               BIT            NULL,
    [MetroSupplement1OtherPassenger]                  INT            NULL,
    [MetroSupplement1OtherPassengerFlag]              BIT            NULL,
    [MetroSupplement1Owner]                           INT            NULL,
    [MetroSupplement1OwnerFlag]                       BIT            NULL,
    [MetroSupplement2]                                INT            NULL,
    [MetroSupplement2Flag]                            BIT            NULL,
    [MetroSupplement3]                                INT            NULL,
    [MetroSupplement3Flag]                            BIT            NULL,
    [NormalPrice1OtherPassenger]                      INT            NULL,
    [PositionSupplement1OtherPassenger]               INT            NULL,
    [PricePassengerType1OtherPassenger]               INT            NULL,
    [TimeDiscount1OtherPassenger]                     INT            NULL,
    [TimeSupplement1OtherPassenger]                   INT            NULL,
    [Triangle1BasicPriceOtherPassenger]               INT            NULL,
    [Triangle1FASupplement1OtherPassenger]            INT            NULL,
    [Triangle1JourneyNbZonesOtherPassenger]           TINYINT        NULL,
    [Triangle2BasicPriceOtherPassenger]               INT            NULL,
    [Triangle2FASupplement1OtherPassenger]            INT            NULL,
    [Triangle2JourneyNbZonesOtherPassenger]           TINYINT        NULL,
    [TriangleTotalFASupplement1OtherPassenger]        INT            NULL,
    [Triangular1NormalPrice1OtherPassenger]           INT            NULL,
    [Triangular2NormalPrice1OtherPassenger]           INT            NULL,
    [TriangularRuleTotalJourneyNbZonesOtherPassenger] TINYINT        NULL,
    [MetroSPCapping]                                  INT            NULL,
    [FilePath]                                        NVARCHAR (255) NULL,
    [FileId]                                          INT            NULL
);


GO

