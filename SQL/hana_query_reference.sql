/*
  SAP HANA Query – Reference Only

  Purpose:
  Retrieves Purchase Order and Sales data
  for Power BI reporting and analysis.

  NOTE:
  This is a reference structure only.
  Actual schema names and business logic
  are masked for security reasons.
*/

SELECT
    T0."DocEntry",
    T0."DocNum",
    T0."DocDate",
    YEAR(T0."DocDate") AS "DocYear",
    MONTH(T0."DocDate") AS "DocMonth",
    T0."CardCode",
    T0."CardName" AS "CustomerName",
    T2."SlpName" AS "SalesPerson",
    T1."ItemCode",
    T1."Dscription" AS "ItemName",
    T3."ItmsGrpNam" AS "ItemGroup",
    T0."DocTotal" AS "InvoiceTotal",
    T1."Quantity",
    T1."LineTotal",
    CASE
        WHEN T4."GroupName" LIKE '%Large%' THEN 'Large Accounts'
        WHEN T4."GroupName" LIKE '%Distributor%' THEN 'Distributors'
        ELSE 'Small Accounts'
    END AS "CustomerGroup"
FROM
    OINV T0
    INNER JOIN INV1 T1 ON T0."DocEntry" = T1."DocEntry"
    LEFT JOIN OSLP T2 ON T0."SlpCode" = T2."SlpCode"
    LEFT JOIN OITM T5 ON T1."ItemCode" = T5."ItemCode"
    LEFT JOIN OITB T3 ON T5."ItmsGrpCod" = T3."ItmsGrpCod"
    LEFT JOIN OCRD T4 ON T0."CardCode" = T4."CardCode"
WHERE
    T0."CANCELED" = 'N'
ORDER BY
    T0."DocDate";

