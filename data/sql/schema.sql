CREATE TABLE address (id INT AUTO_INCREMENT, country_id INT, area_low_id INT, area_high_id INT, locality_id INT, route_id INT, INDEX country_id_idx (country_id), INDEX area_low_id_idx (area_low_id), INDEX area_high_id_idx (area_high_id), INDEX locality_id_idx (locality_id), INDEX route_id_idx (route_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE area_high (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, area_low_id INT, INDEX area_low_id_idx (area_low_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE area_low (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, country_id INT, INDEX country_id_idx (country_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE bot (profile_id INT, bot_nick_id INT, bot_data_id INT, INDEX bot_nick_id_idx (bot_nick_id), INDEX bot_data_id_idx (bot_data_id), PRIMARY KEY(profile_id)) ENGINE = INNODB;
CREATE TABLE bot_data (id INT AUTO_INCREMENT, uid INT UNIQUE NOT NULL, name VARCHAR(255), ava VARCHAR(255), userpic VARCHAR(255), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE bot_nick (id INT AUTO_INCREMENT, nick VARCHAR(255) NOT NULL UNIQUE, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE city (id INT AUTO_INCREMENT, name VARCHAR(30) NOT NULL, region_id INT, weight INT DEFAULT 0 NOT NULL, UNIQUE INDEX uniq_city_idx (region_id, name), INDEX region_id_idx (region_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX comment_toward_idx (toward), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX fish_event_id_idx (fish_event_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX inbox_id_idx (inbox_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX location_id_idx (location_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX profit_id_idx (profit_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE comment (id INT AUTO_INCREMENT, parent INT, message TEXT NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, inbox_id INT, talk_id INT, fish_event_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, root_id BIGINT, lft INT, rgt INT, level SMALLINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX talk_id_idx (talk_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE country (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE fish (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL UNIQUE, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE fish_event (id INT AUTO_INCREMENT, date DATE NOT NULL, name VARCHAR(255) NOT NULL, description TEXT, schedule TEXT, price TEXT, contact TEXT, rules TEXT, users TEXT, location_id INT NOT NULL, fish_event_type_id INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, created_by INT NOT NULL, updated_by INT NOT NULL, INDEX location_id_idx (location_id), INDEX fish_event_type_id_idx (fish_event_type_id), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE fish_event_type (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE friend (requester_id INT, accepter_id INT, accepted TINYINT(1) DEFAULT '0', PRIMARY KEY(requester_id, accepter_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE inbox (id INT AUTO_INCREMENT, name VARCHAR(50) NOT NULL, message TEXT NOT NULL, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE inboxed (inbox_id INT, profile_id INT, PRIMARY KEY(inbox_id, profile_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE is_bot (profile_id INT, bot_nick_id INT, bot_data_id INT, INDEX bot_nick_id_idx (bot_nick_id), INDEX bot_data_id_idx (bot_data_id), PRIMARY KEY(profile_id)) ENGINE = INNODB;
CREATE TABLE locality (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL UNIQUE, area_high_id INT, INDEX area_high_id_idx (area_high_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_version (id INT, name VARCHAR(255) DEFAULT '' NOT NULL, description TEXT, depth FLOAT(18, 2), is_free TINYINT(1) DEFAULT '1', price TEXT, location_flow_id INT, location_fundus_id INT, location_relief_id INT, location_type_id INT, location_scope_id INT, address_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, slug VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, latitude double(18,15), longitude double(18,15), version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location (id INT AUTO_INCREMENT, name VARCHAR(255) DEFAULT '' NOT NULL, description TEXT, depth FLOAT(18, 2), is_free TINYINT(1) DEFAULT '1', price TEXT, location_flow_id INT, location_fundus_id INT, location_relief_id INT, location_type_id INT, location_scope_id INT, address_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, slug VARCHAR(255), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, latitude double(18,15), longitude double(18,15), version BIGINT, UNIQUE INDEX location_sluggable_idx (slug), INDEX location_flow_id_idx (location_flow_id), INDEX location_fundus_id_idx (location_fundus_id), INDEX location_relief_id_idx (location_relief_id), INDEX location_type_id_idx (location_type_id), INDEX location_scope_id_idx (location_scope_id), INDEX address_id_idx (address_id), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_flow (id INT, name VARCHAR(50) NOT NULL, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_fundus (id INT, name VARCHAR(50) NOT NULL, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_relief (id INT, name VARCHAR(50) NOT NULL, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_scope (id INT, name VARCHAR(50) NOT NULL UNIQUE, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_show (id BIGINT AUTO_INCREMENT, shows BIGINT NOT NULL, location_id INT NOT NULL, INDEX location_id_idx (location_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE location_type (id INT AUTO_INCREMENT, name VARCHAR(50) NOT NULL UNIQUE, weight BIGINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE nick_map (id BIGINT AUTO_INCREMENT, profile_id INT NOT NULL, nick VARCHAR(255), INDEX profile_id_idx (profile_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE photo_version (id INT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE photo (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, INDEX photo_toward_idx (toward), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE photo_location_version (id INT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE photo (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX location_id_idx (location_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE photo_profit_version (id INT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, PRIMARY KEY(id, version)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE photo (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL, thumb VARCHAR(100) NOT NULL, toward VARCHAR(255), location_id INT, profit_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, version BIGINT, INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), INDEX profit_id_idx (profit_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE profit (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, location_id INT, date DATE NOT NULL, cordage TEXT, description TEXT, fish_id INT, weight FLOAT(18, 2), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, created_by INT NOT NULL, updated_by INT NOT NULL, INDEX location_id_idx (location_id), INDEX fish_id_idx (fish_id), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE profit_detail (id BIGINT AUTO_INCREMENT, profit_id INT, style_id INT, fish_id INT, qty FLOAT(18, 2) NOT NULL, UNIQUE INDEX unique_fish_style_per_profit_idx (profit_id, style_id, fish_id), INDEX profit_id_idx (profit_id), INDEX style_id_idx (style_id), INDEX fish_id_idx (fish_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE read_comment (profile_id INT, comment_id INT, PRIMARY KEY(profile_id, comment_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE region (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL UNIQUE, country_id INT, INDEX country_id_idx (country_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE route (id INT AUTO_INCREMENT, name VARCHAR(100), country_id INT, INDEX country_id_idx (country_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE style (id INT AUTO_INCREMENT, name VARCHAR(100) NOT NULL UNIQUE, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE tag (id BIGINT AUTO_INCREMENT, name VARCHAR(100), is_triple TINYINT(1), triple_namespace VARCHAR(100), triple_key VARCHAR(100), triple_value VARCHAR(100), INDEX name_idx (name), INDEX triple1_idx (triple_namespace), INDEX triple2_idx (triple_key), INDEX triple3_idx (triple_value), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE tagging (id BIGINT AUTO_INCREMENT, tag_id BIGINT NOT NULL, taggable_model VARCHAR(30), taggable_id BIGINT, INDEX tag_idx (tag_id), INDEX taggable_idx (taggable_model, taggable_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE talk (id INT AUTO_INCREMENT, name VARCHAR(255) NOT NULL, message TEXT, talk_section_id INT, created_by INT NOT NULL, updated_by INT NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX talk_section_id_idx (talk_section_id), INDEX created_by_idx (created_by), INDEX updated_by_idx (updated_by), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE talk_section (id INT AUTO_INCREMENT, parent INT, name VARCHAR(255) NOT NULL, lft INT, rgt INT, level SMALLINT, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX vote_toward_idx (toward), INDEX voter_idx (voter), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX comment_id_idx (comment_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX fish_event_id_idx (fish_event_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX location_id_idx (location_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX photo_id_idx (photo_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX profile_id_idx (profile_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX profit_id_idx (profit_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE vote (id BIGINT AUTO_INCREMENT, value INT NOT NULL, voter INT, toward VARCHAR(255), location_id INT, comment_id INT, profit_id INT, profile_id INT, talk_id INT, fish_event_id INT, photo_id INT, INDEX voter_idx (voter), INDEX talk_id_idx (talk_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE wish_list (profile_id INT, location_id INT, PRIMARY KEY(profile_id, location_id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
CREATE TABLE sf_combine (asset_key VARCHAR(40), files LONGTEXT NOT NULL, PRIMARY KEY(asset_key)) ENGINE = INNODB;
CREATE TABLE sf_guard_forgot_password (id BIGINT AUTO_INCREMENT, user_id BIGINT NOT NULL, unique_key VARCHAR(255), expires_at DATETIME NOT NULL, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_group_permission (group_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(group_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_permission (id BIGINT AUTO_INCREMENT, name VARCHAR(255) UNIQUE, description TEXT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_remember_key (id BIGINT AUTO_INCREMENT, user_id BIGINT, remember_key VARCHAR(32), ip_address VARCHAR(50), created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX user_id_idx (user_id), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user (id BIGINT AUTO_INCREMENT, first_name VARCHAR(255), last_name VARCHAR(255), email_address VARCHAR(255) NOT NULL UNIQUE, username VARCHAR(128) NOT NULL UNIQUE, algorithm VARCHAR(128) DEFAULT 'sha1' NOT NULL, salt VARCHAR(128), password VARCHAR(128), is_active TINYINT(1) DEFAULT '1', is_super_admin TINYINT(1) DEFAULT '0', last_login DATETIME, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, INDEX is_active_idx_idx (is_active), PRIMARY KEY(id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_group (user_id BIGINT, group_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, group_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_permission (user_id BIGINT, permission_id BIGINT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, PRIMARY KEY(user_id, permission_id)) ENGINE = INNODB;
CREATE TABLE sf_guard_user_profile (user_id BIGINT UNIQUE NOT NULL, email_new VARCHAR(255) UNIQUE, validate_at DATETIME, validate VARCHAR(33), id INT AUTO_INCREMENT, sex TINYINT(1) DEFAULT '1' NOT NULL, birth_date DATE, userpic VARCHAR(255), description TEXT, city_id INT, created_at DATETIME NOT NULL, updated_at DATETIME NOT NULL, UNIQUE INDEX user_id_unique_idx (user_id), INDEX city_id_idx (city_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ENGINE = INNODB;
ALTER TABLE address ADD CONSTRAINT address_route_id_route_id FOREIGN KEY (route_id) REFERENCES route(id);
ALTER TABLE address ADD CONSTRAINT address_locality_id_locality_id FOREIGN KEY (locality_id) REFERENCES locality(id);
ALTER TABLE address ADD CONSTRAINT address_country_id_country_id FOREIGN KEY (country_id) REFERENCES country(id);
ALTER TABLE address ADD CONSTRAINT address_area_low_id_area_low_id FOREIGN KEY (area_low_id) REFERENCES area_low(id);
ALTER TABLE address ADD CONSTRAINT address_area_high_id_area_high_id FOREIGN KEY (area_high_id) REFERENCES area_high(id);
ALTER TABLE area_high ADD CONSTRAINT area_high_area_low_id_area_low_id FOREIGN KEY (area_low_id) REFERENCES area_low(id);
ALTER TABLE area_low ADD CONSTRAINT area_low_country_id_country_id FOREIGN KEY (country_id) REFERENCES country(id);
ALTER TABLE bot ADD CONSTRAINT bot_bot_nick_id_bot_nick_id FOREIGN KEY (bot_nick_id) REFERENCES bot_nick(id);
ALTER TABLE bot ADD CONSTRAINT bot_bot_data_id_bot_data_id FOREIGN KEY (bot_data_id) REFERENCES bot_data(id);
ALTER TABLE city ADD CONSTRAINT city_region_id_region_id FOREIGN KEY (region_id) REFERENCES region(id);
ALTER TABLE comment ADD CONSTRAINT comment_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE comment ADD CONSTRAINT comment_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE comment ADD CONSTRAINT comment_fish_event_id_fish_event_id FOREIGN KEY (fish_event_id) REFERENCES fish_event(id) ON DELETE CASCADE;
ALTER TABLE comment ADD CONSTRAINT comment_inbox_id_inbox_id FOREIGN KEY (inbox_id) REFERENCES inbox(id) ON DELETE CASCADE;
ALTER TABLE comment ADD CONSTRAINT comment_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE comment ADD CONSTRAINT comment_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit(id) ON DELETE CASCADE;
ALTER TABLE comment ADD CONSTRAINT comment_talk_id_talk_id FOREIGN KEY (talk_id) REFERENCES talk(id) ON DELETE CASCADE;
ALTER TABLE fish_event ADD CONSTRAINT fish_event_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE fish_event ADD CONSTRAINT fish_event_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE fish_event ADD CONSTRAINT fish_event_fish_event_type_id_fish_event_type_id FOREIGN KEY (fish_event_type_id) REFERENCES fish_event_type(id);
ALTER TABLE fish_event ADD CONSTRAINT fish_event_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE friend ADD CONSTRAINT friend_requester_id_sf_guard_user_profile_id FOREIGN KEY (requester_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE friend ADD CONSTRAINT friend_accepter_id_sf_guard_user_profile_id FOREIGN KEY (accepter_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE inbox ADD CONSTRAINT inbox_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE inbox ADD CONSTRAINT inbox_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE inboxed ADD CONSTRAINT inboxed_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE inboxed ADD CONSTRAINT inboxed_inbox_id_inbox_id FOREIGN KEY (inbox_id) REFERENCES inbox(id) ON DELETE CASCADE;
ALTER TABLE is_bot ADD CONSTRAINT is_bot_bot_nick_id_bot_nick_id FOREIGN KEY (bot_nick_id) REFERENCES bot_nick(id);
ALTER TABLE is_bot ADD CONSTRAINT is_bot_bot_data_id_bot_data_id FOREIGN KEY (bot_data_id) REFERENCES bot_data(id);
ALTER TABLE locality ADD CONSTRAINT locality_area_high_id_area_high_id FOREIGN KEY (area_high_id) REFERENCES area_high(id);
ALTER TABLE location_version ADD CONSTRAINT location_version_id_location_id FOREIGN KEY (id) REFERENCES location(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE location ADD CONSTRAINT location_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE location ADD CONSTRAINT location_location_type_id_location_type_id FOREIGN KEY (location_type_id) REFERENCES location_type(id);
ALTER TABLE location ADD CONSTRAINT location_location_scope_id_location_scope_id FOREIGN KEY (location_scope_id) REFERENCES location_scope(id);
ALTER TABLE location ADD CONSTRAINT location_location_relief_id_location_relief_id FOREIGN KEY (location_relief_id) REFERENCES location_relief(id);
ALTER TABLE location ADD CONSTRAINT location_location_fundus_id_location_fundus_id FOREIGN KEY (location_fundus_id) REFERENCES location_fundus(id);
ALTER TABLE location ADD CONSTRAINT location_location_flow_id_location_flow_id FOREIGN KEY (location_flow_id) REFERENCES location_flow(id);
ALTER TABLE location ADD CONSTRAINT location_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE location ADD CONSTRAINT location_address_id_address_id FOREIGN KEY (address_id) REFERENCES address(id);
ALTER TABLE location_show ADD CONSTRAINT location_show_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE nick_map ADD CONSTRAINT nick_map_profile_id_bot_profile_id FOREIGN KEY (profile_id) REFERENCES bot(profile_id) ON DELETE CASCADE;
ALTER TABLE photo_version ADD CONSTRAINT photo_version_id_photo_id FOREIGN KEY (id) REFERENCES photo(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE photo ADD CONSTRAINT photo_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE photo ADD CONSTRAINT photo_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE photo_location_version ADD CONSTRAINT photo_location_version_id_photo_id FOREIGN KEY (id) REFERENCES photo(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE photo ADD CONSTRAINT photo_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE photo_profit_version ADD CONSTRAINT photo_profit_version_id_photo_id FOREIGN KEY (id) REFERENCES photo(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE photo ADD CONSTRAINT photo_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit(id) ON DELETE CASCADE;
ALTER TABLE profit ADD CONSTRAINT profit_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE profit ADD CONSTRAINT profit_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE profit ADD CONSTRAINT profit_fish_id_fish_id FOREIGN KEY (fish_id) REFERENCES fish(id);
ALTER TABLE profit ADD CONSTRAINT profit_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE profit_detail ADD CONSTRAINT profit_detail_style_id_style_id FOREIGN KEY (style_id) REFERENCES style(id);
ALTER TABLE profit_detail ADD CONSTRAINT profit_detail_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit(id) ON DELETE CASCADE;
ALTER TABLE profit_detail ADD CONSTRAINT profit_detail_fish_id_fish_id FOREIGN KEY (fish_id) REFERENCES fish(id);
ALTER TABLE read_comment ADD CONSTRAINT read_comment_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE read_comment ADD CONSTRAINT read_comment_comment_id_comment_id FOREIGN KEY (comment_id) REFERENCES comment(id);
ALTER TABLE region ADD CONSTRAINT region_country_id_country_id FOREIGN KEY (country_id) REFERENCES country(id);
ALTER TABLE route ADD CONSTRAINT route_country_id_country_id FOREIGN KEY (country_id) REFERENCES country(id);
ALTER TABLE talk ADD CONSTRAINT talk_updated_by_sf_guard_user_profile_id FOREIGN KEY (updated_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE talk ADD CONSTRAINT talk_talk_section_id_talk_section_id FOREIGN KEY (talk_section_id) REFERENCES talk_section(id);
ALTER TABLE talk ADD CONSTRAINT talk_created_by_sf_guard_user_profile_id FOREIGN KEY (created_by) REFERENCES sf_guard_user_profile(id);
ALTER TABLE vote ADD CONSTRAINT vote_voter_sf_guard_user_profile_id FOREIGN KEY (voter) REFERENCES sf_guard_user_profile(id);
ALTER TABLE vote ADD CONSTRAINT vote_comment_id_comment_id FOREIGN KEY (comment_id) REFERENCES comment(id) ON DELETE CASCADE;
ALTER TABLE vote ADD CONSTRAINT vote_fish_event_id_fish_event_id FOREIGN KEY (fish_event_id) REFERENCES fish_event(id) ON DELETE CASCADE;
ALTER TABLE vote ADD CONSTRAINT vote_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE vote ADD CONSTRAINT vote_photo_id_photo_id FOREIGN KEY (photo_id) REFERENCES photo(id);
ALTER TABLE vote ADD CONSTRAINT vote_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE vote ADD CONSTRAINT vote_profit_id_profit_id FOREIGN KEY (profit_id) REFERENCES profit(id) ON DELETE CASCADE;
ALTER TABLE vote ADD CONSTRAINT vote_talk_id_talk_id FOREIGN KEY (talk_id) REFERENCES talk(id) ON DELETE CASCADE;
ALTER TABLE wish_list ADD CONSTRAINT wish_list_profile_id_sf_guard_user_profile_id FOREIGN KEY (profile_id) REFERENCES sf_guard_user_profile(id);
ALTER TABLE wish_list ADD CONSTRAINT wish_list_location_id_location_id FOREIGN KEY (location_id) REFERENCES location(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_forgot_password ADD CONSTRAINT sf_guard_forgot_password_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_group_permission ADD CONSTRAINT sf_guard_group_permission_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_remember_key ADD CONSTRAINT sf_guard_remember_key_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_group ADD CONSTRAINT sf_guard_user_group_group_id_sf_guard_group_id FOREIGN KEY (group_id) REFERENCES sf_guard_group(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_permission ADD CONSTRAINT sf_guard_user_permission_permission_id_sf_guard_permission_id FOREIGN KEY (permission_id) REFERENCES sf_guard_permission(id) ON DELETE CASCADE;
ALTER TABLE sf_guard_user_profile ADD CONSTRAINT sf_guard_user_profile_user_id_sf_guard_user_id FOREIGN KEY (user_id) REFERENCES sf_guard_user(id);
ALTER TABLE sf_guard_user_profile ADD CONSTRAINT sf_guard_user_profile_city_id_city_id FOREIGN KEY (city_id) REFERENCES city(id);
