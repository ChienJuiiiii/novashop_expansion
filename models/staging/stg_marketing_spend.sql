select
    campaign_id,
    upper(trim(region)) as region,
    cast(campaign_date as date) as campaign_date,
    spend_cents
from {{ source('raw', 'raw_marketing_spend') }}