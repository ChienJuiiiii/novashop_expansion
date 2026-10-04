select
    order_id,
    customer_id,
    lower(trim(order_status)) as order_status,
    cast(order_date as date) as order_date,
    upper(trim(region)) as region,
    cast(updated_at as timestamp) as updated_at
from {{ source('raw', 'raw_orders') }}