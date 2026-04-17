-- Auto-generated: stored procedure v7614
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_7614 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    status VARCHAR(50) DEFAULT 'active',
    counter INTEGER DEFAULT 0,
    is_active BOOLEAN DEFAULT TRUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7614_name
    ON stored_procedure_7614(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_7614_created
    ON stored_procedure_7614(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_7614 (name, email)
VALUES
    ('item_0', 'val_0_7614'),
    ('item_1', 'val_1_7614'),
    ('item_2', 'val_2_7614'),
    ('item_3', 'val_3_7614'),
    ('item_4', 'val_4_7614'),
    ('item_5', 'val_5_7614'),
    ('item_6', 'val_6_7614'),
    ('item_7', 'val_7_7614'),

-- View
CREATE OR REPLACE VIEW v_stored_procedure_7614_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_7614
GROUP BY name
ORDER BY total DESC;
