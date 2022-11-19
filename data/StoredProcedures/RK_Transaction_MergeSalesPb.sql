






create procedure [data].[RK_Transaction_MergeSalesPb]
as
begin  
-- =============================================
-- Author:		Ran Wang
-- Create date: 2021-11-23
-- Description: Merge [stg].[RK_Transaction_Sales_Pb]to  [data].[RK_Transaction]
-- =============================================

merge into [data].[RK_Transaction] t
using [stg].[RK_Transaction_Sales_Pb] s
on t.[TransactionID] = s.[TransactionID]
when matched then
    update set
        t.[FileName] = s.[FileName],
        t.[BusinessDay] = s.[BusinessDay],
        t.[BusinessHour] = s.[BusinessHour],
        t.[BusinessQuarterHour] = s.[BusinessQuarterHour],
        t.[EquipmentID] = s.[EquipmentID],
        t.[EquipmentType] = s.[EquipmentType],
        t.[SiteID] = s.[SiteID],
        t.[MessageReceptionDate] = s.[MessageReceptionDate],
        t.[Period] = s.[Period],
        t.[IsReintegratedTransaction] = s.[IsReintegratedTransaction],
        t.[ReintegratedDateTime] = s.[ReintegratedDateTime],
        t.[MsgReportDate] = s.[MsgReportDate],
        t.[MediaSerialNumberID] = s.[MediaSerialNumberID],
        t.[ApplicationTransactionSequenceNumber] = s.[ApplicationTransactionSequenceNumber],
        t.[MsgSequenceNumber] = s.[MsgSequenceNumber],
        t.[DeviceId] = s.[DeviceId],
        t.[TransactionType] = s.[TransactionType],
        t.[TransactionBusinessDate] = s.[TransactionBusinessDate],
        t.[TransactionStatus] = s.[TransactionStatus],
        t.[TransactionMediaLastDeviceID] = s.[TransactionMediaLastDeviceID],
        t.[ServiceProviderID] = s.[ServiceProviderID],
        t.[ContractorID] = s.[ContractorID],
        t.[FareAuthorityID] = s.[FareAuthorityID],
        t.[StationID] = s.[StationID],
        t.[StopPointID] = s.[StopPointID],
        t.[ModalType] = s.[ModalType],
        t.[ServiceJourneyType] = s.[ServiceJourneyType],
        t.[StaffID] = s.[StaffID],
        t.[StaffType] = s.[StaffType],
        t.[ShiftNumber] = s.[ShiftNumber],
        t.[MediaCountryCode] = s.[MediaCountryCode],
        t.[MediaIssuerID] = s.[MediaIssuerID],
        t.[MediaRetailerID] = s.[MediaRetailerID],
        t.[MediaType] = s.[MediaType],
        t.[MediaValidityDate] = s.[MediaValidityDate],
        t.[MediaVersion] = s.[MediaVersion],
        t.[MediaSecurityLevel] = s.[MediaSecurityLevel],
        t.[MediaTest] = s.[MediaTest],
        t.[CardEngravedID] = s.[CardEngravedID],
        t.[ApplicationStatus] = s.[ApplicationStatus],
        t.[ActionListStatus] = s.[ActionListStatus],
        t.[ActionListID] = s.[ActionListID],
        t.[ActionListFailureCode] = s.[ActionListFailureCode],
        t.[CSCCurrencyUnit] = s.[CSCCurrencyUnit],
        t.[SystemCurrencyUnit] = s.[SystemCurrencyUnit],
        t.[EODVersionID] = s.[EODVersionID],
        t.[EODVersionComponent1] = s.[EODVersionComponent1],
        t.[EODVersionComponent2] = s.[EODVersionComponent2],
        t.[EODVersionComponent3] = s.[EODVersionComponent3],
        t.[EODVersionComponent4] = s.[EODVersionComponent4],
        t.[EODVersionComponent5] = s.[EODVersionComponent5],
        t.[EODVersionComponent6] = s.[EODVersionComponent6],
        t.[EODVersionComponent7] = s.[EODVersionComponent7],
        t.[EODVersionComponent8] = s.[EODVersionComponent8],
        t.[EODVersionComponent9] = s.[EODVersionComponent9],
        t.[TrackingOperationType] = s.[TrackingOperationType],
        t.[TrackingOperationNumber] = s.[TrackingOperationNumber],
        t.[VehicleID] = s.[VehicleID],
        t.[RouteID] = s.[RouteID],
        t.[TripID] = s.[TripID],
        t.[TripTimeDeparture] = try_cast(case when s.TripTimeDeparture is not null then concat(substring(right (concat('00',s.[TripTimeDeparture] ),4),1,2), ':', substring(right (concat('00',s.[TripTimeDeparture] ),4),3,4)) 
	  				   else null
					   end as time(0)),
        t.[LinePublicNumber] = s.[LinePublicNumber],
        t.[TripType] = s.[TripType],
        t.[HolderBirthDate] = s.[HolderBirthDate],
        t.[HolderProfile1ID] = s.[HolderProfile1ID],
        t.[HolderProfileValidityDate1] = s.[HolderProfileValidityDate1],
        t.[HolderProfile2ID] = s.[HolderProfile2ID],
        t.[HolderProfileValidityDate2] = s.[HolderProfileValidityDate2],
        t.[HolderPreferredClass] = s.[HolderPreferredClass],
        t.[PassengerClass] = s.[PassengerClass],
        t.[PassengerGroupType1] = s.[PassengerGroupType1],
        t.[PassengerGroupTotal1] = s.[PassengerGroupTotal1],
        t.[PassengerGroupSupplement1] = s.[PassengerGroupSupplement1],
        t.[PassengerGroupType2] = s.[PassengerGroupType2],
        t.[PassengerGroupTotal2] = s.[PassengerGroupTotal2],
        t.[PassengerGroupSupplement2] = s.[PassengerGroupSupplement2],
        t.[PassengerGroupType3] = s.[PassengerGroupType3],
        t.[PassengerGroupTotal3] = s.[PassengerGroupTotal3],
        t.[PassengerGroupSupplement3] = s.[PassengerGroupSupplement3],
        t.[TerminalID] = s.[TerminalID],
        t.[PaymentID] = s.[PaymentID],
        t.[CreditCardType] = s.[CreditCardType],
        t.[PaymentMeansType] = s.[PaymentMeansType],
        t.[PaymentAgreementPTOId] = s.[PaymentAgreementPTOId],
        t.[PaymentAmount] = s.[PaymentAmount],
        t.[ChangeAmount] = s.[ChangeAmount],
        t.[PaymentSequenceNumber] = s.[PaymentSequenceNumber],
        t.[NbTransactionsPaid] = s.[NbTransactionsPaid],
        t.[CustomerLanguage] = s.[CustomerLanguage],
        t.[DialoguePreferences] = s.[DialoguePreferences],
        t.[SubscriptionOrCreditType] = s.[SubscriptionOrCreditType],
        t.[LocalNational] = s.[LocalNational],
        t.[Extension] = s.[Extension],
        t.[CardActivityStatus] = s.[CardActivityStatus],
        t.[CardPrice] = s.[CardPrice],
        t.[DownPaymentLevel] = s.[DownPaymentLevel],
        t.[DueFeeValue] = s.[DueFeeValue],
        t.[FeeValue] = s.[FeeValue],
        t.[PackageDiscount] = s.[PackageDiscount],
        t.[PackageIdentification] = s.[PackageIdentification],
        t.[ReasonCodeIssuing] = s.[ReasonCodeIssuing],
        t.[SalePointGroup] = s.[SalePointGroup],
        t.[TransactionValue] = s.[TransactionValue],
        t.[ProductOwnerID] = s.[ProductOwnerID],
        t.[ProductCode] = s.[ProductCode],
        t.[ProductFareVersion] = s.[ProductFareVersion],
        t.[ProductSequenceNumber] = s.[ProductSequenceNumber],
        t.[ProductSaleDeviceID] = s.[ProductSaleDeviceID],
        t.[SourceID] = s.[SourceID],
        t.[ViaID] = s.[ViaID],
        t.[DestinationID] = s.[DestinationID],
        t.[AdditionalZone1] = s.[AdditionalZone1],
        t.[AdditionalZone10] = s.[AdditionalZone10],
        t.[AdditionalZone11] = s.[AdditionalZone11],
        t.[AdditionalZone12] = s.[AdditionalZone12],
        t.[AdditionalZone13] = s.[AdditionalZone13],
        t.[AdditionalZone14] = s.[AdditionalZone14],
        t.[AdditionalZone15] = s.[AdditionalZone15],
        t.[AdditionalZone16] = s.[AdditionalZone16],
        t.[AdditionalZone17] = s.[AdditionalZone17],
        t.[AdditionalZone18] = s.[AdditionalZone18],
        t.[AdditionalZone19] = s.[AdditionalZone19],
        t.[AdditionalZone2] = s.[AdditionalZone2],
        t.[AdditionalZone20] = s.[AdditionalZone20],
        t.[AdditionalZone21] = s.[AdditionalZone21],
        t.[AdditionalZone22] = s.[AdditionalZone22],
        t.[AdditionalZone23] = s.[AdditionalZone23],
        t.[AdditionalZone24] = s.[AdditionalZone24],
        t.[AdditionalZone25] = s.[AdditionalZone25],
        t.[AdditionalZone26] = s.[AdditionalZone26],
        t.[AdditionalZone27] = s.[AdditionalZone27],
        t.[AdditionalZone3] = s.[AdditionalZone3],
        t.[AdditionalZone4] = s.[AdditionalZone4],
        t.[AdditionalZone5] = s.[AdditionalZone5],
        t.[AdditionalZone6] = s.[AdditionalZone6],
        t.[AdditionalZone7] = s.[AdditionalZone7],
        t.[AdditionalZone8] = s.[AdditionalZone8],
       t.[AdditionalZone9] = s.[AdditionalZone9],
        t.[CentreZoneRadiusNumber] = s.[CentreZoneRadiusNumber],
        t.[ProductFareSetReferenceNumber] = s.[ProductFareSetReferenceNumber],
        t.[ProductEffectiveDate] = s.[ProductEffectiveDate],
       t.[ProductExpiryDate] = s.[ProductExpiryDate],
        t.[ProductNumberOfPeriod] = s.[ProductNumberOfPeriod],
        t.[ProductPeriodType] = s.[ProductPeriodType],
        t.[ProductPassengerClass] = s.[ProductPassengerClass],
        t.[ProductAutoRenew] = s.[ProductAutoRenew],
        t.[ProductAutoRenewLastDate] = s.[ProductAutoRenewLastDate],
        t.[ProductStatus] = s.[ProductStatus],
        t.[ProductValidityStartDate] = s.[ProductValidityStartDate],
        t.[ProductValidityEndDate] = s.[ProductValidityEndDate],
        t.[tPurseRemainingValue] = s.[tPurseRemainingValue],
        t.[tPurseNewRemainingValue] = s.[tPurseNewRemainingValue],
        t.[tPurseTransactionSequenceNumber] = s.[tPurseTransactionSequenceNumber],
        t.[LastAddValueDeviceID] = s.[LastAddValueDeviceID],
        t.[tPurseYearlyConsumptionStatus] = s.[tPurseYearlyConsumptionStatus],
        t.[tPurseYearlyConsumptionAmount] = s.[tPurseYearlyConsumptionAmount],
        t.[tPurseYearlyConsumptionAmountMax] = s.[tPurseYearlyConsumptionAmountMax],
        t.[DeleteProductSerialNumber] = s.[DeleteProductSerialNumber],
        t.[StealthOperation] = s.[StealthOperation],
        t.[FareSetReferenceNumber] = s.[FareSetReferenceNumber],
        t.[ProductAmount] = s.[ProductAmount],
        t.[ProductFamily] = s.[ProductFamily],
        t.[ProductTransactionSequenceNumber] = s.[ProductTransactionSequenceNumber],
        t.[ProductTemporalValidity] = s.[ProductTemporalValidity],
        t.[ProductTemporalValidityPeriodType] = s.[ProductTemporalValidityPeriodType],
        t.[SaleType] = s.[SaleType],
        t.[tPurseStatus] = s.[tPurseStatus],
        t.[tPurseAutoLoadStatus] = s.[tPurseAutoLoadStatus],
        t.[tPurseAutoLoadAmount] = s.[tPurseAutoLoadAmount],
        t.[tPurseAutoLoadGroundAmount] = s.[tPurseAutoLoadGroundAmount],
        t.[tPurseAutoLoadTriggerDay] = s.[tPurseAutoLoadTriggerDay],
        t.[tPurseAutoLoadEndDate] = s.[tPurseAutoLoadEndDate],
        t.[tPurseDailyAutoLoadCountRemaining] = s.[tPurseDailyAutoLoadCountRemaining],
        t.[tPurseDailyAutoLoadCountMax] = s.[tPurseDailyAutoLoadCountMax],
        t.[tPurseMonthlyAutoLoadStatus] = s.[tPurseMonthlyAutoLoadStatus],
        t.[tPurseMonthlyAutoLoadAmount] = s.[tPurseMonthlyAutoLoadAmount],
        t.[tPurseMonthlyAutoLoadAmountMax] = s.[tPurseMonthlyAutoLoadAmountMax],
        t.[tPurseDeposit] = s.[tPurseDeposit],
        t.[tPurseSerialNumber] = s.[tPurseSerialNumber],
        t.[NationalBankID] = s.[NationalBankID],
        t.[NationalBankAccountID] = s.[NationalBankAccountID],
        t.[BankFreeText] = s.[BankFreeText],
        t.[ReasonCodeRefund] = s.[ReasonCodeRefund],
        t.[RefundLevel] = s.[RefundLevel],
        t.[ProductPeriodDeducted] = s.[ProductPeriodDeducted],
        t.[ProductPeriodDeductedCancelled] = s.[ProductPeriodDeductedCancelled],
        t.[ProductNonRefundablePeriodAmount] = s.[ProductNonRefundablePeriodAmount],
        t.[ProductRemainingPeriod] = s.[ProductRemainingPeriod],
        t.[ProductRemainingPeriodAmount] = s.[ProductRemainingPeriodAmount],
        t.[ReasonCodeReload] = s.[ReasonCodeReload],
        t.[tPurseModificationReasonCode] = s.[tPurseModificationReasonCode],
        t.[tPurseModificationFreeText] = s.[tPurseModificationFreeText],
        t.[tPurseModificationFreeReference] = s.[tPurseModificationFreeReference],
        t.[DiscountBasisFirstMonth] = s.[DiscountBasisFirstMonth],
        t.[DiscountBasisInUse] = s.[DiscountBasisInUse],
        t.[DiscountLevel] = s.[DiscountLevel],
        t.[DiscountPointsEarned] = s.[DiscountPointsEarned],
        t.[DiscountBasis1_Journeys] = s.[DiscountBasis1_Journeys],
        t.[DiscountBasis1_Kilometers] = s.[DiscountBasis1_Kilometers],
        t.[DiscountBasis1_LevelM0] = s.[DiscountBasis1_LevelM0],
        t.[DiscountBasis1_LevelM1] = s.[DiscountBasis1_LevelM1],
        t.[DiscountBasis1_LevelM2] = s.[DiscountBasis1_LevelM2],
        t.[DiscountBasis1_LevelM3] = s.[DiscountBasis1_LevelM3],
        t.[DiscountBasis2_Journeys] = s.[DiscountBasis2_Journeys],
        t.[DiscountBasis2_Kilometers] = s.[DiscountBasis2_Kilometers],
        t.[DiscountBasis2_LevelM0] = s.[DiscountBasis2_LevelM0],
        t.[DiscountBasis2_LevelM1] = s.[DiscountBasis2_LevelM1],
        t.[DiscountBasis2_LevelM2] = s.[DiscountBasis2_LevelM2],
        t.[DiscountBasis2_LevelM3] = s.[DiscountBasis2_LevelM3],
        t.[DiscountBasis3_Journeys] = s.[DiscountBasis3_Journeys],
        t.[DiscountBasis3_Kilometers] = s.[DiscountBasis3_Kilometers],
        t.[DiscountBasis3_LevelM0] = s.[DiscountBasis3_LevelM0],
        t.[DiscountBasis3_LevelM1] = s.[DiscountBasis3_LevelM1],
        t.[DiscountBasis3_LevelM2] = s.[DiscountBasis3_LevelM2],
        t.[DiscountBasis3_LevelM3] = s.[DiscountBasis3_LevelM3],
        t.[tPurseStatusBefore] = s.[tPurseStatusBefore],
        t.[tPurseAutoLoadStatusBefore] = s.[tPurseAutoLoadStatusBefore],
        t.[tPurseAutoLoadAmountBefore] = s.[tPurseAutoLoadAmountBefore],
        t.[tPurseAutoLoadGroundAmountBefore] = s.[tPurseAutoLoadGroundAmountBefore],
        t.[tPurseAutoLoadTriggerDayBefore] = s.[tPurseAutoLoadTriggerDayBefore],
        t.[tPurseAutoLoadEndDateBefore] = s.[tPurseAutoLoadEndDateBefore],
        t.[tPurseDailyAutoLoadCountRemainingBefore] = s.[tPurseDailyAutoLoadCountRemainingBefore],
       t.[tPurseDailyAutoLoadCountMaxBefore] = s.[tPurseDailyAutoLoadCountMaxBefore],
        t.[tPurseMonthlyAutoLoadStatusBefore] = s.[tPurseMonthlyAutoLoadStatusBefore],
        t.[tPurseMonthlyAutoLoadAmountBefore] = s.[tPurseMonthlyAutoLoadAmountBefore],
        t.[tPurseMonthlyAutoLoadAmountMaxBefore] = s.[tPurseMonthlyAutoLoadAmountMaxBefore],
        t.[ReasonCodeCardManagement] = s.[ReasonCodeCardManagement],
        t.[AutoRenewLastDate] = s.[AutoRenewLastDate],
        t.[SetAutoRenew] = s.[SetAutoRenew],
        t.[HolderBirthDateBefore] = s.[HolderBirthDateBefore],
        t.[HolderProfile1IDBefore] = s.[HolderProfile1IDBefore],
        t.[HolderProfileValidityDate1Before] = s.[HolderProfileValidityDate1Before],
        t.[HolderProfile2IDBefore] = s.[HolderProfile2IDBefore],
        t.[HolderProfileValidityDate2Before] = s.[HolderProfileValidityDate2Before],
        t.[HolderPreferredClassBefore] = s.[HolderPreferredClassBefore],
        t.[PassengerGroupType1Before] = s.[PassengerGroupType1Before],
        t.[PassengerGroupTotal1Before] = s.[PassengerGroupTotal1Before],
        t.[PassengerGroupSupplement1Before] = s.[PassengerGroupSupplement1Before],
        t.[PassengerGroupType2Before] = s.[PassengerGroupType2Before],
        t.[PassengerGroupTotal2Before] = s.[PassengerGroupTotal2Before],
        t.[PassengerGroupSupplement2Before] = s.[PassengerGroupSupplement2Before],
        t.[PassengerGroupType3Before] = s.[PassengerGroupType3Before],
        t.[PassengerGroupTotal3Before] = s.[PassengerGroupTotal3Before],
        t.[PassengerGroupSupplement3Before] = s.[PassengerGroupSupplement3Before],
        t.[CustomerLanguageBefore] = s.[CustomerLanguageBefore],
        t.[DialoguePreferencesBefore] = s.[DialoguePreferencesBefore],
        t.[LocalNationalBefore] = s.[LocalNationalBefore],
        t.[ExtensionBefore] = s.[ExtensionBefore],
        t.[ChangedParameterList] = s.[ChangedParameterList],
        t.[MediaTypeBefore] = s.[MediaTypeBefore],
        t.[SubsidizedDetermination] = s.[SubsidizedDetermination],
        t.[ProductAmountMetroSupplementPart] = s.[ProductAmountMetroSupplementPart],
        t.[ProductRefundMetroSupplementPart] = s.[ProductRefundMetroSupplementPart],
        t.[ProductMetroPrepaid] = s.[ProductMetroPrepaid],
        t.[ProductMetroCapping] = s.[ProductMetroCapping],
		t.[IsException] = 0,
        t.[FileId] = s.[FileId],
        t.[UpdatedUtc] = sysutcdatetime()
