/* Practice Problem 15: Operators
In the invoices table add the hours_spent to the hour_rate. This could be
used to priortize tasks, higher values could indicate tasks that are both
time-intensive and costly and costly, therefore requiring early attention
*/
SELECT
    nerd_role,
    hours_spent, hours_rate,
    hours_spent + hours_rate AS priority_score

FROM invoices

ORDER BY priority_score DESC;

-- if by "add" it means to calculate the total spending on those jobs--

SELECT
    nerd_role,
    hours_spent, hours_rate,
    hours_spent * hours_rate AS total_salary

FROM invoices

ORDER BY total_salary DESC;