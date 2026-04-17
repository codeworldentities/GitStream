-- Auto-generated: procedures — procedures v9430
-- Created for project optimization

CREATE TABLE IF NOT EXISTS procedures_—_procedures_9430 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    email VARCHAR(255),
    metadata JSONB,
    score DECIMAL(10,2),
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_9430_name
    ON procedures_—_procedures_9430(name);

CREATE INDEX IF NOT EXISTS idx_procedures_—_procedures_9430_created
    ON procedures_—_procedures_9430(created_at DESC);

-- Seed data
INSERT INTO procedures_—_procedures_9430 (name, is_active)
VALUES
    ('item_0', 'val_0_9430'),
    ('item_1', 'val_1_9430'),
    ('item_2', 'val_2_9430'),
    ('item_3', 'val_3_9430'),
    ('item_4', 'val_4_9430');

-- View
CREATE OR REPLACE VIEW v_procedures_—_procedures_9430_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM procedures_—_procedures_9430
GROUP BY name
ORDER BY total DESC;
