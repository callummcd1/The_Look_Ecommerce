## The Look E-Commerce Dataset

This Ecommerce dataset simulates transactional data for a fashion retailer selling clothing, accessories, and footwear.

I have visualised some of this data within a workbook on Tableau Public.

## Key Features ##
https://public.tableau.com/shared/8X7G64ZYW?:display_count=n&:origin=viz_share_link
- **Sales Performance Dashboard**
- **Customer Segmentation Analysis**
- **Product Category Trends**

The below were not explored as I did not have time but these could also be looked into:

- **Product affinity mapping**
Discover which items might be bought together

- **Lifecycle Insights**
Track first purchase, repeat purchases and dropouts.

- **Campaign ROI**: 
Match transactions to marketing efforts to attribute spend and revenue impact.

- **Geo-based Revenue**
Heatmap sales or returns by location.

- **Localised Product Demand**
Pinpoint which categories excel where.

- **Distribution Centre to Customer Mapping**
How far customers are location from the DCs that service them.

## Sales Performance ##

![page 1 sales performance](/page%201%20sales%20performance.png)

6 Main KPIs have been chosen for tracking in this view
- revenue
- cost
- profit
- orders
- units sold
- avg revenue per unit sold

We have identified that revenue is going to be the focus metric that the business wants to track to measure success. 

There is substantial growth with 24 / 30 weeks so far in 2025 surpassing the revenue collected the previous year.

The Men's department products make up 53.5% of total sales for 2025.

At the bottom we have broken this down by country and can see the majority of the significant sales have no suprise been from England. 

There is substantial revenue and unit growth in Wales and Scotland but be careful with this as sales figures comparitively are very low. 

Disappointing return in Northern Ireland and if it were me I would be assessing whether it was worth keeping that DC open there or potentially launching some marketing campaigns like national ppc to boost web traffic from paid sources or maybe looking at SEO options.

In reality although we didn't have it provided in this dataset we would probably also want a switchable view where we could compare to budget and also see these in the figures in the table at the bottom.

## Customer Segmentation ##


![page 2 customer segmentation](/page%202%20customer%20segmentation%20by%20location.png)

In the map we have highlighted Avg Customer Value YTD by City.

We can see that cities such as Barnet, with 8 sales worth £1.3k sit with very high average.

There are potentially some data quality considerations we can spot here like a lot of the costs are zero, and this is only 1 customer.

As this is a sample dataset with a lot of missing cost information there is not a huge deal we can do about it but this view still proves usefu to show what data we may want to look into

Use cases for this might be deciding which cities we would want to turn on pay-per-click advertising for.

## Top Selling Products ##

![page 3 top selling products](/page%203%20top%20selling%20products.png)

Here we have provided an example of product segmentation where we have looked at what product categories have sold the most units in 2025.

Sweatshirts and Hoodies lead the way and interestingly more male products have been purchased than female products in this category.

The table underneathe as filtered below allows us to see the top sellers and bottom performers where no sales of products have been made.

- There are 12 products with 2 or more sales YTD
- BUT more importantly there are 25 products in this category which haven't had a single sale yet!

![page 3 drilldown into fashion hoodies and sweatshirts](/page%203%20drill%20down%20into%20fashion%20hoodies%20and%20sweatshirts.png)

I hope you have found this tableau example useful!
