Marketing Campaign Performance Analysis (SQL | BigQuery)

Overview

This project analyzes digital marketing campaign performance using SQL in BigQuery. The objective is to evaluate campaign efficiency, identify high-performing campaigns, and provide insights to optimize budget allocation.

Objectives
- Analyze campaign performance using key marketing KPIs
- Evaluate efficiency using CTR (Click-Through Rate) and CPC (Cost Per Click)
- Identify high and low performing campaigns
- Assess return on investment (ROI) to support budget optimization decisions
  
Key Metrics Used
- Impressions – number of times ads were shown
- Clicks – user engagement with ads
- CTR (Click-Through Rate) – clicks / impressions
- CPC (Cost Per Click) – cost / clicks
- Estimated Revenue – clicks × assumed value per click
- ROI (Return on Investment) – (revenue − cost) / cost
- 
Key Analysis Performed
- Campaign-level performance analysis (cost, clicks, impressions)
- CTR and CPC comparison across campaigns
- Identification of highest and lowest performing campaigns
- ROI analysis to evaluate campaign efficiency
- Comparison of high-spend vs high-efficiency campaigns
- 
Key Insights
- Campaign efficiency is not directly correlated with budget size
- Several mid-spend campaigns delivered higher ROI than high-budget campaigns
- High CTR campaigns indicate strong user engagement and effective targeting
- Some campaigns exhibited high CPC, suggesting inefficient spend and potential optimization opportunities
- ROI analysis highlighted opportunities to reallocate budget toward more efficient campaigns
  
Assumptions
- Revenue was estimated using a fixed value per click due to lack of conversion data
- This approach provides a proxy for performance but does not represent actual revenue
- 
Tools Used
- Google BigQuery (SQL)
