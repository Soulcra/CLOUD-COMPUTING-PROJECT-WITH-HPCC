IMPORT $;
//Print the complete Accounts table.
$.accounts;
//•	Filter and count all the accounts whose balance is greater than and equal to 5000.
COUNT($.accounts(Balance >= 5000));
//•	Filter and count all whose balance are greater than or equal to 5000 and has any Late Flag (30,60 or 90 days).
hasAnyLateFlag := $.Accounts.Late30Day = 1 OR $.Accounts.Late60Day = 1 OR $.Accounts.Late90Day = 1;
COUNT($.accounts(Balance >= 5000  AND hasAnyLateFlag));
//•	Filter and count all the Accounts who were opened after the year 1999.
COUNT($.accounts(OpenDate[..4] > '1999'));
//•	Filter and count all the accounts who do not have a term type designated. 
COUNT($.accounts(TermTypeR = 0));

