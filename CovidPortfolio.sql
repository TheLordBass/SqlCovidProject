/*select location , date, total_cases, total_deaths, population
from CovidDeaths$
order by 1,2*/

-- Looking at total cases vs total deaths
/*ALTER TABLE CovidDeaths$
ALTER COLUMN total_deaths float*/

-- Liklihood of dying from covid
select  location, date, total_cases, total_deaths, ( total_deaths/total_cases)* 100 as Deathpercentage
from CovidDeaths$
continent is not null
order by 1,2 asc

-- total cases vs population
--  Percentage of the population that got covid

select location, date, total_cases, population, (total_cases/Population)*100 as Population_percentage
from CovidDeaths$
order by 1, 2

 -- Countries with the highest Infectionn rates
 select location,  max(total_cases) as Highest_infection_Count, population, (max(total_cases)/Population)*100 as Population_Infected_percentage
from CovidDeaths$
group by location, Population
order by Population_Infected_percentage desc

-- Showing Countries with highest Death Count
select location,  max(total_deaths) as DeathCount
from CovidDeaths$
where continent is not null
group by location
order by DeathCount desc

-- Showing continents with Highest death count
select continent,  max(total_deaths) as DeathCount
from CovidDeaths$
where continent is not null
group by continent
order by DeathCount desc


-- Highest infection rate compared to p