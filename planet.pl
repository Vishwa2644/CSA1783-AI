% Facts about planets
planet(mercury, rocky, 0.39, small).
planet(venus, rocky, 0.72, small).
planet(earth, rocky, 1.00, moderate).
planet(mars, rocky, 1.52, small).
planet(jupiter, gas_giant, 5.20, large).
planet(saturn, gas_giant, 9.58, large).
planet(uranus, ice_giant, 19.22, moderate).
planet(neptune, ice_giant, 30.05, moderate).


terrestrial(Planet) :- planet(Planet, rocky, _, _).
gas_giant(Planet) :- planet(Planet, gas_giant, _, _).
ice_giant(Planet) :- planet(Planet, ice_giant, _, _).
large_planet(Planet) :- planet(Planet, _, _, large).
small_planet(Planet) :- planet(Planet, _, _, small).

% Rule to find the distance of a planet from the sun
distance_from_sun(Planet, Distance) :- planet(Planet, _, Distance, _).
