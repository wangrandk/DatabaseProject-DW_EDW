CREATE TABLE [dim].[QA_DigitalSurvey_Variable] (
    [VariableKey]         INT             IDENTITY (1, 1) NOT NULL,
    [SurveyId]            NVARCHAR (50)   NOT NULL,
    [VariableName]        NVARCHAR (50)   NOT NULL,
    [VariableDescription] NVARCHAR (4000) NULL,
    [ValidFromDate]       DATE            NULL,
    [ValidToDate]         DATE            NULL,
    [IsCurrent]           BIT             NULL,
    CONSTRAINT [PK_QA_DigitalSurvey_Variable] PRIMARY KEY CLUSTERED ([VariableKey] ASC)
);


GO

