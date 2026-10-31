/* Practice Problem 16
In the invoices table divide the hours_spent by the hours_rate.
Return the activity_id as well. This helps give us an efficiency ratio a
lower ratio could indicate a cost effective task
*/

SELECT
    activity_id,
    nerd_role,
    hours_spent/hours_rate AS inverse_efficiency_ratio

FROM invoices

ORDER BY inverse_efficiency_ratio ASC;