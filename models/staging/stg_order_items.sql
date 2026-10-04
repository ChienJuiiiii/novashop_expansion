select
    order_item_id, order_id, product_id, quantity, unit_price_cents
from {{ source('raw', 'raw_order_items') }}