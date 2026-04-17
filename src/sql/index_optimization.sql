-- Auto-generated: index optimization v4476
-- Created for project optimization

CREATE TABLE IF NOT EXISTS index_optimization_4476 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    score DECIMAL(10,2),
    description TEXT,
    counter INTEGER DEFAULT 0,
    email VARCHAR(255),
    priority SMALLINT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4476_name
    ON index_optimization_4476(name);

CREATE INDEX IF NOT EXISTS idx_index_optimization_4476_created
    ON index_optimization_4476(created_at DESC);

-- Seed data
INSERT INTO index_optimization_4476 (name, score)
VALUES
    ('item_0', 'val_0_4476'),
    ('item_1', 'val_1_4476'),
    ('item_2', 'val_2_4476'),
    ('item_3', 'val_3_4476'),
    ('item_4', 'val_4_4476'),
    ('item_5', 'val_5_4476'),
    ('item_6', 'val_6_4476'),
    ('item_7', 'val_7_4476');

-- View
CREATE OR REPLACE VIEW v_index_optimization_4476_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM index_optimization_4476
GROUP BY name
ORDER BY total DESC;
