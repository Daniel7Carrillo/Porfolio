SELECT 
       [DateKey]
      ,[FullDateAlternateKey] AS Date
      ,LEFT(FullDateAlternateKey,7) AS YearMonth  -- AñoMes
      ,[CalendarYear] AS Year
      --,[DayNumberOfWeek]
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
      --,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      --,[WeekNumberOfYear]
      ,[EnglishMonthName] AS Month
      ,LEFT(EnglishMonthName,3) AS Mon
      --,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month_nr
      ,[CalendarQuarter] AS Quarter
      ,[EnglishDayNameOfWeek] AS Day    
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2022].[dbo].[DimDate]
  WHERE [CalendarYear] >= 2021