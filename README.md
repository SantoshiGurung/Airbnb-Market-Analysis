# Airbnb Market Analysis: Finding the "Hidden Gems"

## Project Overview
In this project, I’m looking at Airbnb listing data to solve a specific problem for travelers and investors: **Where can you find the best guest experience without paying "tourist trap" prices?** By filtering for high-performing neighborhoods with a significant number of verified reviews, I aim to identify the most undervalued areas in the city.

## Analysis Phases

### Identifying Neighborhood Value
I’m using a "Hidden Gem" logic that looks for neighborhoods where the average rating is high, but the price remains below the city average. To keep the data clean, I only include areas with more than 10 confirmed reviews to avoid "fluke" ratings.

### Room Type vs. Profitability
(Next Phase) I'll be looking at whether Entire Homes or Private Rooms offer a better "Review-to-Price" ratio for budget-conscious travelers.

## Technical SQL Highlights
* **HAVING vs WHERE:** Using aggregate filters to ensure data reliability.
* **Ordering Logic:** Using multi-level sorting to prioritize quality and then price.
