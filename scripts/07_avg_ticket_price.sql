SELECT fv.departure_city, cast(AVG(tf.amount)as decimal(10,1)) AS avg_ticket_price
FROM flights_v fv
INNER JOIN ticket_flights tf  ON fv.flight_id = tf.flight_id
GROUP BY fv.departure_city
ORDER BY avg_ticket_price DESC
LIMIT 10;
