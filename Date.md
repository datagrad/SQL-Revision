### Various date and time part of datetime

```
SELECT 	
		NOW() as "Date_Time",
		DATE(NOW()) as "Date",
		TIME(NOW()) as "Time",
		YEAR(NOW()) as "Year",
		QUARTER(NOW()) as "Quarter",
		MONTH(NOW()) as "Month",
		WEEK(NOW()) as "Week",
		DAY(NOW()) as "Day",
		DAYNAME(NOW()) as "Day_Name",
		HOUR(NOW()),
		MINUTE(NOW()),
		SECOND(NOW());
```

### ADDDATE() or DATE_ADD() 
* Add time values (intervals) to a date value
```
SELECT 
      ADDDATE('2013-01-01', INTERVAL 45 DAY) as "Post Date",
      DATE_ADD('2013-01-01', INTERVAL 45 DAY) as "Post Date";
 ```
 
### SUBDATE() or DATE_SUB()
* Subtract a time value (interval) from a date

```
SELECT
      SUBDATE('2013-01-01', INTERVAL 45 DAY) as "Pre Date",
      DATE_SUB('2013-01-01', INTERVAL 45 DAY) as "Pre Date";
```

-- Return the current date
```
SELECT CURDATE(), 
      CURRENT_DATE(),
      CURRENT_DATE;
```

-- Return the current time
SELECT CURRENT_TIME(), CURRENT_TIME, CURTIME();

-- Returns the current date and time
SELECT NOW(), CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP;



-- Format Date and Time

SELECT 	DATE_FORMAT('2013-10-04 22:23:00', '%W %M %Y'),
		DATE_FORMAT('2013-10-04 22:23:00', '%d %b %Y %T:%f'),
		DATE_FORMAT('2013-10-04 22:23:00', '%b %d %Y %h:%i %p');

/*
Format	Description
%a	Abbreviated weekday name
%b	Abbreviated month name
%c	Month, numeric
%D	Day of month with English suffix
%d	Day of month, numeric (00-31)
%e	Day of month, numeric (0-31)
%f	Microseconds
%H	Hour (00-23)
%h	Hour (01-12)
%I	Hour (01-12)
%i	Minutes, numeric (00-59)
%j	Day of year (001-366)
%k	Hour (0-23)
%l	Hour (1-12)
%M	Month name
%m	Month, numeric (00-12)
%p	AM or PM
%r	Time, 12-hour (hh:mm:ss AM or PM)
%S	Seconds (00-59)
%s	Seconds (00-59)
%T	Time, 24-hour (hh:mm:ss)
%U	Week (00-53) where Sunday is the first day of week
%u	Week (00-53) where Monday is the first day of week
%V	Week (01-53) where Sunday is the first day of week, used with %X
%v	Week (01-53) where Monday is the first day of week, used with %x
%W	Weekday name
%w	Day of the week (0=Sunday, 6=Saturday)
%X	Year of the week where Sunday is the first day of week, four digits, used with %V
%x	Year of the week where Monday is the first day of week, four digits, used with %v
%Y	Year, four digits
%y	Year, two digits
*/
http://dev.mysql.com/doc/refman/5.6/en/date-and-time-functions.html#function_addtime


-- Table Column
SELECT rental_date, DATE_FORMAT(rental_date, '%W %M %Y')
FROM sakila.rental;































