ALTER table car_fuel.fuel_consumption
ADD FOREIGN KEY transmission_id(transmission_id)
REFERENCES transmission(transmission_id)
ON DELETE NO ACTION
ON UPDATE CASCADE;



ALTER table car_fuel.fuel_consumption
ADD FOREIGN KEY fuel_type_id (fuel_type_id)
REFERENCES fuel_type (fuel_type_id)
ON DELETE NO ACTION
ON UPDATE CASCADE;
