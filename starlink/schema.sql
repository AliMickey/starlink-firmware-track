DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS firmware;

CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE firmware (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  date_added TEXT NOT NULL,
  type TEXT NOT NULL,
  version_info TEXT NOT NULL,
  reddit_thread TEXT
);

-- Init import from spreadsheet at time of website launch
INSERT INTO firmware (type, date_added, version_info, reddit_thread)
-- Dishy Firmware
VALUES 
('dishy', '2020-10-26 00:00:00', '???', ''),
('dishy', '2020-11-01 00:00:00', 'Old version: ____654.release', ''),
('dishy', '2020-11-10 00:00:00', 'New version: ____758.release', ''),
('dishy', '2020-11-20 00:00:00', 'e2447448-74b0-42f7-b6c8-2bb5a608871a.release', ''),
('dishy', '2020-11-23 00:00:00', '56d5e0aa-c1e8-4d25-aa65-dd8699aaaf62.release', ''),
('dishy', '2020-11-29 00:00:00', '37f8cd77-1e7c-47ea-b1a5-de99ebf16dee.release', ''),
('dishy', '2020-12-06 00:00:00', '5eb22757-5bc1-440f-ab64-9d5053986827.release', ''),
('dishy', '2020-12-11 00:00:00', 'e09928da-4e31-4040-a34e-61d38c10b37f.release', ''),
('dishy', '2020-12-19 00:00:00', '0a3e5881-1312-453f-9c97-8aa7fa2abb89.release', ''),
('dishy', '2021-01-09 00:00:00', '48b97eee-bda8-4593-b1d2-785ad4e493de.release', ''),
('dishy', '2021-01-24 00:00:00', 'd9aff5fa-0334-49bc-b69d-b92a9c7871fa.release', ''),
('dishy', '2021-02-01 00:00:00', '3a1d5d0c-c93b-40b8-a884-021a9c1da1dc.release', ''),
('dishy', '2021-02-09 00:00:00', 'e68dfc80-fa1a-4fa4-9b21-d7ee2a918496.release', ''),
('dishy', '2021-02-12 00:00:00', '7db91a39-b61e-43fe-8bbe-ecb570197cae.release', ''),
('dishy', '2021-02-19 00:00:00', 'a95d0312-a6de-412e-9379-c6bee964f9e0.release', ''),
('dishy', '2021-03-03 00:00:00', '848e54d2-015a-49cb-a814-34d7c5fc7e1a.release', ''),
('dishy', '2021-03-09 00:00:00', 'a8a9195a-8258-4dfc-8b5e-15f272cc2436.release', ''),
('dishy', '2021-03-17 00:00:00', '19f05dfc-9d07-4989-b47f-87c8f87b0a25.release', ''),
('dishy', '2021-03-18 00:00:00', 'd61f015c-556a-42b4-ac91-d8e41d157871.release', ''),
('dishy', '2021-03-21 00:00:00', '39d476b5-2102-44ec-bb7e-e526cc8f94f8.release', ''),
('dishy', '2021-03-22 00:00:00', '5f1ea9d9-7896-44da-821a-7a1ab07e78b9.release', ''),
('dishy', '2021-03-24 00:00:00', 'bbd50ae9-da59-4f1d-b0e4-57c776b31ad1.release', ''),
('dishy', '2021-03-26 00:00:00', 'b44f4294-6a78-4a57-b41c-5b613617086a.release', ''),
('dishy', '2021-04-01 00:00:00', '3912b4a3-9eaf-4f9e-81a3-18d8c837a26b.release', ''),
('dishy', '2021-04-07 00:00:00', '89d35d68-5aa5-456a-9727-75f325ccdf46.release', ''),
('dishy', '2021-04-14 00:00:00', '57d28427-764b-40de-9c10-fcac5cd7e956.release', ''),
('dishy', '2021-04-21 00:00:00', 'feb4dfde-e080-4e6a-bcbe-21511ee9c8bc.release', ''),
('dishy', '2021-04-28 00:00:00', '1f86ec34-34ea-4e7a-9758-3842e72422fb.release', ''),
('dishy', '2021-05-01 00:00:00', 'c8d90754-fd1e-45e6-b1a9-643c25725696.release', ''),
('dishy', '2021-05-05 00:00:00', '3da423b9-e7aa-4cc8-949a-34a1169c81b8.release', ''),
('dishy', '2021-05-07 00:00:00', 'fd689710-a5ee-45c8-9c8a-ff15c943cd70.release', ''),
('dishy', '2021-05-12 00:00:00', '68fdc22b-c4ca-4ee8-92c5-2b51d07ef282.release', ''),
('dishy', '2021-05-18 00:00:00', '1752790c-3c41-4df6-96b1-037e914d842c.uterm.release', ''),
('dishy', '2021-06-03 00:00:00', 'db6b5d22-a642-43d6-bbec-97a816e3dbd6.uterm.release', ''),
('dishy', '2021-06-15 00:00:00', 'a4908729-5051-4d3b-aacc-446ef9b26cdc.uterm.release', ''),
('dishy', '2021-06-21 00:00:00', '990b956d-a7fc-4c9b-a3ab-c09a309ac425.uterm.release', ''),
('dishy', '2021-06-25 00:00:00', '4990ce8d-5028-4e51-a015-e9ab1b1ebe1a.uterm.release ', ''),
('dishy', '2021-06-30 00:00:00', '26d12814-ee70-4c5c-8ef4-d18ea55e409c.uterm.release', ''),
('dishy', '2021-07-09 00:00:00', '2bc83694-2dec-48c8-9061-88b86cdd5d89.uterm.release', ''),
('dishy', '2021-07-14 00:00:00', '61627314-cce5-482b-bf9a-e516b4d8b8e0.uterm.release', ''),
('dishy', '2021-07-26 00:00:00', '6390f89c-448c-4fe6-8e1c-14708993ef7c.uterm.release', ''),
('dishy', '2021-07-28 00:00:00', 'e825ab2c-1e21-4e24-bc77-6ffe80e76669.uterm.release', ''),
('dishy', '2021-08-04 00:00:00', '2f1e0cbf-f2ab-499e-a515-6dd702e23d0c.uterm.release', ''),
('dishy', '2021-08-12 00:00:00', '04295e41-1659-4d0e-bf7a-3e5793aa930b.uterm.release', ''),
('dishy', '2021-08-21 00:00:00', 'ffbfa775-4438-44aa-8cf8-be2cf0485d9c.uterm.release', ''),
('dishy', '2021-08-26 00:00:00', 'f9ff8ff1-b950-4524-8515-a105a2709cc4.uterm.release', 'https://www.reddit.com/r/Starlink/comments/pc56i6/new_firmware_update/'),
('dishy', '2021-09-04 00:00:00', '145e5395-7df8-4887-92f3-061883259d78.uterm.release', 'https://www.reddit.com/r/Starlink/comments/phpmfv/new_terminal_version_4_hours_ago/'),
('dishy', '2021-09-10 00:00:00', '329e8b03-63e0-4e6b-b7b7-332246516629.uterm.release', 'https://www.reddit.com/r/Starlink/comments/po5sbi/firmware_release/'),
('dishy', '2021-09-15 00:00:00', 'ad4f7638-538d-4de9-a161-f91a6dadc6ee.uterm.release', 'https://www.reddit.com/r/Starlink/comments/pop4y9/new_firmware_received_this_morning_44_ontario/'),
('dishy', '2021-09-22 00:00:00', 'fbed6cae-4e45-4526-82b0-1fd503197f54.uterm.release', 'https://www.reddit.com/r/Starlink/comments/pt0ff3/new_firmware/'),
('dishy', '2021-09-26 00:00:00', '55aa8754-4a14-4c93-be61-a8520373ab9e.uterm.release', 'https://www.reddit.com/r/Starlink/comments/pwa09b/new_firmware_this_morning_556n/'),
('dishy', '2021-09-30 00:00:00', '98601479-46bd-4c5a-acbf-2d4839518ce2.uterm.release', 'https://www.reddit.com/r/Starlink/comments/pyhjqr/firmware_98601479_93021/'),
('dishy', '2021-10-07 00:00:00', '3155b85a-29b0-4de0-8c5e-c23c321bf245.uterm.release', 'https://www.reddit.com/r/Starlink/comments/q4lto5/new_firmware/?'),
('dishy', '2021-10-20 00:00:00', 'bad40e7c-d5e4-4fbc-aee1-d35401e1f0ee.uterm.release', 'https://www.reddit.com/r/Starlink/comments/qbxlje/new_firmware/'),
('dishy', '2021-10-28 00:00:00', 'df17edeb-5964-4be7-a022-1bec132edf8b.uterm.release', 'https://www.reddit.com/r/Starlink/comments/qhdy1n/new_firmware_edf8b/'),
('dishy', '2021-11-02 00:00:00', '593080c7-f17b-4a3b-be52-7e231ab8284e.uterm.release', 'https://www.reddit.com/r/Starlink/comments/qlpghh/new_update/'),
('dishy', '2021-11-10 00:00:00', 'a31345de-c1c5-45d3-be6c-7443438776b9.uterm.release', 'https://www.reddit.com/r/Starlink/comments/qr60dh/new_firmware/'),
('dishy', '2021-11-19 00:00:00', '86bab8ba-c91b-48a2-a495-e9ef466bad1c.uterm.release', 'https://www.reddit.com/r/Starlink/comments/qzlzpm/new_firmware_86bab8bac91b48a2a495e9ef466bad1c/'),
('dishy', '2021-12-02 00:00:00', 'dd5393bc-ecec-4fc6-9c67-4d0fa0cd2e50.uterm.release', 'https://www.reddit.com/r/Starlink/comments/r727qp/new_firmware/'),
('dishy', '2021-12-02 00:00:01', 'ea6ec638-dcb9-419f-a32e-e7b69679c55c.uterm.release', 'https://www.reddit.com/r/Starlink/comments/r767on/firmware_update_122/'),
('dishy', '2021-12-10 00:00:00', 'e6baeba8-7f8a-4a98-a392-7923cbb48980.uterm.release', ''),
('dishy', '2021-12-13 00:00:00', '0a1098c3-8ead-4482-a64c-207e58ffac3d.uterm.release', 'https://www.reddit.com/r/Starlink/comments/rfo4xn/0a1098c38ead4482a64c207e58ffac3dutermrelease/'),
('dishy', '2021-12-18 00:00:00', '0a38f6f7-00f1-4187-bc68-f8ee12545830.uterm.release', 'https://www.reddit.com/r/Starlink/comments/rj60qd/new_firmware_this_morning/'),
('dishy', '2022-01-07 00:00:00', '64ff6712-2820-4582-b1e2-fb0230950957.uterm.release', 'https://www.reddit.com/r/Starlink/comments/rz1pil/great_to_see_my_average_power_is_back_down_to_45/  '),
('dishy', '2022-01-12 00:00:00', '992cafb5-61c7-46a3-9ef7-5907c8cf90fd.uterm.release', 'https://www.reddit.com/r/Starlink/comments/s28l4e/new_fw/'),
('dishy', '2022-01-21 00:00:00', '5564993e-1c93-4219-95b1-3fdb2373c468.uterm.release', 'https://www.reddit.com/r/Starlink/comments/s9ccl8/new_firmware_12122_5564993e/'),
('dishy', '2022-01-28 00:00:00', '46a3d9e8-e05f-4f07-9556-fea1b83ccaac.uterm.release', 'https://www.reddit.com/r/Starlink/comments/selh2f/new_firmware_220128/'),
('dishy', '2022-02-02 00:00:00', 'd4f1288e-cf7f-4df9-b898-71c9f7910c15.uterm.release', 'https://www.reddit.com/r/Starlink/comments/sip3j9/d4f1288ecf7f4df9b89871c9f7910c15utermrelease/'),


