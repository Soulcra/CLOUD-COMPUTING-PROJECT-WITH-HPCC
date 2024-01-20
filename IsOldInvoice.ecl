IMPORT $;

//•	Create a Local Boolean definition called IsInvoice that will test if an account record is an actual invoice 
IsInvoice := $.accounts.TradeType = 'I';
//•	Create a Local Boolean definition called IsBefore1995, that will test if an account record report was prior to 1995
IsBefore1995 := $.accounts.ReportDate <> '' AND $.accounts.ReportDate[..4] < '1995';
//•	Create a local Boolean definition called IsActiveBalance that will test if an account record invoice has any existing balance
IsActiveBalance := $.accounts.Balance > 0;
//•	Create the IsOldInvoice Boolean definition (make sure to EXPORT this definition) so that it results in TRUE for any account record before 1995 that is marked as an invoice and has an existing balance due.
EXPORT IsOldInvoice := $.accounts(IsInvoice AND IsBefore1995 AND IsActiveBalance);

