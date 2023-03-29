SELECT bp.seat_no, COUNT(*) as num_passengers
FROM boarding_passes bp
INNER JOIN ticket_flights tf ON bp.ticket_no = tf.ticket_no
WHERE tf.fare_conditions = 'Business'
GROUP BY bp.seat_no
ORDER BY num_passengers DESC
LIMIT 5;