-- Router Firmware
('router', '2021-03-12 00:00:00', '2020-12-15-ebee324-prod', ''),
('router', '2021-03-15 00:00:00', '2021.1.0.mr987-prod', ''),
('router', '2021-03-18 00:00:00', '2021.5.0.mr1287-prod', ''),
('router', '2021-03-25 00:00:00', '2021.7.0.mr1455-prod', ''),
('router', '2021-04-14 00:00:00', '2021.10.0.mr1742-prod', ''),
('router', '2021-05-04 00:00:00', '2021.12.0.mr2037-prod', ''),
('router', '2021-05-05 00:00:00', '2021.13.0.mr2106-prod', ''),
('router', '2021-05-06 00:00:00', '2021.14.0.mr2130-prod', ''),
('router', '2021-05-08 00:00:00', '2021.15.0.mr2181-prod', ''),
('router', '2021-05-18 00:00:00', '2021.16.0.mr2262-prod', ''),
('router', '2021-05-24 00:00:00', '2021.17.0.mr2358-prod', ''),
('router', '2021-05-25 00:00:00', '2021.18.0.mr2404-prod', ''),
('router', '2021-06-18 00:00:00', '2021.19.0.mr2666-prod', ''),
('router', '2021-07-09 00:00:00', '2021.20.0.mr2920-prod', ''),
('router', '2021-07-18 00:00:00', '2021.22.0.mr3104-prod', ''),
('router', '2021-08-05 00:00:00', '2021.23.0.mr3374-prod', ''),
('router', '2021-08-06 00:00:00', '2021.24.0.mr3451-prod', ''),
('router', '2021-08-17 00:00:00', '2021.26.0.mr3674-prod', ''),
('router', '2021-08-19 00:00:00', '2021.26.1.mr3694-prod', ''),
('router', '2021-08-19 00:00:00', '2021.27.0.mr4629-prod', 'https://www.reddit.com/r/Starlink/comments/pop4y9/new_firmware_received_this_morning_44_ontario/hd377or?utm_source=share&utm_medium=web2x&context=3'),
('router', '2021-09-24 00:00:00', '2021.28.0.mr4964-prod', ''),
('router', '2021-10-03 00:00:00', '2021.29.0.mr5234-prod', ''),
('router', '2021-10-16 00:00:00', '2021.30.0.mr5586-prod', ''),
('router', '2021-10-28 00:00:00', '2021.35.0.mr6087-prod', ''),
('router', '2021-11-06 00:00:00', '2021.38.0.mr6396-prod', ''),
('router', '2021-11-09 00:00:00', '2021.42.0.mr6584-prod', ''),
('router', '2021-11-10 00:00:00', '2021.43.0.mr6661-prod', ''),
('router', '2021-11-15 00:00:00', '2021.44.0.mr6798-prod', 'https://www.reddit.com/r/Starlink/comments/qunrp9/starlink_router_update/'),
('router', '2021-11-15 00:00:01', '2021.45.0.mr6895-prod', 'https://www.reddit.com/r/Starlink/comments/qupq34/new_router_version_2021450mr6895prod/'),
('router', '2021-12-05 00:00:00', '2021.48.0.mr7520-prod', ''),
('router', '2021-12-08 00:00:00', '2021.49.0.mr7621-prod', 'https://www.reddit.com/r/Starlink/comments/rbo63r/starlink_router_update/'),
('router', '2021-12-13 00:00:00', '2021.51.0.mr7792-prod', ''),
('router', '2021-12-19 00:00:00', '2021.52.0.mr8090-prod', ''),
('router', '2022-01-07 00:00:00', '2022.01.0.mr8624-prod', 'https://www.reddit.com/r/Starlink/comments/ryqg40/router_just_rebooted_and_just_found_this/'),
('router', '2022-01-18 00:00:00', '2022.02.0.mr8910-prod', ''),
('router', '2022-01-23 00:00:00', '2022.03.0.mr9052-prod', ''),
('router', '2022-02-07 00:00:00', '2022.06.0.mr9666-prod', ''),


