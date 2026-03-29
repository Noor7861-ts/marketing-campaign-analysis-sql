-- Marketing Campaign Performance Analysis Queries

-- 1. Campaign Performance Overview
SELECT
  campaign_name,
  ROUND(SUM(cost), 2) AS total_cost,
  SUM(impression) AS total_impressions,
  SUM(click) AS total_clicks,
  ROUND(SUM(click) / NULLIF(SUM(impression), 0), 4) AS ctr,
  ROUND(SUM(cost) / NULLIF(SUM(click), 0), 2) AS cpc
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY campaign_name
ORDER BY total_cost DESC
LIMIT 10;

-- 2. Daily Campaign Trend
SELECT
  date_date,
  ROUND(SUM(cost), 2) AS daily_cost,
  SUM(impression) AS daily_impressions,
  SUM(click) AS daily_clicks,
  ROUND(SUM(click) / NULLIF(SUM(impression), 0), 4) AS daily_ctr
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY date_date
ORDER BY date_date;

-- 3. Highest CTR Campaigns
SELECT
  campaign_name,
  ROUND(SUM(click) / NULLIF(SUM(impression), 0), 4) AS ctr
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY campaign_name
ORDER BY ctr DESC
LIMIT 10;

-- 4. Highest CPC Campaigns
SELECT
  campaign_name,
  ROUND(SUM(cost) / NULLIF(SUM(click), 0), 2) AS cpc
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY campaign_name
ORDER BY cpc DESC
LIMIT 10;

-- 5. Estimated Revenue and ROI
SELECT
  campaign_name,
  ROUND(SUM(cost), 2) AS total_cost,
  SUM(click) AS total_clicks,
  ROUND(SUM(click) * 2.5, 2) AS estimated_revenue,
  ROUND((SUM(click) * 2.5 - SUM(cost)) / NULLIF(SUM(cost), 0), 2) AS roi
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY campaign_name
ORDER BY roi DESC
LIMIT 10;

-- 6. Campaign Efficiency Comparison
SELECT
  campaign_name,
  ROUND(SUM(cost), 2) AS total_cost,
  ROUND(SUM(click) / NULLIF(SUM(impression), 0), 4) AS ctr,
  ROUND(SUM(cost) / NULLIF(SUM(click), 0), 2) AS cpc,
  ROUND((SUM(click) * 2.5 - SUM(cost)) / NULLIF(SUM(cost), 0), 2) AS roi
FROM `loyal-coyote-456809-g0.gwz_Finance.campaign_analysis`
GROUP BY campaign_name
ORDER BY roi DESC, ctr DESC;
