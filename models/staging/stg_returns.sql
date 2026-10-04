select
    return_id, order_id, order_item_id,
    lower(trim(return_reason)) as return_reason,
    refund_cents
from {{ source('raw', 'raw_returns') }}