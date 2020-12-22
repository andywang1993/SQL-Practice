#A median is defined as a number separating the higher half of a data set from the lower half.
#Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.


SELECT ROUND(LAT_N,4) FROM
(SELECT t1.LAT_N, COUNT(*) AS rnk
FROM STATION AS t1,
     STATION AS t2
WHERE t1.LAT_N <= t2.LAT_N
GROUP BY t1.LAT_N
ORDER BY rnk) AS t3 
WHERE rnk = (SELECT (COUNT(*) + 1) DIV 2 FROM STATION);
