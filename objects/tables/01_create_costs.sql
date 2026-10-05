USE {{ params.schema_name }};
CREATE OR REPLACE TRANSIENT TABLE costs
        (
            id INT,
            land_damage_cost INT,
            property_damage_cost INT,
            lost_profits_cost INT
        );
