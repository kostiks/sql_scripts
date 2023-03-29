SELECT arrival_city as city,
       arrival_airport as airport_code,
       arrival_airport_name as airport_name,
       days_of_week,
       duration
FROM   routes 
WHERE  departure_city = 'Волгоград';