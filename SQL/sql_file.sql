create database IT_SUPPORT_ANALYTICS;
USE IT_SUPPORT_ANALYTICS;

select *from it_support;

select *from support_tickets;


select count(*) as total_rows 
from support_tickets;

DESCRIBE support_tickets;
DESC support_tickets;

SELECT COUNT(*) AS missing_region
FROM support_tickets 
WHERE region IS NULL;

SELECT ticket_id, COUNT(*) AS count
FROM support_tickets
GROUP BY ticket_id
HAVING COUNT(*) > 1;


SELECT
    COUNT(*) - COUNT(ticket_id) AS missing_ticket_id,
    COUNT(*) - COUNT(customer_id) AS missing_customer_id,
    COUNT(*) - COUNT(region) AS missing_region,
    COUNT(*) - COUNT(priority) AS missing_priority,
    COUNT(*) - COUNT(status) AS missing_status,
    COUNT(*) - COUNT(csat_score) AS missing_csat_score,
    COUNT(*) - COUNT(resolution_time_hours) AS missing_resolution_time
FROM support_tickets;

SELECT
    priority,
    COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY priority
ORDER BY ticket_count DESC;

SELECT
    ticket_id,
    priority,
    status,
    resolution_time_hours
FROM support_tickets 
WHERE priority = 'urgent'
LIMIT 10;


select ticket_id , priority , status , resolution_time_hours
from support_tickets
where priority = "high"
and resolution_time_hours > 48 
limit 10;


SELECT
    ticket_id,
    priority,
    resolution_time_hours
FROM support_tickets
WHERE priority = 'urgent'
ORDER BY resolution_time_hours DESC
LIMIT 10;

select 
ticket_id , csat_score , priority , status
from support_tickets 
order by csat_score asc  
limit 10 ;

select distinct product_area from support_tickets;

select count(ticket_id) as total_tickets , round(avg(resolution_time_hours),2) as avg_resolution_time,
min(resolution_time_hours) as lowest_time , max(resolution_time_hours) as highest_resolution,
round(avg(csat_score),2) as avg_score
from support_tickets;

select priority , count(ticket_id) as total_tickets 
from support_tickets
group by priority;


SELECT
    region,
    COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY region;


SELECT
    channel,
    COUNT(*) AS ticket_count
FROM support_tickets 
GROUP BY channel;
SELECT COUNT(csat_score) AS tickets_with_csat
FROM support_tickets ;

SELECT
    issue_type,
    COUNT(*) AS ticket_count
FROM support_tickets 
GROUP BY issue_type;

SELECT
    customer_segment,
    COUNT(*) AS ticket_count
FROM support_tickets
GROUP BY customer_segment;

SELECT
    priority,
    round(AVG(resolution_time_hours),2) AS avg_resolution_time
FROM support_tickets 
GROUP BY priority;

SELECT
    priority,
    
    COUNT(*)
FROM support_tickets
GROUP BY priority;

select issue_type , count(ticket_id) as total_tickets 
from  support_tickets 
group by issue_type 
having total_tickets > 12000;

SELECT
    issue_type,
    round(AVG(resolution_time_hours),2) AS avg_resolution_time
FROM support_tickets
GROUP BY issue_type
HAVING AVG(resolution_time_hours) > 45;


select 
	priority, 
	count(ticket_id) as total_tickets ,
	round(avg(resolution_time_hours),2)as avg_resolution_time
    from support_tickets 
where priority <> "low"
group by priority
having avg_resolution_time > 30;

select customer_segment , count(ticket_id) as total_ticket
, round(avg(csat_score), 2)as avg_csat_score
from support_tickets
group by customer_segment
having avg_csat_score > 2   and total_ticket >2000;


select priority,  count(resolution_time_hours) as total_tickets,
case 
when resolution_time_hours <=24  then  "fast"
when resolution_time_hours  <=72 then "medium"
else "slow"
end as time_category 
from support_tickets
group by priority , time_category
limit 10 ;

select priority, 
case
  when resolution_time_hours <= 24 then "fast"
  when resolution_time_hours <= 72 then "medium"
  else "slow"
end as time_category,
count(ticket_id) as total_tickets
from support_tickets
group by priority, time_category
limit 10;

SELECT
    ticket_id,
    csat_score,
    COALESCE(csat_score, 0) AS csat_filled
FROM support_tickets
WHERE csat_score IS NULL
LIMIT 10;

select 
coalesce(resolution_time_hours, "bhai")
from support_tickets;

SELECT
    YEAR(created_at) AS year 
FROM support_tickets;

SELECT
    YEAR(created_at) AS year,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY YEAR(created_at)
ORDER BY year;


select 
monthname(created_at) as month,
count(ticket_iD) as total_ticket
from support_tickets
group by month
order by total_ticket asc
limit 3;

SELECT
    MONTH(created_at) AS month_number,
    MONTHNAME(created_at) AS month_name,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY
    MONTH(created_at),
    MONTHNAME(created_at)
ORDER BY month_number;

SELECT
    HOUR(created_at) AS hour,
    COUNT(*) AS total_tickets
FROM support_tickets
GROUP BY HOUR(created_at)
ORDER BY total_tickets DESC;

SELECT
    ticket_id,
    created_at,
    agent_first_reply,
    TIMESTAMPDIFF(
        HOUR,
        created_at,
        agent_first_reply
    ) AS first_response_hours
FROM support_tickets
LIMIT 20;


SELECT
    SUM(
        CASE
            WHEN status = 'resolved' THEN 1
            ELSE 0
        END
    ) AS resolved_tickets,

    SUM(
        CASE
            WHEN status = 'open' THEN 1
            ELSE 0
        END
    ) AS open_tickets
FROM support_tickets;

select 
round(
	sum(
		case 
			when status = "resolved" then 1 
            else 0 
            end )
            *100/count(*) ,2) 
            as resolved_percentage
		from support_tickets


select 
    sum(
		case
			when status = "resolved" then 1 
            else 0 
            end)
            as resolved_tickets , 
		sum(
			case
				when priority = "high" then 1 
                else 0 
                end )
                as high_priority_tickets , 
		sum(	
			case	
				when reopened = 1  then 1 
                else 0 
                end) 
                as reopened_tickets
		from support_tickets


with channel_analysis as ( 

select  channel , count(ticket_id) as total_tickets, 
round(avg(resolution_time_hours),2) as avg_resolution_time
from support_tickets
group by channel ) 

select channel , total_tickets , avg_resolution_time 
from channel_analysis 
where total_tickets > 15000 and avg_resolution_time < 50 ; 

