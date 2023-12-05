SELECT *
    FROM owners
        FULL JOIN vehicles
            ON vehicles.owner_id = owners.id;


SELECT owners.first_name, COUNT(*)
    FROM vehicles
        LEFT OUTER JOIN owners
            ON vehicles.owner_id = owners.id
    GROUP BY owners.id
    ORDER BY owners.first_name;


SELECT owners.first_name, AVG(vehicles.price)::integer, COUNT(*)
    FROM vehicles
            LEFT OUTER JOIN owners
                ON vehicles.owner_id = owners.id
    GROUP BY owners.id
    HAVING COUNT(*) > 1 AND AVG(vehicles.price)::integer > 10000
    ORDER BY owners.first_name DESC;
