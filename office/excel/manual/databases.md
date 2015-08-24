---
layout: book
title: Excel Manual
description: "Database management"
image: cabecera-estadistica.jpg
tags: [Office, Excel]
share: true
---

A [database](https://en.wikipedia.org/wiki/Database) is an organised collection of data. Usually databases are composed of records that contains information about the same object (person, company, product, etc), and records are composed of fields that contains every piece of information (name, address, phone number, price, etc.). 

**Example** The next table show a students database with fields *First name, Last name, Address, City, Birth date, Average grade* and *Passed credits*. 

| First name | Last name       | Address                   | City     | Birth date | Average grade | Passed credits |
|------------|-----------------|---------------------------|----------|:----------:|--------------:|---------------:|
| María      | Sánchez García  | c. Estrella, 9            | Madrid   | 23/10/1994 |           5,8 |             78 |
| Carlos     | Pérez López     | c. Bravo Murillo, 34 3º-D | Madrid   | 16/08/1993 |           7,9 |            123 |
| Luis       | González Roca   | c. Antonio López, 67 1º-A | Madrid   | 07/07/1995 |           8,2 |             45 |
| Camen      | Aguirre Jordán  | c. Espada, 12 4º-C        | Sevilla  | 06/03/1994 |           4,2 |             28 |
| Luisa      | Martín Garrido  | c. Cervantes, 14          | Albacete | 22/01/1994 |           6,7 |             54 |
| Alberto    | Pintado Marín   | c. Arroyo, 27 2º-C        | Sevilla  | 10/03/1995 |           4,1 |             12 |
| Marina     | Gómez Gómez     | c. Velázquez 28 4º-A      | Madrid   | 12/04/1994 |           7,7 |             62 |
| Javier     | Yagüe Pinzón    | c. Rosales, 76 8º-B       | Madrid   | 18/12/1993 |           6,1 |             82 |
| Lucas      | Guerrero Monzón | c. Isaac Peral, 30 Bajo   | Albacete | 12/01/1995 |           5,4 |             32 |

## Database creation in Excel 

Excel allows to define databases as tables where fields are defined in columns and records in rows. The first row of the table contains labels for each field. This tables are also called *data lists*. 

To create a data list first enter the name of the fields in the first row of the table, each in one column. This first row with the field names is the *headers row*. Field names must be unique and there musn't be blank cells in the headers row. After creating the fields enter first record data in the appropriate columns of the row immediately below the one containing the field names. To Excel recognise this table as a data list, click the `Format as Table` button on the ribbon’s `Home` tab and then click a thumbnail of one of the table styles in the drop-down gallery.

After that you can enter the remaining records, one by row. After entering the data of a field press the `Tab` key to go to the next field of the same record, or to the first field of the next record if you are in the last field of a record. 

**Example**. The next animation shows how create a data list of students with the fields *First name, Last name, Address, City, Birth date, Average grade* and *Passed credits*.

<div style="text-align:center">
<img src="img/example_database_creation.gif" width="800px" alt="example of database creation" />
</div>
&nbsp;

## Data validation 
When entering data to a data list is important to validate data to maintain database integrity. Data validation allows to specify which type and range of data are accepted by a cell or field (column). To apply a validation rule to a field, select the field column of the data list and click `Data validation` button of the `Data tools` panel on the ribbon's `Data` tab. In the dialog that appears, select the validation criteria from the drop-down list of the `Setting`:

- *Whole number* allows only integers numbers between a specified minimum and a maximum or greater o less than a specified number. 
- *Decimal* allows decimal numbers between a specified minimum and maximum or greater or less than a specified number. 
- *List* allows a list of defined entries.
- *Date* allows dates between two specified dates or before or after a specified date.  
- *Time* allows times between two specified times or before of after a specified time. 
- *Text length* allows text with a restricted length.

After selecting the validating criteria, enter the correspondent parameters (minimum or maximum numbers, dates, times or range with the entries of the list). You can also define an input message in the `Input Message` tab and an error message in the `Error Alert` tab that will be shown if an invalid entry is entered in the field. 

**Example**. The next animation shows how create a validation rule for the *Average grade* field in a data list of students.

<div style="text-align:center">
<img src="img/example_data_validation.gif" width="800px" alt="example of database creation" />
</div>
&nbsp;


## Data sorting
To sort the data list records on a single field, you simply click that field’s `AutoFilter` button (the button with the triangle that appears to the right of the header) and then click the appropriate sort option on its drop-down list:
- Sort A to Z or Sort Z to A in a text field.
- Sort Smallest to Largest or Sort Largest to Smallest in a number field.
- Sort Oldest to Newest or Sort Newest to Oldest in a date field.

Other option to sort a data list on a field is to select a cell of the field column an click the `Sort A to Z` button <img src="img/button_az.png" width="30px" alt="A to Z sorting button" />  of the `Sort & Filter` panel on the ribbon's `Data` tab, to sort ascending, or the `Sort Z to A` button <img src="img/button_za.png" width="30px" alt="Z to A sorting button" /> to sort descending.

Excel then will reorder all the records in the data list according to the ascending or descending order selected.

**Example**. The next animation shows how to sort a students database. First ascending on the *Birth date* field, next descending on the *Average degree* field, and finally ascending on the *Last name* field. 

<div style="text-align:center">
<img src="img/example_database_sorting.gif" width="800px" alt="example of sorting a database on a single field" />
</div>
&nbsp;

If you need to sort a data list on more than one field, select a cell of the data list and click the `Sort` button of the `Sort & Filter` panel on the ribbon's `Data` tab. Then, in the dialog that appears, select the first sorting field column and the sorting order (ascending or descending), next the second sorting field column an the sorting order, and so on. 

**Example**. The next animation shows how to sort a students database on the fields *City* ascending and *Average grade* descending.

<div style="text-align:center">
<img src="img/example_database_sorting_on_multiple_fields.gif" width="800px" alt="example of sorting a database on multiple fields" />
</div>
&nbsp;

You can also sort a range of cells in general indicating the name of the columns instead of the field names. 

## Data filtering
With huge databases it's difficult to find the desired information. To overcome this problem Excel provide several methods to filter the database. Filtering is the procedure for specifying the data that you want displayed in an Excel data list.

### Apply a simple filter
The easiest way to perform this basic type of filtering on a field is to click the `AutoFilter` button (the button with the triangle that appears to the right of the header). This display a drop-down menu that contains at the end a list box with a complete listing of all entries
made in that column, each with its own check box. In this list click the check box in front of the (Select All) option at the top of the field’s
list box to clear the check boxes, then click each of the check boxes corresponding to the entries for the records you do want displayed in the filtered data list, and finally click OK. Excel then hides rows in the data list for all records except for those that contain the entries you just selected. 

**Example** The next animation shows how to filter the students of Sevilla and Albacete in a students database.  

<div style="text-align:center">
<img src="img/example_database_filtering_simple.gif" width="800px" alt="example of filtering a database with a single filter" />
</div>
&nbsp;

To perform more sophisticated filters you can use the other filter options of the `AutoFiller` button. These filter options depend on the type of entries in the field:

- If the column only contains dates, the menu contains a `Date Filters` option with a submenu that allows you to filter dates equals to, before o after a given date; dates between two given dates; dates of today, yesterday and tomorrow; dates of this week, last week and next week; dates of this month, last month and next month; dates of this quarter, last quarter and next quarter; dates of this year, last year and next year; and dates in a specific period (quarter or month). 

- If the column contains only numbers or a mixture of dates with numbers, the menu contains a `Number Filters` option with a submenu that allows you to filter numbers equal or not equal to a given number; numbers greater than, greater than or equal to, less than, less than or equal to a given number; numbers between two given numbers; top 10 numbers; number above the average and numbers below the average. 

- If the column only text or a mixture of text, date and numbers, the menu contains a `Text Filters` option with a submenu that allows you to filter text equal or not equal to a given text; text that begins or end with a given text; and text that contains or does not contains a given text. 

If the filter selected requires some parameter (date, number or text), a dialog appears where you must enter that data and click OK. 

**Example** The next animation shows how to filter the students born before 1/1/1995, with an average grade greater than or equal to 5, and whose name begins with M, in a students database. 

<div style="text-align:center">
<img src="img/example_database_filtering_complex.gif" width="800px" alt="example of filtering a database with multiple filters" />
</div>
&nbsp;

### Apply a complex filter 
Simple filters are enough in most cases, but sometime you need to filter data according to more complex criteria. Fortunately Excel provides a method to perform filters based on calculated criteria with formulas. 

To perform a filter with calculated criteria first you have to specify the criteria somewhere in the worksheet that contains the data list. The criteria must have a cell header and a logical formula in the cell just below. In the logical formula you can use functions and references to the cells, but it's important to note that all references must be to cells in the first row of the data list. After that, to apply the filter you need to select a cell in the data list and click the `Advanced` button <img src="img/button_advanced_filter.png" width="30px" alt="A to Z sorting button" /> of the `Sort & Filter` panel on the ribbons's `Data` tab. This shows a dialog where you have to enter the range of the data list (usually Excel auto recognise it), the range of the filter criteria and click OK. Excel will apply the logical formula to every row of the data list and show only the records where the formula returns TRUE. 

**Example** The next animation shows how to filter the students with an average grade greater than or equal to 5, and a number of passed credits over the average, in a students database, using a calculated criteria. Observe how is used the data list name and the field name to reference the column of passed credits in the average calculation. 

<div style="text-align:center">
<img src="img/example_database_filtering_calculated_criteria.gif" width="800px" alt="example of filtering a database with a calculated criteria" />
</div>
&nbsp;


### Clear a filter
To clear an active filter in a data list click the `AutoFilter` button of the column with the active filter and select the option `Clear Filter`. After that Excel will show all the records hidden by the removed filter, but the rest of filters will continue active. To clear all the filters in a data list, select a cell of the data list and then click the `Clear` button of the `Sort & Filter` panel on the ribbons's `Data` tab. This will show all the records of the data list. 

## Database functions
Excel have some predefined functions that can be applied to data list. They apply a function to records in a data list that match a criteria you specify. 

### Define a criteria
The criteria must be defined in a range and must include at least one header with a field name that indicates the field whose values are to be evaluated and one cell just below with the value or expression to be used in the evaluation. The expression with the condition is a text string starting with a logical comparator (`=`,`>`,`<`,`>=`,`<=`,`<>`) or a pattern text with wildcards like the question mark `?` (that matches any character) or the asterisk `*` (that matches any character string). You can specify multiple conditions in different columns. If you want to apply the function to all the records of the data list, just leave the cell with the criteria conditions blank. 

### DSUM function
The function `DSUM` sums the values in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DSUM(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

**Example** The next animation shows how to sum the passed credits of students from Madrid born in 1994 or after with an average grade greater or equal to 6, in a students database.

<div style="text-align:center">
<img src="img/example_function_dsum.gif" width="800px" alt="example of applying the dsum function to a database" />
</div>
&nbsp;

### DCOUNT function
The function `DCOUNT` counts the values in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DCOUNT(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

**Example** The next animation shows how to count the students with an average grade greater than or equal to 6 whose name begins with L, in a students database.

<div style="text-align:center">
<img src="img/example_function_dcount.gif" width="800px" alt="example of applying the dsum function to a database" />
</div>
&nbsp;

### DMIN function
The function `DMIN` returns the minimum in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DMIN(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

### DMAX function
The function `DMAX` returns the maximum in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DMAX(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

**Example** The next animation shows how to calculate the minimum and the maximum average grade of students from Madrid born before 1995, in a students database.

<div style="text-align:center">
<img src="img/example_function_dmin_dmax.gif" width="800px" alt="example of applying the dmin and dmax functions to a database" />
</div>
&nbsp;

### DAVERAGE function
The function `DAVERAGE` averages the values in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DAVERAGE(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

**Example** The next animation shows how to average the average grades of students from Madrid born in 1994 or after with an average grade greater or equal to 6, in a students database.

<div style="text-align:center">
<img src="img/example_function_daverage.gif" width="800px" alt="example of applying the daverage function to a database" />
</div>
&nbsp;


### DSTDEVP function
The function `DSTDEVP` calculates the standard deviation the values in a numeric field (column) of records in a data list that match the criteria you specify. Its syntax is `DSTDEVP(database,field,criteria)`, where *database* is the range of the data list, *field* is the name of the field that contains the values to add up (it must be a numeric column) enclosed in double quotes, and *criteria* is the range that contains the criteria with the conditions you specify. 

**Example** The next animation shows how to calculate the standard deviation of average grades of students from Madrid born in Madrid before 1995, in a students database.

<div style="text-align:center">
<img src="img/example_function_dstdevp.gif" width="800px" alt="example of applying the dstdevp function to a database" />
</div>
&nbsp;

## Importing databases
Excel offers the possibility to import data from diverse sources like csv text files, XML files, relational databases like Access or web data sources. 

### Importing data from csv text files
To see how to import data from csv text file visit the section [Import from csv format](/office/excel/manual/introduction.html#Importfromcsvformat).

### Importing from web data sources
There are many web pages that offers open data in a suitable format for import from Excel. To import data from a web data source click the `From Web` buttom of the `Get External Data` panel on the ribbon's `Data` tab. This opens a web browser where you must enter the URL of the page with de data source. When the browser shows the data table some yellow arrows appears that allow you to select the rows and columns of the table to import.  

**Example** The next animation shows how to import the IBEX 35 serie from [Yahoo finances](https://es.finance.yahoo.com/).

<div style="text-align:center">
<img src="img/example_import_web.gif" width="800px" alt="example of importing data from web data sources" />
</div>
&nbsp;

### Importing data from Qandl
[Quandl](https://www.quandl.com/) is a finance and economic data repository with hundred of open data series. It's possible to import data from Qandl to Excel easily, but you need the Quandl add in for Excel. To install the Quandl add in for Excel follow these [instructions](https://www.quandl.com/help/excel). 

After installing the add in a new tab labelled `Quandl` appears in the ribbon. To import a data serie from Qandl, first search the data serie clicking the `Search` button on the ribbon's `Quandl` tab, enter some key words for the search and click the `Show Results` button, select the data serie desired from the search results, click the `Insert Selected Codes` buttom and click the `Close` button. This will insert the Quandl code of the data serie (if you know the Quandl code of the data serie you can avoid the search and enter it directly in a cell). Finally, select the cell with the Quandl code and click the `Download` button on the ribbon's `Quandl` tab. This will download the data serie and put it in a range below the cell that contais the Quandl code. 

**Example** The next animation shows how to import the IBEX 35 serie from [Quandl](https://www.quandl.com/).

<div style="text-align:center">
<img src="img/example_import_quandl.gif" width="800px" alt="example of importing data from Qandl data repository" />
</div>
&nbsp;

     