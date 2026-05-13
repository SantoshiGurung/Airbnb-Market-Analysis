-- QUERY 1: THE HIDDEN GEM FINDER
-- Goal: Find neighborhoods with high ratings and low prices.
-- Requirement: Must have more than 10 reviews to be considered reliable.

SELECT 
    neighborhood, 
    AVG(price) AS avg_price, 
    AVG(review_scores_rating) AS avg_rating
FROM listings
GROUP BY neighborhood
HAVING COUNT(number_of_reviews) > 10
ORDER BY avg_rating DESC, avg_price ASC;

-- QUERY 2: ROOM TYPE PROFITABILITY & DEMAND
-- Comparing average cost vs. total guest volume for different stay types.

SELECT 
    room_type, 
    AVG(price) AS avg_price, 
    SUM(number_of_reviews) AS total_reviews
FROM listings
GROUP BY room_type
ORDER BY avg_price DESC;

-- QUERY 3: THE INVESTOR'S SHORTLIST
-- Goal: Identify specific high-value targets in Brooklyn.
-- Criteria: Budget-friendly, entire homes, proven guest history.

SELECT 
    id, 
    neighborhood, 
    price, 
    number_of_reviews
FROM listings
WHERE neighborhood = 'Brooklyn' 
  AND price < 150 
  AND room_type = 'Entire home/apt' 
  AND number_of_reviews > 50
ORDER BY price ASC;
