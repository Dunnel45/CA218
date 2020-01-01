SELECT co.Name, co.Code, cl.Language, cl.Percentage
FROM country co
JOIN countrylanguage cl ON
co.Code = cl.CountryCode
WHERE cl.Language = (SELECT Language FROM
countrylanguage Where
CountryCode = cl.CountryCode ORDER BY
percentage DESC LIMIT 1);
