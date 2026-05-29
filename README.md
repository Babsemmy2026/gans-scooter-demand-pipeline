# gans-scooter-demand-pipeline
A Python &amp; SQL data pipeline that integrates weather, flight, and demographic data to optimize e-scooter fleet placement for Gans.
This Project was completed during my Data Analytics training at WBS Coding School.

# 🛴 Gans E-Scooter Fleet Optimization Pipeline

## 📌 Project Overview
Gans is a rapidly growing e-scooter rental platform expanding its presence across major global cities. While the company enjoys high user adoption, its operational profitability depends entirely on **strategic fleet placement**—ensuring a scooter is exactly where a rider needs it before they even know they need it.

While scooters naturally circulate through daily user movement, critical external factors routinely disrupt this balance:
* **Varied Elevation:** Riders heavily favor e-scooters for uphill travel, leaving fleets stranded at higher elevations.
* **Commuter Rhythms:** Morning rushes create a unidirectional flow from residential neighborhoods into commercial city centers.
* **Weather Fluctuations:** Inclement weather, particularly rainfall, triggers immediate drops in usage.
* **Tourist Influxes:** Mass arrivals at airports and major transit hubs cause sudden, localized spikes in demand.

As the **Data Analyst** on this project, my goal was to centralize these disparate external variables. I developed an end-to-end local data pipeline that extracts, cleans, and structures real-time data, providing the operations team with a centralized data model to predict scooter movement and optimize fleet rebalancing.

---

## 🛠️ Tech Stack & Skills
* **Languages:** Python (Pandas, NumPy)
* **Data Acquisition:** Web Scraping (BeautifulSoup), REST APIs (JSON parsing)
* **Database Management:** SQL, MySQL, SQLAlchemy (Python ORM)
* **Workflows & Tools:** ETL (Extract, Transform, Load), Relational Data Modeling, Git/GitHub for Version Control

---

## 🚀 Project Architecture & Workflow

### 1. Data Ingestion & Engineering
* **Web Scraping (City Demographics):** Extracted baseline population and profile data from Wikipedia using **BeautifulSoup**. Engineered robust conditional logic to handle Wikipedia’s inconsistent HTML layouts across different city pages, ensuring stable data extraction.
* **Weather Forecasting API:** Integrated the **OpenWeather 5-day forecast API**, parsing nested JSON payloads into a structured relational format to anticipate drops in rider demand due to rain.
* **Flight Arrival Tracking API:** Utilized the **AeroDataBox API (via RapidAPI)** to extract next-day flight arrivals, enabling the operations team to preemptively position scooters at arrival terminals ahead of peak tourist windows.

### 2. Local ETL & Database Storage
Using **Python and Pandas**, the raw scraped and API data was cleaned, data types were normalized, and missing values were handled. I then mapped out a relational database schema and used **SQLAlchemy** to programmatically load the structured datasets into a local **MySQL database**.

### 3. Version Control & Repository Deployment
The completed pipeline scripts and database schemas were migrated to **GitHub**. The repository is organized using professional version control practices, ensuring reproducibility and setting up a clear foundation for future cloud automation.

### Key Takeaways and Impact
* **End-to-End Data Ownership: Successfully designed and implemented a full data pipeline from scratch—moving from raw, unstructured web data to a structured SQL database.
* **Problem-Solving Mindset: Overcame challenges with messy, inconsistent HTML structures by writing adaptive Python scripts.
* Business-Driven Analytics: Built a data framework centered entirely on solving a real-world operational problem (fleet optimization), proving the ability to connect data engineering tasks directly to business value.
