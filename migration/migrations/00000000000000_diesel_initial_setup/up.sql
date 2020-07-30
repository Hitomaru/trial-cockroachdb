
CREATE TABLE assets (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name STRING NOT NULL DEFAULT '',
    nation STRING NOT NULL DEFAULT 'Japan',
    city STRING NOT NULL,
    address STRING NOT NULL,
    aqquired_at DATE NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE asset_units (
    id UUID NOT NULL DEFAULT gen_random_uuid(),
    name STRING NOT NULL DEFAULT '',
    asset_id UUID NOT NULL REFERENCES assets (id) ON DELETE CASCADE ON UPDATE CASCADE,
    cash_flow INTEGER NOT NULL DEFAULT 0,
    aqquired_at DATE NOT NULL,
    PRIMARY KEY(id)
);

