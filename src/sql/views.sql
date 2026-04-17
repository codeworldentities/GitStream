-- Auto-generated: views — views v959
-- Created for project optimization

CREATE TABLE IF NOT EXISTS views_—_views_959 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    metadata JSONB,
    status VARCHAR(50) DEFAULT 'active',
    score DECIMAL(10,2),
    email VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_views_—_views_959_name
    ON views_—_views_959(name);

CREATE INDEX IF NOT EXISTS idx_views_—_views_959_created
    ON views_—_views_959(created_at DESC);

-- Seed data
INSERT INTO views_—_views_959 (name, is_active)
VALUES
    ('item_0', 'val_0_959'),
    ('item_1', 'val_1_959'),
    ('item_2', 'val_2_959'),
    ('item_3', 'val_3_959'),
    ('item_4', 'val_4_959'),
    ('item_5', 'val_5_959'),
    ('item_6', 'val_6_959'),
    ('item_7', 'val_7_959'),

-- View
CREATE OR REPLACE VIEW v_views_—_views_959_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM views_—_views_959
GROUP BY name
ORDER BY total DESC;
