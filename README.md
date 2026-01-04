# 🦠 COVID-19 Global Pandemic Analysis

### 🚀 Executive Summary
**Goal:** Analyze global COVID-19 data to understand the mortality rate, infection spread, and vaccination progress across different countries.
**Role:** Data Analyst.
**Tools:** SQL (Joins, Window Functions, Aggregations), Tableau (for visualization).

---

## 📖 The Story
In the wake of the global pandemic, vast amounts of data were generated regarding cases, deaths, and vaccinations. I wanted to dive into this dataset to understand the **real numbers** behind the headlines.

Using **SQL**, I performed an Exploratory Data Analysis (EDA) to compare how different countries managed the spread and to analyze the rollout of vaccinations on a global scale.

---

## 🔍 Key Questions & Insights
Here are the specific questions I answered using SQL:

### 1. How likely are you to die if you contract COVID?
* **The Metric:** `(Total Deaths / Total Cases) * 100`
* **The Insight:** I calculated the **Mortality Rate** (Death Percentage) for each country over time. This helps visualize the likelihood of dying if infected and how that risk changed as treatments improved.

### 2. How much of the population got infected?
* **The Metric:** `(Total Cases / Population) * 100`
* **The Insight:** I compared infection rates against population size to identify which countries had the highest percentage of their population infected, revealing which nations struggled most with containment.

### 3. Which countries had the highest death counts?
* **The Metric:** `MAX(Total_Deaths)`
* **The Insight:** By grouping data by location, I identified the countries with the highest Total Death Counts. I also broke this down by **Continent** to see the regional impact.

### 4. How did the vaccination rollout progress?
* **The Technique:** `JOIN` and `Window Functions`
* **The Insight:** I joined the `CovidDeaths` and `CovidVaccinations` tables. Using a **Window Function** (`OVER PARTITION BY`), I tracked the total vaccinations administered per country to compare vaccination coverage against total population.

---

## 🛠️ Technical Skills Demonstrated
* **Joins:** Combining `CovidDeaths` and `CovidVaccinations` on common keys (`location` and `date`) to blend datasets.
* **Window Functions:** Using `SUM() OVER (PARTITION BY ...)` to calculate aggregate metrics without collapsing rows.
* **Aggregate Functions:** Utilizing `SUM()`, `MAX()` to derive global and regional totals.
* **Data Casting:** (Implicit) Ensuring data types were correct for calculation (e.g., dividing integers vs floats).
* **Views/CTEs:** Structuring queries for efficient data retrieval (ready for visualization tools).

---

## 📊 Future Improvements
* **Visualization:** Connect this SQL data to **Tableau** or **PowerBI** to create a dashboard showing "Infection Rate vs. GDP" or a global heat map of vaccination rates.
* **Trend Analysis:** Calculate the "Rolling 7-Day Average" to smooth out data spikes and see clearer trends.

---

### 👋 About Me
I am a Data Analyst based in **Manchester, UK**, aiming to solve real-world problems with data. I am proficient in **Excel, SQL, Tableau, and PowerBI**.

*Check out my code in the `.sql` file above!*
