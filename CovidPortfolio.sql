/*select location , date, total_cases, total_deaths, population
from CovidDeaths$
order by 1,2*/

-- Looking at total cases vs total deaths
/*ALTER TABLE CovidDeaths$
ALTER COLUMN total_deaths float*/

-- Liklihood of dying from covid
select  location, date, total_cases, total_deaths, ( total_deaths/total_cases)* 100 as Deathpercentage
from CovidDeaths$
where continent is not null
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



-- Global numbers By date
select date, Sum(new_cases) as Total_cases, Sum(new_deaths) as Total_Deaths, Sum(new_deaths)/Sum(new_cases)*100
from CovidDeaths$
where continent is not null
group by date
order by 1,2 

-- Global numbers
select Sum(new_cases) as Total_cases, Sum(new_deaths) as Total_Deaths, Sum(new_deaths)/Sum(new_cases)*100
from CovidDeaths$
where continent is not null  
order by 1,2 

--Looking at Total Population vs Vaccinations

select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations, sum(vac.new_vaccinations) over(partition by dea.location)
from CovidDeaths$ dea
join CovidVacinnations$ vac
on dea.location = vac.location
where dea.continent is not null and vac.new_vaccinations is not null
order by 2,3
