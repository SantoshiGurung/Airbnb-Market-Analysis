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
