SELECT
    d.district_id,
    d.district_number,
    gb.geo_boundary_name AS district_name,
    r.religion_id,
    r.religion_name,
    COUNT(*) AS total_population
FROM
    voterdb.district d
    JOIN voterdb.geographical_boundary gb ON d.geo_boundary_id = gb.geo_boundary_id
    JOIN voterdb.address a ON a.geo_boundary_id = gb.geo_boundary_id
    JOIN voterdb.person p ON a.person_id = p.person_id
    JOIN voterdb.preferences pref ON p.person_id = pref.person_id
    JOIN voterdb.religious_identity ri ON pref.preferences_id = ri.preference_id
    JOIN voterdb.religious_affiliation_lookup ral ON ri.affiliation_lookup_code = ral.affiliation_code
    JOIN voterdb.religion r ON ral.religion_id = r.religion_id
GROUP BY
    d.district_id,
    r.religion_id
ORDER BY
    d.district_id,
    total_population DESC;