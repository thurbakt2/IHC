select case
    when mod(the_number,15)=0 then 'FizzBuzz'
    when mod(the_number,3)=0 then 'Fizz'
    when mod(the_number,5)=0 then 'Buzz'
    else to_char(the_number)
    end as "FizzBuzz!"
from my_numbers
order by the_number;
