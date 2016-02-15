@enum DAY_OF_WEEK sun=0 mon=1 tue=2 wed=3 thu=4 fri=5 sat=6
@enum MONTH_OF_YEAR jan=0 feb=1 mar=2 apr=3 may=4 jun=5 jul=6 aug=7 sep=8 oct=9 nov=10 dec=11

THIRTY_DAYS = (sep, apr, jun, nov)
THIRTYONE_DAYS = (jan, mar, may, jul, aug, oct, dec)

sunday_counter = 0

# Initial calendar conditions for Jan 1, 1901
day = 1
weekday = tue
month = jan
year = 1901

while year < 2001

    # Counter condition
    if weekday == sun && day == 1
        sunday_counter += 1
        println(sunday_counter, ":  ", month, " ", day, " ", year)
    end

    is_leap_year = ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0)

    # Advance the day of the week
    weekday = DAY_OF_WEEK((Int(weekday) + 1) % 7)

    # Advance the year if necessay
    if month == dec && day == 31
        year += 1
    end

    # Advance the calendars
    if (month in THIRTY_DAYS && day == 30) ||
       (month in THIRTYONE_DAYS && day == 31) ||
       (month == feb && ((!is_leap_year && day == 28) || (is_leap_year && day == 29)))
        day = 1
        month = MONTH_OF_YEAR((Int(month) + 1) % 12)
    else
        day += 1
    end

end


println(sunday_counter)