-- Mobile App Firmware
('app', '2021-08-02 00:00:00', '2.0.3', ''),
('app', '2021-08-04 00:00:00', '2.0.5', ''),
('app', '2021-08-10 00:00:00', '2.0.7', ''),
('app', '2021-08-16 00:00:00', '2.0.8', ''),
('app', '2021-08-26 00:00:00', '2.0.9', ''),
('app', '2021-09-03 00:00:00', '2.0.10', ''),
('app', '2021-09-13 00:00:00', '2.0.11', ''),
('app', '2021-10-20 00:00:00', '2.0.12', ''),
('app', '2021-10-28 00:00:00', '2.0.13', ''),
('app', '2021-11-01 00:00:00', '2.0.14', ''),
('app', '2021-11-09 00:00:00', '2.0.15', ''),
('app', '2021-11-12 00:00:00', '2.0.16', ''),
('app', '2021-11-20 00:00:00', '2.0.17', ''),
('app', '2021-11-23 00:00:00', '2.0.18', ''),
('app', '2021-12-09 00:00:00', '2.0.19', ''),
('app', '2022-01-07 00:00:00', '2.0.20', ''),
('app', '2022-01-15 00:00:00', '2.0.21', ''),


-- Web UI Firmware
('web', '2020-01-01 00:00:00', '1.0.20', ''),
('web', '2021-01-23 00:00:00', '1.0.23', ''),
('web', '2021-04-16 00:00:00', '1.0.31', ''),
('web', '2021-05-01 00:00:00', '1.0.35', ''),
('web', '2021-05-26 00:00:00', '1.0.36', ''),
('web', '2021-06-09 00:00:00', '1.0.37', ''),
('web', '2021-06-25 00:00:00', '1.0.38', ''),
('web', '2021-10-07 00:00:00', '2.0.12', ''),
('web', '2021-11-28 00:00:00', '2.0.16', ''),
('web', '2022-01-29 00:00:00', '0.0.0', ''),


-- Hardware Firmware
('hardware', '2020-11-05 00:00:00', 'rev1_pre_production', ''),
('hardware', '2021-04-15 00:00:00', 'rev2_proto2', 'https://www.reddit.com/r/Starlink/comments/nq4lia/dish_hardware_versions/'),
('hardware', '2021-10-08 00:00:00', 'rev2_proto3', 'https://www.reddit.com/r/Starlink/comments/q3qb1b/this_is_getting_out_of_hand_now_there_are_two_of/'),
('hardware', '2021-11-09 00:00:00', 'rev2_proto4', ''),
('hardware', '2021-11-19 00:00:00', 'rev3_proto2', '');