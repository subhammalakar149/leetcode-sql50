/*
Write a solution to report the sum of all total investment values in 2016 tiv_2016, for all policyholders who:

have the same tiv_2015 value as one or more other policyholders, and
are not located in the same city as any other policyholder (i.e., the (lat, lon) attribute pairs must be unique).
Round tiv_2016 to two decimal places.
*/

select round(sum(TIV_2016),2) as TIV_2016 from insurance
where TIV_2015 in
(select TIV_2015 from insurance group by TIV_2015 having count(TIV_2015) >1)
and concat(LAT, LON) not in
(select concat(LAT, LON) from insurance group by LAT, LON having count(concat(LAT, LON)) >1)
