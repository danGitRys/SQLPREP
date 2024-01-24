SELECT MAX(your_column) AS second_highest_value
FROM your_table
WHERE your_column < (SELECT MAX(your_column) FROM your_table);
