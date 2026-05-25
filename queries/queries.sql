/* Query_1 
What are all the models of electric vehicles registered in Washington? */ 

USE electric_vehicles;
SELECT DISTINCT Model_Year, Make_Name, Model_Name
FROM cars 
JOIN models  USING (model_id)
JOIN make USING (make_id)
WHERE Model_Year > 2000;

/* Query_2
What electric vehicle models have more than one registration in Washington State, and how many are there of each? */ 

USE electric_vehicles;
SELECT Model_name, model_year, cars.Model_id, COUNT(*) AS Model_Count
FROM cars
JOIN models ON cars.Model_id = models.Model_id
GROUP BY cars.Model_id, Model_name
ORDER BY Model_Count DESC;

/* Query_3
How many electric vehicles registered in Washington are battery powered? */ 

SELECT COUNT(*) AS totalElectricVehicles
FROM cars
JOIN models using (model_id)
WHERE battery_id = 1; 

/* Query_4 
What is the average number of locations each car in Washington has? */ 

SELECT AVG(locationsCount) AS avgLocationsPerElectricVehicle
FROM (
    SELECT car_id, COUNT(DISTINCT location_id) AS locationsCount
    FROM cars_locations
    WHERE car_id IN (SELECT car_id FROM battery WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle')
    GROUP BY car_id
) AS subquery;

/* Query_5 
What is the number of cars per city, and what is the average electric range for each city? */  
SELECT
    locations.City,
    COUNT(cars_locations.car_id) AS number_of_cars,
    AVG(models.Electric_Range) AS average_range
FROM
    cars_locations
JOIN
    locations ON cars_locations.location_id = locations.location_id
JOIN
    cars ON cars_locations.car_id = cars.car_id
JOIN
    models ON cars.model_id = models.model_id
GROUP BY
    locations.City, cars_locations.location_id
ORDER BY number_of_cars DESC;
