CREATE TABLE schemas (
  id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT '',
  path VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE xsds (
  id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  schema_id INTEGER(10) UNSIGNED NOT NULL,
  filename VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE forms (
  id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  schema_id INTEGER(10) UNSIGNED NOT NULL,
  root VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  description TEXT DEFAULT '',
  structure TEXT NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE xmls (
  id INTEGER(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  form_id INTEGER(10) UNSIGNED NOT NULL,
  file VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
);
