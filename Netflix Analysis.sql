use project;
select * from netflix_titles;

-- Total number of count in type
select type, count(*) as total_number_of_count
from netflix_titles;

-- Average number of rating
select avg(rating)
from netflix_titles;


-- List Unique type
select distinct type
 from netflix_titles;
 
-- Find the relese specific year
select * from netflix_titles
where release_year=2020;

select * from netflix_titles
where release_year = 2021;

select * from netflix_titles
where release_year = 2019;

-- Calculate average duration of movies
select avg(duration) avg_duration
from netflix_titles
where type='movie';

select avg(duration) avg_duartion
from netflix_titles
where type='TV Show';

-- Filter movie by rating
select * from netflix_titles
where rating='PG-13';


-- Group by movie count with country
select country, count(*) as movie_count
from netflix_titles
group by country;

select director, count(*) as movie_count
from netflix_titles
group by director;
 
 
 
 -- find movie added in specific month
 select * from netflix_titles
 where date_format(date_added, '%M')='September 7, 2021';
 
 select * from netflix_titles
 where director ='Kirsten Johnson';
 
 select * from netflix_titles
 where director = 'K.S. Ravikumar';
 
 select * from netflix_titles
 where cast like 'Kamal Hassan, Meena, Gemini Ganesan, Heera Rajgopal, Nassar, S.P. Balasubrahmanyam';
 
 select type, release_year, count(*) as count_movies
 from netflix_titles
 group by type, release_year;
 
 -- Find movie with a duration greater than ceratain threshold
 select * from netflix_titles
 where type='movie' and duration>120;
 
 select * from netflix_titles
 where type='movie' and duration<100;
 
 select*from netflix_titles
 where type='TV Show' and duration>10;
 
 
-- Find the latest added movie
select * from netflix_titles
order by date_added desc
limit 5;

-- Calcualte the total duration of movies in minutes
select sum(duration) as total_duration
from netflix_titles
where type='Movie';

select sum(duration)as total_duration
from netflix_titles
where type='TV Show';

-- Find movies with no assigned movie
select * from netflix_titles
where rating is null;

--  Count movie by rating
select rating, count(*) as count_rating
from netflix_titles
group by rating;

-- Calcualate the average rating for each type
select type, avg(rating) as average_rating
from netflix_titles
where type is not null
group by type;

-- List the oldest movie in dataset
select * from netflix_titles
order by release_year
limit 5;

-- Find movie with missing release information
select * from netflix_titles
where release_year is null;
