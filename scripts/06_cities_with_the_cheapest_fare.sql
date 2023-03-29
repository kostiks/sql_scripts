SELECT fv.departure_city, 
  MIN(tf.amount) AS cheapest_fare
FROM flights_v fv
INNER JOIN ticket_flights tf  ON fv.flight_id = tf.flight_id
GROUP BY fv.departure_city
ORDER BY cheapest_fare asc;
