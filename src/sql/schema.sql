-- Auto-generated: schema — database schema definition v2813
-- Created for project optimization

CREATE TABLE IF NOT EXISTS schema_—_database_schema_definition_2813 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    metadata JSONB,
    email VARCHAR(255),
    counter INTEGER DEFAULT 0,
    score DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2813_name
    ON schema_—_database_schema_definition_2813(name);

CREATE INDEX IF NOT EXISTS idx_schema_—_database_schema_definition_2813_created
    ON schema_—_database_schema_definition_2813(created_at DESC);

-- Seed data
INSERT INTO schema_—_database_schema_definition_2813 (name, description)
VALUES
    ('item_0', 'val_0_2813'),
    ('item_1', 'val_1_2813'),
    ('item_2', 'val_2_2813'),
    ('item_3', 'val_3_2813'),
    ('item_4', 'val_4_2813'),
    ('item_5', 'val_5_2813'),
    ('item_6', 'val_6_2813'),
    ('item_7', 'val_7_2813'),

-- View
CREATE OR REPLACE VIEW v_schema_—_database_schema_definition_2813_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM schema_—_database_schema_definition_2813
GROUP BY name
ORDER BY total DESC;
