# add documentation url placeholder where necessary

UPDATE zk_data.application
   SET a_scm_url = 'UNKNOWN'
 WHERE a_scm_url IS NULL OR a_scm_url = '';

UPDATE zk_data.application
   SET a_documentation_url = 'UNKNOWN'
 WHERE a_documentation_url IS NULL OR a_scm_url = '';

UPDATE zk_data.application
   SET a_specification_url = 'UNKNOWN'
 WHERE a_specification_url IS NULL OR a_scm_url = '';

# make columns not null

 ALTER TABLE zk_data.application
ALTER COLUMN a_scm_url SET NOT NULL,
ALTER COLUMN a_documentation_url SET NOT NULL,
ALTER COLUMN a_specification_url SET NOT NULL;
