table! {
    asset_units (id) {
        id -> Uuid,
        name -> Text,
        asset_id -> Uuid,
        cash_flow -> Int8,
        aqquired_at -> Date,
    }
}

table! {
    assets (id) {
        id -> Uuid,
        name -> Text,
        nation -> Text,
        city -> Text,
        address -> Text,
        aqquired_at -> Date,
    }
}

allow_tables_to_appear_in_same_query!(
    asset_units,
    assets,
);
