# Sales Funnel Analysis Project

## Business Problem

This project analyzes user behavior across a typical e‑commerce sales funnel (View → Cart → Purchase) to identify where the largest drop‑off occurs and which funnel stage offers the highest revenue impact if optimized.

The main objective is to answer:
**Where are we losing potential buyers, and what is the most efficient lever to increase completed purchases without increasing marketing spend?**

---

## Dataset

The analysis uses an event‑based dataset (`events.csv`) containing user interactions with the following structure:

* `event_id`
* `user_id`
* `product_id`
* `event_type` (view, cart, purchase)
* `event_timestamp`

Each row represents a user action, enabling full funnel and drop‑off analysis at the user level.

---

## Tools & Technologies

* **Python** (Pandas, NumPy, Matplotlib)
* **Jupyter Notebook** for analysis
* **SQL** for funnel logic validation
* **Git & GitHub** for version control

---

## Funnel Overview

### Event Volume (Raw Data)

* View events: **56,013**
* Cart events: **12,035**
* Purchase events: **4,006**

### User‑Level Funnel

* Total users: **9,992**
* Users who viewed products: **9,961**
* Users who added to cart: **6,994**
* Users who completed purchase: **3,281**

---

## Conversion Performance

| Funnel Stage              | Conversion Rate |
| ------------------------- | --------------- |
| View → Cart               | **70.21%**      |
| Cart → Purchase           | **46.91%**      |
| Overall (View → Purchase) | **32.93%**      |

While early‑stage engagement is relatively strong, a significant portion of high‑intent users fails to complete the purchase.

---

## Drop‑Off Analysis

| Funnel Stage    | Dropped Users | Drop‑Off Rate |
| --------------- | ------------- | ------------- |
| View → Cart     | 2,967         | **29.78%**    |
| Cart → Purchase | 3,713         | **53.00%**    |

**The largest drop‑off occurs at the Cart → Purchase stage**, indicating substantial checkout friction rather than lack of user intent.

---

## Purchase & Buyer Behavior

* Total purchase events: **4,006**
* Unique buyers: **3,281**
* Average purchases per buyer: **1.22**
* Minimum purchases per buyer: **1**
* Maximum purchases per buyer: **6**
* Standard deviation: **0.47**

This shows purchases are mostly single‑transaction, with a small group of repeat buyers contributing incremental volume.

---

## Revenue Impact Simulation

Because product price data is unavailable, **completed purchase count is used as a revenue proxy**, which is acceptable for funnel optimization analysis.

Given that the largest bottleneck occurs at Cart → Purchase, the simulation assumes:

* Cart volume remains constant
* Checkout conversion improves incrementally

### Estimated Impact

| Conversion Improvement | Estimated Additional Purchases |
| ---------------------- | ------------------------------ |
| +1%                    | **+69**                        |
| +3%                    | **+209**                       |
| +5%                    | **+349**                       |

Even small improvements at the checkout stage result in meaningful gains **without increasing traffic or advertising spend**.

---

## Key Insights

* The Cart → Purchase stage represents the **highest‑impact optimization opportunity**.
* Users reaching the cart already demonstrate strong purchase intent, but more than half fail to complete checkout.
* Improving late‑stage conversion yields faster and more cost‑efficient revenue growth than acquiring additional traffic.
* Checkout optimization is a **high‑ROI lever** where marginal UX or payment improvements can directly increase revenue.

---

## Business Recommendations

* Prioritize **checkout flow optimization** (payment reliability, UX simplicity, cost transparency).
* Reduce friction caused by unexpected costs or complex checkout steps.
* Conduct **A/B testing on checkout pages** to identify and eliminate conversion blockers.
* Track Cart → Purchase conversion as a core KPI for short‑term revenue growth.

---

## Project Outcome

This project demonstrates how event‑level data can be translated into clear business insights and revenue‑driven recommendations. The analysis focuses on practical decision‑making rather than surface‑level metrics, aligning data analysis directly with growth and monetization objectives.

---

📌 **Author:** Faris
📌 **Role Target:** Data Analyst (Sales & Revenue Analytics)
