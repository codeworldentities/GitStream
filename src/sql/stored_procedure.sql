-- Auto-generated: stored procedure v6629
-- Created for project optimization

CREATE TABLE IF NOT EXISTS stored_procedure_6629 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    priority SMALLINT DEFAULT 0,
    email VARCHAR(255),
    description TEXT,
    score DECIMAL(10,2),
    metadata JSONB,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6629_name
    ON stored_procedure_6629(name);

CREATE INDEX IF NOT EXISTS idx_stored_procedure_6629_created
    ON stored_procedure_6629(created_at DESC);

-- Seed data
INSERT INTO stored_procedure_6629 (name, priority)
VALUES
    ('item_0', 'val_0_6629'),
    ('item_1', 'val_1_6629'),
    ('item_2', 'val_2_6629');

-- View
CREATE OR REPLACE VIEW v_stored_procedure_6629_summary AS
SELECT name, COUNT(*) as total, MAX(created_at) as last_update
FROM stored_procedure_6629
GROUP BY name
ORDER BY total DESC;
