select
    customer_id, customer_email, country, customer_segment,
    cast(updated_at as timestamp) as updated_at
from {{ source('raw', 'raw_customers') }}