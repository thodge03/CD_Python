-- 1. What query would you run to get the total revenue for March of 2012?
SELECT MONTHNAME(charged_datetime) AS Month, SUM(amount) AS total_revenue FROM billing
WHERE charged_datetime BETWEEN '2012-03-01 00:00:00' AND '2012-03-31 23:59:59';

-- 2. What query would you run to get total revenue collected from the client with an id of 2?
SELECT client_id, SUM(amount) AS total_revenue FROM billing
WHERE client_id = 2;

-- 3. What query would you run to get all the sites that client=10 owns?
SELECT client_id, domain_name FROM sites
WHERE client_id = 10;

-- 4. What query would you run to get total # of sites created per month per year for the client with an id of 1? What about for client=20?
SELECT MONTHNAME(created_datetime) AS month, YEAR(created_datetime) AS year, COUNT(domain_name) as site_count FROM sites
WHERE client_id = 1
GROUP BY month, year;

-- 5. What query would you run to get the total # of leads generated for each of the sites between January 1, 2011 to February 15, 2011?
SELECT sites.domain_name, COUNT(leads_id) AS number_of_leads, DATE_FORMAT(leads.registered_datetime, '%M %D, %Y') AS date_registered from leads
LEFT JOIN sites ON leads.site_id = sites.site_id
WHERE leads.registered_datetime BETWEEN '2011-01-01 00:00:00' AND '2011-02-15 23:59:59'
GROUP BY sites.domain_name;

-- 6. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients between January 1, 2011 to December 31, 2011?
-- ** NOT COMPLETED, BUT I UNDERSTAND JOIN AT THIS POINT**

-- 7. What query would you run to get a list of client names and the total # of leads we've generated for each client each month between months 1 - 6 of Year 2011?

-- 8. What query would you run to get a list of client names and the total # of leads we've generated for each of our clients' sites between January 1, 2011 to December 31, 2011? Order this query by client id.  Come up with a second query that shows all the clients, the site name(s), and the total number of leads generated from each site for all time.

-- 9. Write a single query that retrieves total revenue collected from each client for each month of the year. Order it by client id.

-- 10. Write a single query that retrieves all the sites that each client owns. Group the results so that each row shows a new client. It will become clearer when you add a new field called 'sites' that has all the sites that the client owns. (HINT: use GROUP_CONCAT)