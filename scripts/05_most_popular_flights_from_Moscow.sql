SELECT arrival_city , COUNT(*) as num_flights
FROM flights_v
WHERE departure_city  = 'Москва'
GROUP BY arrival_city 
ORDER BY num_flights DESC
LIMIT 10;