when not matched by target then
   insert (
        [TransactionID],
        [FileName],
        [BusinessDay],
        [BusinessHour],
        [BusinessQuarterHour],
        [EquipmentID],
        [EquipmentType],
        [SiteID],
        [MessageReceptionDate],
        [Period],
        [IsReintegratedTransaction],
        [ReintegratedDateTime],
        [MsgReportDate],
        [MediaSerialNumberID],
        [ApplicationTransactionSequenceNumber],
        [MsgSequenceNumber],
        [DeviceId],
        [TransactionType],
        [TransactionBusinessDate],
        [TransactionStatus],
        [TransactionMediaLastDeviceID],
        [ServiceProviderID],
        [ContractorID],
        [FareAuthorityID],
        [StationID],
        [StopPointID],
        [ModalType],
        [ServiceJourneyType],
        [StaffID],
        [StaffType],
        [ShiftNumber],
        [MediaCountryCode],
        [MediaIssuerID],
        [MediaRetailerID],
        [MediaType],
        [MediaValidityDate],
        [MediaVersion],
        [MediaSecurityLevel],
        [MediaTest],
        [CardEngravedID],
        [ApplicationStatus],
        [ActionListStatus],
        [ActionListID],
        [ActionListFailureCode],
        [CSCCurrencyUnit],
        [SystemCurrencyUnit],
        [EODVersionID],
        [EODVersionComponent1],
        [EODVersionComponent2],
        [EODVersionComponent3],
        [EODVersionComponent4],
        [EODVersionComponent5],
        [EODVersionComponent6],
        [EODVersionComponent7],
        [EODVersionComponent8],
        [EODVersionComponent9],
        [TrackingOperationType],
        [TrackingOperationNumber],
        [VehicleID],
        [RouteID],
        [TripID],
        [TripTimeDeparture],
        [LinePublicNumber],
        [TripType],
        [HolderBirthDate],
        [HolderProfile1ID],
        [HolderProfileValidityDate1],
        [HolderProfile2ID],
        [HolderProfileValidityDate2],
        [HolderPreferredClass],
        [PassengerClass],
        [PassengerGroupType1],
        [PassengerGroupTotal1],
        [PassengerGroupSupplement1],
        [PassengerGroupType2],
        [PassengerGroupTotal2],
        [PassengerGroupSupplement2],
        [PassengerGroupType3],
        [PassengerGroupTotal3],
        [PassengerGroupSupplement3],
        [TerminalID],
        [PaymentID],
        [CreditCardType],
        [PaymentMeansType],
        [PaymentAgreementPTOId],
        [PaymentAmount],
        [ChangeAmount],
        [PaymentSequenceNumber],
        [NbTransactionsPaid],
        [CustomerLanguage],
        [DialoguePreferences],
        [SubscriptionOrCreditType],
        [LocalNational],
        [Extension],
        [CardActivityStatus],
        [CardPrice],
        [DownPaymentLevel],
        [DueFeeValue],
        [FeeValue],
        [PackageDiscount],
        [PackageIdentification],
        [ReasonCodeIssuing],
        [SalePointGroup],
        [TransactionValue],
        [ProductOwnerID],
        [ProductCode],
        [ProductFareVersion],
        [ProductSequenceNumber],
        [ProductSaleDeviceID],
        [SourceID],
        [ViaID],
        [DestinationID],
        [AdditionalZone1],
        [AdditionalZone10],
        [AdditionalZone11],
        [AdditionalZone12],
        [AdditionalZone13],
        [AdditionalZone14],
        [AdditionalZone15],
        [AdditionalZone16],
        [AdditionalZone17],
        [AdditionalZone18],
        [AdditionalZone19],
        [AdditionalZone2],
        [AdditionalZone20],
        [AdditionalZone21],
        [AdditionalZone22],
        [AdditionalZone23],
        [AdditionalZone24],
        [AdditionalZone25],
        [AdditionalZone26],
        [AdditionalZone27],
        [AdditionalZone3],
        [AdditionalZone4],
        [AdditionalZone5],
        [AdditionalZone6],
        [AdditionalZone7],
        [AdditionalZone8],
        [AdditionalZone9],
        [CentreZoneRadiusNumber],
        [ProductFareSetReferenceNumber],
        [ProductEffectiveDate],
        [ProductExpiryDate],
        [ProductNumberOfPeriod],
        [ProductPeriodType],
        [ProductPassengerClass],
        [ProductAutoRenew],
        [ProductAutoRenewLastDate],
        [ProductStatus],
        [ProductValidityStartDate],
        [ProductValidityEndDate],
        [tPurseRemainingValue],
        [tPurseNewRemainingValue],
        [tPurseTransactionSequenceNumber],
        [LastAddValueDeviceID],
        [tPurseYearlyConsumptionStatus],
        [tPurseYearlyConsumptionAmount],
        [tPurseYearlyConsumptionAmountMax],
        [DeleteProductSerialNumber],
        [StealthOperation],
        [FareSetReferenceNumber],
        [ProductAmount],
        [ProductFamily],
        [ProductTransactionSequenceNumber],
        [ProductTemporalValidity],
        [ProductTemporalValidityPeriodType],
        [SaleType],
        [tPurseStatus],
        [tPurseAutoLoadStatus],
        [tPurseAutoLoadAmount],
        [tPurseAutoLoadGroundAmount],
        [tPurseAutoLoadTriggerDay],
        [tPurseAutoLoadEndDate],
        [tPurseDailyAutoLoadCountRemaining],
        [tPurseDailyAutoLoadCountMax],
        [tPurseMonthlyAutoLoadStatus],
        [tPurseMonthlyAutoLoadAmount],
        [tPurseMonthlyAutoLoadAmountMax],
        [tPurseDeposit],
        [tPurseSerialNumber],
        [NationalBankID],
        [NationalBankAccountID],
        [BankFreeText],
        [ReasonCodeRefund],
        [RefundLevel],
        [ProductPeriodDeducted],
        [ProductPeriodDeductedCancelled],
        [ProductNonRefundablePeriodAmount],
        [ProductRemainingPeriod],
        [ProductRemainingPeriodAmount],
        [ReasonCodeReload],
        [tPurseModificationReasonCode],
        [tPurseModificationFreeText],
        [tPurseModificationFreeReference],
        [DiscountBasisFirstMonth],
        [DiscountBasisInUse],
        [DiscountLevel],
        [DiscountPointsEarned],
        [DiscountBasis1_Journeys],
        [DiscountBasis1_Kilometers],
        [DiscountBasis1_LevelM0],
        [DiscountBasis1_LevelM1],
        [DiscountBasis1_LevelM2],
        [DiscountBasis1_LevelM3],
        [DiscountBasis2_Journeys],
        [DiscountBasis2_Kilometers],
        [DiscountBasis2_LevelM0],
        [DiscountBasis2_LevelM1],
        [DiscountBasis2_LevelM2],
        [DiscountBasis2_LevelM3],
        [DiscountBasis3_Journeys],
        [DiscountBasis3_Kilometers],
        [DiscountBasis3_LevelM0],
        [DiscountBasis3_LevelM1],
        [DiscountBasis3_LevelM2],
        [DiscountBasis3_LevelM3],
        [tPurseStatusBefore],
        [tPurseAutoLoadStatusBefore],
        [tPurseAutoLoadAmountBefore],
        [tPurseAutoLoadGroundAmountBefore],
        [tPurseAutoLoadTriggerDayBefore],
        [tPurseAutoLoadEndDateBefore],
        [tPurseDailyAutoLoadCountRemainingBefore],
        [tPurseDailyAutoLoadCountMaxBefore],
        [tPurseMonthlyAutoLoadStatusBefore],
        [tPurseMonthlyAutoLoadAmountBefore],
        [tPurseMonthlyAutoLoadAmountMaxBefore],
        [ReasonCodeCardManagement],
        [AutoRenewLastDate],
        [SetAutoRenew],
        [HolderBirthDateBefore],
        [HolderProfile1IDBefore],
        [HolderProfileValidityDate1Before],
        [HolderProfile2IDBefore],
        [HolderProfileValidityDate2Before],
        [HolderPreferredClassBefore],
        [PassengerGroupType1Before],
        [PassengerGroupTotal1Before],
        [PassengerGroupSupplement1Before],
        [PassengerGroupType2Before],
        [PassengerGroupTotal2Before],
        [PassengerGroupSupplement2Before],
        [PassengerGroupType3Before],
        [PassengerGroupTotal3Before],
        [PassengerGroupSupplement3Before],
        [CustomerLanguageBefore],
        [DialoguePreferencesBefore],
        [LocalNationalBefore],
        [ExtensionBefore],
        [ChangedParameterList],
        [MediaTypeBefore],
        [SubsidizedDetermination],
        [ProductAmountMetroSupplementPart],
        [ProductRefundMetroSupplementPart],
        [ProductMetroPrepaid],
        [ProductMetroCapping],
		[IsException], 
        [FileId],
        [InsertedUtc]
    )
    values (
        s.[TransactionID],
        s.[FileName],
        s.[BusinessDay],
        s.[BusinessHour],
        s.[BusinessQuarterHour],
        s.[EquipmentID],
        s.[EquipmentType],
        s.[SiteID],
        s.[MessageReceptionDate],
        s.[Period],
        s.[IsReintegratedTransaction],
        s.[ReintegratedDateTime],
        s.[MsgReportDate],
        s.[MediaSerialNumberID],
        s.[ApplicationTransactionSequenceNumber],
        s.[MsgSequenceNumber],
        s.[DeviceId],
        s.[TransactionType],
        s.[TransactionBusinessDate],
        s.[TransactionStatus],
        s.[TransactionMediaLastDeviceID],
        s.[ServiceProviderID],
        s.[ContractorID],
        s.[FareAuthorityID],
        s.[StationID],
        s.[StopPointID],
        s.[ModalType],
        s.[ServiceJourneyType],
        s.[StaffID],
        s.[StaffType],
        s.[ShiftNumber],
        s.[MediaCountryCode],
        s.[MediaIssuerID],
        s.[MediaRetailerID],
        s.[MediaType],
        s.[MediaValidityDate],
        s.[MediaVersion],
        s.[MediaSecurityLevel],
        s.[MediaTest],
        s.[CardEngravedID],
        s.[ApplicationStatus],
        s.[ActionListStatus],
        s.[ActionListID],
        s.[ActionListFailureCode],
        s.[CSCCurrencyUnit],
        s.[SystemCurrencyUnit],
        s.[EODVersionID],
        s.[EODVersionComponent1],
        s.[EODVersionComponent2],
        s.[EODVersionComponent3],
        s.[EODVersionComponent4],
        s.[EODVersionComponent5],
        s.[EODVersionComponent6],
        s.[EODVersionComponent7],
        s.[EODVersionComponent8],
        s.[EODVersionComponent9],
        s.[TrackingOperationType],
        s.[TrackingOperationNumber],
        s.[VehicleID],
        s.[RouteID],
        s.[TripID],
        try_cast(case when s.TripTimeDeparture is not null then concat(substring(right (concat('00',s.[TripTimeDeparture] ),4),1,2), ':', substring(right (concat('00',s.[TripTimeDeparture] ),4),3,4)) 
	  				   else null
					   end as time(0)),
        s.[LinePublicNumber],
        s.[TripType],
        s.[HolderBirthDate],
        s.[HolderProfile1ID],
        s.[HolderProfileValidityDate1],
        s.[HolderProfile2ID],
        s.[HolderProfileValidityDate2],
        s.[HolderPreferredClass],
        s.[PassengerClass],
        s.[PassengerGroupType1],
        s.[PassengerGroupTotal1],
        s.[PassengerGroupSupplement1],
        s.[PassengerGroupType2],
        s.[PassengerGroupTotal2],
        s.[PassengerGroupSupplement2],
        s.[PassengerGroupType3],
        s.[PassengerGroupTotal3],
        s.[PassengerGroupSupplement3],
        s.[TerminalID],
        s.[PaymentID],
        s.[CreditCardType],
        s.[PaymentMeansType],
        s.[PaymentAgreementPTOId],
        s.[PaymentAmount],
        s.[ChangeAmount],
        s.[PaymentSequenceNumber],
        s.[NbTransactionsPaid],
        s.[CustomerLanguage],
        s.[DialoguePreferences],
        s.[SubscriptionOrCreditType],
        s.[LocalNational],
        s.[Extension],
        s.[CardActivityStatus],
        s.[CardPrice],
        s.[DownPaymentLevel],
        s.[DueFeeValue],
        s.[FeeValue],
        s.[PackageDiscount],
        s.[PackageIdentification],
        s.[ReasonCodeIssuing],
        s.[SalePointGroup],
        s.[TransactionValue],
        s.[ProductOwnerID],
        s.[ProductCode],
        s.[ProductFareVersion],
        s.[ProductSequenceNumber],
        s.[ProductSaleDeviceID],
        s.[SourceID],
        s.[ViaID],
        s.[DestinationID],
        s.[AdditionalZone1],
        s.[AdditionalZone10],
        s.[AdditionalZone11],
        s.[AdditionalZone12],
       s.[AdditionalZone13],
        s.[AdditionalZone14],
        s.[AdditionalZone15],
        s.[AdditionalZone16],
        s.[AdditionalZone17],
        s.[AdditionalZone18],
        s.[AdditionalZone19],
        s.[AdditionalZone2],
        s.[AdditionalZone20],
        s.[AdditionalZone21],
        s.[AdditionalZone22],
        s.[AdditionalZone23],
        s.[AdditionalZone24],
        s.[AdditionalZone25],
        s.[AdditionalZone26],
        s.[AdditionalZone27],
        s.[AdditionalZone3],
        s.[AdditionalZone4],
        s.[AdditionalZone5],
        s.[AdditionalZone6],
        s.[AdditionalZone7],
        s.[AdditionalZone8],
        s.[AdditionalZone9],
        s.[CentreZoneRadiusNumber],
        s.[ProductFareSetReferenceNumber],
        s.[ProductEffectiveDate],
        s.[ProductExpiryDate],
        s.[ProductNumberOfPeriod],
        s.[ProductPeriodType],
        s.[ProductPassengerClass],
        s.[ProductAutoRenew],
        s.[ProductAutoRenewLastDate],
        s.[ProductStatus],
        s.[ProductValidityStartDate],
        s.[ProductValidityEndDate],
        s.[tPurseRemainingValue],
        s.[tPurseNewRemainingValue],
        s.[tPurseTransactionSequenceNumber],
        s.[LastAddValueDeviceID],
        s.[tPurseYearlyConsumptionStatus],
        s.[tPurseYearlyConsumptionAmount],
        s.[tPurseYearlyConsumptionAmountMax],
        s.[DeleteProductSerialNumber],
        s.[StealthOperation],
        s.[FareSetReferenceNumber],
        s.[ProductAmount],
        s.[ProductFamily],
        s.[ProductTransactionSequenceNumber],
        s.[ProductTemporalValidity],
        s.[ProductTemporalValidityPeriodType],
        s.[SaleType],
        s.[tPurseStatus],
        s.[tPurseAutoLoadStatus],
        s.[tPurseAutoLoadAmount],
        s.[tPurseAutoLoadGroundAmount],
        s.[tPurseAutoLoadTriggerDay],
        s.[tPurseAutoLoadEndDate],
        s.[tPurseDailyAutoLoadCountRemaining],
        s.[tPurseDailyAutoLoadCountMax],
        s.[tPurseMonthlyAutoLoadStatus],
        s.[tPurseMonthlyAutoLoadAmount],
        s.[tPurseMonthlyAutoLoadAmountMax],
        s.[tPurseDeposit],
        s.[tPurseSerialNumber],
        s.[NationalBankID],
        s.[NationalBankAccountID],
        s.[BankFreeText],
        s.[ReasonCodeRefund],
        s.[RefundLevel],
        s.[ProductPeriodDeducted],
        s.[ProductPeriodDeductedCancelled],
        s.[ProductNonRefundablePeriodAmount],
        s.[ProductRemainingPeriod],
        s.[ProductRemainingPeriodAmount],
        s.[ReasonCodeReload],
        s.[tPurseModificationReasonCode],
        s.[tPurseModificationFreeText],
        s.[tPurseModificationFreeReference],
        s.[DiscountBasisFirstMonth],
        s.[DiscountBasisInUse],
        s.[DiscountLevel],
        s.[DiscountPointsEarned],
        s.[DiscountBasis1_Journeys],
        s.[DiscountBasis1_Kilometers],
        s.[DiscountBasis1_LevelM0],
        s.[DiscountBasis1_LevelM1],
        s.[DiscountBasis1_LevelM2],
        s.[DiscountBasis1_LevelM3],
        s.[DiscountBasis2_Journeys],
        s.[DiscountBasis2_Kilometers],
        s.[DiscountBasis2_LevelM0],
        s.[DiscountBasis2_LevelM1],
        s.[DiscountBasis2_LevelM2],
        s.[DiscountBasis2_LevelM3],
        s.[DiscountBasis3_Journeys],
        s.[DiscountBasis3_Kilometers],
        s.[DiscountBasis3_LevelM0],
        s.[DiscountBasis3_LevelM1],
        s.[DiscountBasis3_LevelM2],
        s.[DiscountBasis3_LevelM3],
        s.[tPurseStatusBefore],
        s.[tPurseAutoLoadStatusBefore],
        s.[tPurseAutoLoadAmountBefore],
        s.[tPurseAutoLoadGroundAmountBefore],
        s.[tPurseAutoLoadTriggerDayBefore],
        s.[tPurseAutoLoadEndDateBefore],
        s.[tPurseDailyAutoLoadCountRemainingBefore],
        s.[tPurseDailyAutoLoadCountMaxBefore],
        s.[tPurseMonthlyAutoLoadStatusBefore],
        s.[tPurseMonthlyAutoLoadAmountBefore],
        s.[tPurseMonthlyAutoLoadAmountMaxBefore],
        s.[ReasonCodeCardManagement],
        s.[AutoRenewLastDate],
        s.[SetAutoRenew],
        s.[HolderBirthDateBefore],
        s.[HolderProfile1IDBefore],
        s.[HolderProfileValidityDate1Before],
        s.[HolderProfile2IDBefore],
        s.[HolderProfileValidityDate2Before],
        s.[HolderPreferredClassBefore],
        s.[PassengerGroupType1Before],
        s.[PassengerGroupTotal1Before],
        s.[PassengerGroupSupplement1Before],
        s.[PassengerGroupType2Before],
        s.[PassengerGroupTotal2Before],
        s.[PassengerGroupSupplement2Before],
        s.[PassengerGroupType3Before],
        s.[PassengerGroupTotal3Before],
        s.[PassengerGroupSupplement3Before],
        s.[CustomerLanguageBefore],
        s.[DialoguePreferencesBefore],
        s.[LocalNationalBefore],
        s.[ExtensionBefore],
        s.[ChangedParameterList],
        s.[MediaTypeBefore],
        s.[SubsidizedDetermination],
        s.[ProductAmountMetroSupplementPart],
        s.[ProductRefundMetroSupplementPart],
        s.[ProductMetroPrepaid],
        s.[ProductMetroCapping],
		0,
        s.[FileId],
        sysutcdatetime()
    );
	end	;

GO
