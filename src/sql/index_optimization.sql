-- Auto-generated: index optimization v6354
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_6354 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    score DECIMAL(10,2),
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_6354_name
    ON index_optimization_6354(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_6354_created
    ON index_optimization_6354(created_at DESC);

-- Seed data
INSERT INTO index_optimization_6354 (name, email)
VALUES
    ('item_0', 'val_0_6354'),
    ('item_1', 'val_1_6354'),
    ('item_2', 'val_2_6354'),
    ('item_3', 'val_3_6354'),
    ('item_4', 'val_4_6354'),
    ('item_5', 'val_5_6354'),
    ('item_6', 'val_6_6354'),
    ('item_7', 'val_7_6354'),

-- View
CREATE OR REPLACE VIEW v_index_optimization_6354_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_6354
GROUP BY name
ORDER BY total DESC;
