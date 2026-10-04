select product_id, product_name, category, cost_cents
from {{ source('raw', 'raw_products') }}