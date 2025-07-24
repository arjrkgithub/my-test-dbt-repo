

{{ config(materialized='table') }}

-- Use the `ref` function to select from other models

SELECT
    "Instrument"           AS instrument,
    "Qty."                 AS quantity,
    "Avg. cost"            AS average_cost,
    "LTP"                  AS last_traded_price,
    "Invested"             AS invested_amount,
    "Cur. val"             AS current_value,
    "P&L"                  AS profit_and_loss,
    "Net chg."             AS net_change,
    "Day chg."             AS day_change,
    "j"                    AS record_index
FROM {{ ref('holdings_clean') }}


