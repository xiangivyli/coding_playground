WITH numberofamenity_id AS (
    SELECT 
        city,
        COUNT(*) AS NumberOfAmenities
    FROM 
        airbnb_search_details, 
        unnest(string_to_array(amenities, ',')) AS amenity
    GROUP BY 
        city
)

SELECT 
    city
FROM 
    numberofamenity_id
ORDER BY 
    NumberOfAmenities DESC
LIMIT 1;
