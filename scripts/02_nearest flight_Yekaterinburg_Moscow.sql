SELECT *
FROM flights_v 
WHERE departure_city  = 'Екатеринбург' AND arrival_city  = 'Москва'
  AND scheduled_departure  > bookings.now()
ORDER BY scheduled_departure  ASC
LIMIT 1;