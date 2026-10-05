USE {{ params.schema_name }};
CREATE OR REPLACE TRANSIENT TABLE forestfires
        (
            id INT,
            y INT,
            month VARCHAR(25),
            day VARCHAR(25),
            ffmc FLOAT,
            dmc FLOAT,
            dc FLOAT,
            isi FLOAT,
            temp FLOAT,
            rh FLOAT,
            wind FLOAT,
            rain FLOAT,
            area FLOAT
        );
