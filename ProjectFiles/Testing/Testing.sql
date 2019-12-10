DROP TABLE call
DROP TABLE customer
DROP TABLE rate
DROP TABLE peakTime
DROP TABLE salesRep
DROP TABLE service
DROP TABLE country

----Add Peak Times
--EXEC addPeakTimes 'C:\Users\Autobots\Desktop\ProjectFiles\PeakTimes.xlsx'

----First Sequence
--Add New Customers
EXEC addNewCustomers 'C:\Users\Autobots\Desktop\ProjectFiles\Customers.xlsx'
--Add rates effective from 2007-09-01
EXEC updateRates 'C:\Users\Autobots\Desktop\ProjectFiles\Rates_20070901.xls'
--Add call details for november
EXEC addCallDetails 'C:\Users\Autobots\Desktop\ProjectFiles\Calls_Nov_2007.xls'
SELECT * FROM rate
----Create Customer Bills
EXEC createCustomerBill 7139375437, 2007, 11
----Generate Traffic Summary
EXEC getMonthlyTrafficSummary 2007, 11, 'C:\Users\Autobots\Desktop\ProjectFiles\Traffic\november.xlsx'


----Second sequence
--Add rates effective from 2007-12-15
EXEC updateRates 'C:\Users\Autobots\Desktop\ProjectFiles\Rates_20071215.xls'
--Add call details dec 2007 
EXEC addCallDetails 'C:\Users\Autobots\Desktop\ProjectFiles\Calls_Dec_2007.xls'
----Create Customer Bills
EXEC createCustomerBill 7139375437, 2007, 12
----Generate Traffic Summary
EXEC getMonthlyTrafficSummary 2007, 12, 'C:\Users\Autobots\Desktop\ProjectFiles\Traffic\december.xlsx'


----Third Sequence
--Add rates effective from 2008-01-01
EXEC updateRates 'C:\Users\Autobots\Desktop\ProjectFiles\Rates_20080101.xls'
--Add call details 
EXEC addCallDetails 'C:\Users\Autobots\Desktop\ProjectFiles\Calls_Jan15_2008.xls'
--Add rates effective from 2008-01-15
EXEC updateRates 'C:\Users\Autobots\Desktop\ProjectFiles\Rates_20080115.xls'
--Add call details 
EXEC addCallDetails 'C:\Users\Autobots\Desktop\ProjectFiles\Calls_Jan_2008.xls'
----Create Customer Bills
EXEC createCustomerBill 7139375437, 2008, 1
----Generate Traffic Summary
EXEC getMonthlyTrafficSummary 2008, 1, 'C:\Users\Autobots\Desktop\ProjectFiles\Traffic\january.xlsx'
----Generate Sales Rep Commission
EXEC getSalesRepCommission 2008, 1, 'C:\Users\Autobots\Desktop\ProjectFiles\Commission\january.xlsx'



--EXEC addSingleCustomer @telephone = 1234565959, @name = "Joaam1", @address = "Fairfield",@serviceName = "GACB1",@salesRepId = 12,@commission = 8 

----Rate Sheets
EXEC getRateSheet 'Spectra', 'USA'








