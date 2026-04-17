-- Auto-generated: table creation v7559
-- Created for project optimization

CREATE TABLE IF NOT EXISTS table_creation_7559 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'active',
    description TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_table_creation_7559_name
    ON table_creation_7559(name);

CREATE INDEX IF NOT EXISTS idx_table_creation_7559_created
    ON table_creation_7559(created_at DESC);

-- Seed data
INSERT INTO table_creation_7559 (name, status)
VALUES
    ('item_0', 'val_0_7559'),
    ('item_1', 'val_1_7559'),
    ('item_2', 'val_2_7559'),
    ('item_3', 'val_3_7559'),
    ('item_4', 'val_4_7559'),
    ('item_5', 'val_5_7559'),
    ('item_6', 'val_6_7559'),
    ('item_7', 'val_7_7559'),

-- View
CREATE OR REPLACE VIEW v_table_creation_7559_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM table_creation_7559
GROUP BY name
ORDER BY total DESC;
