CREATE TABLE location (id INT AUTO_INCREMENT, name VARCHAR(50) DEFAULT '' NOT NULL, description VARCHAR(255) DEFAULT '' NOT NULL, location_type_id INT, latitude DOUBLE, longitude DOUBLE, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX location_type_id_idx (location_type_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE location_type (id INT AUTO_INCREMENT, name VARCHAR(50) DEFAULT '' NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE point (id INT AUTO_INCREMENT, route_id INT, latitude DOUBLE, longitude DOUBLE, INDEX route_id_idx (route_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE route (id INT AUTO_INCREMENT, name VARCHAR(50) DEFAULT '' NOT NULL, description VARCHAR(255) DEFAULT '' NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
ALTER TABLE location ADD CONSTRAINT location_location_type_id_location_type_id FOREIGN KEY (location_type_id) REFERENCES location_type(id);
ALTER TABLE point ADD CONSTRAINT point_route_id_route_id FOREIGN KEY (route_id) REFERENCES route(id) ON DELETE CASCADE;
