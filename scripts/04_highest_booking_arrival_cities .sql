SELECT   to_char(f.scheduled_departure, 'DD.MM.YYYY') AS when,
         f.arrival_city || ' (' || f.arrival_airport || ')' AS arrival
FROM     ticket_flights tf
         JOIN flights_v f ON tf.flight_id = f.flight_id
WHERE    tf.ticket_no = '0005432537033' 
ORDER BY f.scheduled_departure;