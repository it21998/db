BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "student_management_app_aithsh" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"studies"	varchar(255) NOT NULL,
	"experience"	varchar(255) NOT NULL,
	"scholarships"	varchar(255) NOT NULL,
	"communication"	varchar(255) NOT NULL,
	"status"	varchar(255) NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"student_id_id"	integer NOT NULL,
	FOREIGN KEY("student_id_id") REFERENCES "student_management_app_students"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_students" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"gender"	varchar(255) NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"admin_id"	bigint NOT NULL UNIQUE,
	"course_id_id"	integer NOT NULL,
	FOREIGN KEY("course_id_id") REFERENCES "student_management_app_courses"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("admin_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_session" (
	"session_key"	varchar(40) NOT NULL,
	"session_data"	text NOT NULL,
	"expire_date"	datetime NOT NULL,
	PRIMARY KEY("session_key")
);
CREATE TABLE IF NOT EXISTS "django_admin_log" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"action_time"	datetime NOT NULL,
	"object_id"	text,
	"object_repr"	varchar(200) NOT NULL,
	"change_message"	text NOT NULL,
	"content_type_id"	integer,
	"user_id"	bigint NOT NULL,
	"action_flag"	smallint unsigned NOT NULL CHECK("action_flag">=0),
	FOREIGN KEY("user_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_admin" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"admin_id"	bigint NOT NULL UNIQUE,
	FOREIGN KEY("admin_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_notificationstaff" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"message"	text NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"Staff_id_id"	integer NOT NULL,
	FOREIGN KEY("Staff_id_id") REFERENCES "student_management_app_staffs"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_notificationstudent" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"message"	text NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"student_id_id"	integer NOT NULL,
	FOREIGN KEY("student_id_id") REFERENCES "student_management_app_students"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_staffs" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"admin_id"	bigint NOT NULL UNIQUE,
	FOREIGN KEY("admin_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_subjects" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"subject_name"	varchar(255) NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL,
	"course_id_id"	integer NOT NULL,
	FOREIGN KEY("course_id_id") REFERENCES "student_management_app_courses"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_courses" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"course_name"	varchar(255) NOT NULL,
	"created_at"	datetime NOT NULL,
	"updated_at"	datetime NOT NULL
);
CREATE TABLE IF NOT EXISTS "student_management_app_customuser_user_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"customuser_id"	bigint NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("customuser_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_customuser_groups" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"customuser_id"	bigint NOT NULL,
	"group_id"	integer NOT NULL,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("customuser_id") REFERENCES "student_management_app_customuser"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "student_management_app_customuser" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"password"	varchar(128) NOT NULL,
	"last_login"	datetime,
	"is_superuser"	bool NOT NULL,
	"username"	varchar(150) NOT NULL UNIQUE,
	"first_name"	varchar(150) NOT NULL,
	"last_name"	varchar(150) NOT NULL,
	"email"	varchar(254) NOT NULL,
	"is_staff"	bool NOT NULL,
	"is_active"	bool NOT NULL,
	"date_joined"	datetime NOT NULL,
	"user_type"	varchar(10) NOT NULL
);
CREATE TABLE IF NOT EXISTS "auth_group" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"name"	varchar(150) NOT NULL UNIQUE
);
CREATE TABLE IF NOT EXISTS "auth_permission" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"content_type_id"	integer NOT NULL,
	"codename"	varchar(100) NOT NULL,
	"name"	varchar(255) NOT NULL,
	FOREIGN KEY("content_type_id") REFERENCES "django_content_type"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "auth_group_permissions" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"group_id"	integer NOT NULL,
	"permission_id"	integer NOT NULL,
	FOREIGN KEY("permission_id") REFERENCES "auth_permission"("id") DEFERRABLE INITIALLY DEFERRED,
	FOREIGN KEY("group_id") REFERENCES "auth_group"("id") DEFERRABLE INITIALLY DEFERRED
);
CREATE TABLE IF NOT EXISTS "django_content_type" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app_label"	varchar(100) NOT NULL,
	"model"	varchar(100) NOT NULL
);
CREATE TABLE IF NOT EXISTS "django_migrations" (
	"id"	integer NOT NULL PRIMARY KEY AUTOINCREMENT,
	"app"	varchar(255) NOT NULL,
	"name"	varchar(255) NOT NULL,
	"applied"	datetime NOT NULL
);
INSERT INTO "student_management_app_aithsh" VALUES (1,'test studies','test experience','test scholarishisp','666666666','Pass','2022-05-30 18:26:29.786985','2022-05-30 18:26:29.787024',1);
INSERT INTO "student_management_app_aithsh" VALUES (2,'test studies2','test experience2','test scholarishisp2','twes2','Reject','2022-05-30 18:26:46.966764','2022-05-30 18:26:46.966812',1);
INSERT INTO "student_management_app_aithsh" VALUES (3,'test 3','test experience23','test scholarishisp23','twes23','Reject','2022-05-30 20:12:23.487553','2022-05-30 20:12:23.487595',1);
INSERT INTO "student_management_app_aithsh" VALUES (4,'test 34','test experience234','test scholarishisp234','twes234','Reject','2022-05-31 10:37:39.167940','2022-05-31 10:37:39.169955',1);
INSERT INTO "student_management_app_aithsh" VALUES (5,'test 34','test experience234','test scholarishisp','666666666','Pass','2022-05-31 10:40:17.980571','2022-05-31 10:40:17.980611',1);
INSERT INTO "student_management_app_aithsh" VALUES (6,'test studies','test experience','test scholarishisp','666666666','Reject','2022-05-31 10:41:47.200107','2022-05-31 10:41:47.200165',1);
INSERT INTO "student_management_app_aithsh" VALUES (7,'test studies','test experience','test scholarishisp','666666666','Pass','2022-05-31 10:44:48.825902','2022-05-31 10:44:48.825945',1);
INSERT INTO "student_management_app_aithsh" VALUES (8,'testMAIL','test experienceMAIL','test scholarishispMAIL','twesMAIL','Reject','2022-05-31 10:54:38.027140','2022-05-31 10:54:38.027192',1);
INSERT INTO "student_management_app_aithsh" VALUES (9,'test studies','test experience','test scholarishisp','666666666','Pass','2022-05-31 11:17:12.798043','2022-05-31 11:17:12.798086',1);
INSERT INTO "student_management_app_aithsh" VALUES (10,'test studies','test experience','test scholarishisp','666666666','Pass','2022-05-31 11:19:31.883770','2022-05-31 11:19:31.883813',1);
INSERT INTO "student_management_app_aithsh" VALUES (11,'test studies','test experience','test scholarishisp2','666666666','Pass','2022-05-31 11:32:54.223063','2022-05-31 11:32:54.223110',1);
INSERT INTO "student_management_app_students" VALUES (1,'Male','2022-05-29 20:48:44.177620','2022-05-29 20:48:44.177673',3,1);
INSERT INTO "django_session" VALUES ('rf1nx6ermsy3h218hvt5zwa32oysfl2m','e30:1nvQ6F:An6EX9yFnK79_zLffLMWOnkGYOSmwojiD8Zm0PiHt8I','2022-06-12 21:05:23.810642');
INSERT INTO "django_session" VALUES ('6xf15h3mbdhmzzy9lp0k6h2y84o5ti87','.eJxVjssKwjAQRf8la5Gkedal0O8Ik8zEFG0oplmJ_24qCHZ3Xxzui3loW_at0tPPyC5MsNN_FiDeqexF3RpS2fwCBW607BLW9TwtMD-ufTUVPJgjJ0PNHRJVMslpLimo5MZRaCTLpdGDINIh2RFA84gmCFTRJqVRqiHaEFUw3JkO_f34vpXs_QHhtEAe:1nvR1h:5epNnQlAytm1Ip5sgnnywmG-8HRABcl6OaWC74evnRU','2022-06-12 22:04:45.562581');
INSERT INTO "student_management_app_admin" VALUES (1,'2022-05-29 20:18:38.998308','2022-05-29 20:18:38.998355',1);
INSERT INTO "student_management_app_staffs" VALUES (1,'2022-05-29 20:19:38.496973','2022-05-29 20:19:38.497022',2);
INSERT INTO "student_management_app_subjects" VALUES (1,'sub111','2022-05-29 20:53:45.194765','2022-05-29 20:53:45.194812',1);
INSERT INTO "student_management_app_subjects" VALUES (2,'sub2','2022-05-29 21:14:57.864329','2022-05-29 21:14:57.864371',1);
INSERT INTO "student_management_app_subjects" VALUES (3,'asasdasd','2022-05-29 22:08:38.856462','2022-05-29 22:08:38.856502',1);
INSERT INTO "student_management_app_courses" VALUES (1,'number111','2022-05-29 20:46:14.579933','2022-05-29 20:46:14.579984');
INSERT INTO "student_management_app_courses" VALUES (2,'as','2022-05-29 22:08:32.988584','2022-05-29 22:08:32.988640');
INSERT INTO "student_management_app_customuser" VALUES (1,'pbkdf2_sha256$260000$n57X2qfUVjaVJNzu4kyaj6$16PZgPXyWzxHBfU9UtNRG3i5B64ZZXx3YQLSlcQgQQ4=','2022-05-29 22:20:24.233101',1,'admin','','','admin@hua.gr',1,1,'2022-05-29 20:18:38.622706','1');
INSERT INTO "student_management_app_customuser" VALUES (2,'pbkdf2_sha256$260000$lPEzXXKrHJ6eO6TRXltVju$64EBNGBiWdY9OkgyRhKJchRsDJxqLiloa2IJIFM02C4=','2022-05-31 11:33:04.166226',0,'MarkHenry','Mark','Henry','Henry@hua.gr',0,1,'2022-05-29 20:19:38.142180','2');
INSERT INTO "student_management_app_customuser" VALUES (3,'pbkdf2_sha256$260000$hYm52OvsdZa4aMATpVVjHC$yeJbu1MNrDmQSDcJ46meG61Dx3vjOhT5QeeK7SHJCQo=','2022-05-31 11:32:46.810185',0,'Loue','papa','Louie','papa@hua.gr',0,1,'2022-05-29 20:48:43.813825','3');
INSERT INTO "auth_permission" VALUES (1,1,'add_logentry','Can add log entry');
INSERT INTO "auth_permission" VALUES (2,1,'change_logentry','Can change log entry');
INSERT INTO "auth_permission" VALUES (3,1,'delete_logentry','Can delete log entry');
INSERT INTO "auth_permission" VALUES (4,1,'view_logentry','Can view log entry');
INSERT INTO "auth_permission" VALUES (5,2,'add_permission','Can add permission');
INSERT INTO "auth_permission" VALUES (6,2,'change_permission','Can change permission');
INSERT INTO "auth_permission" VALUES (7,2,'delete_permission','Can delete permission');
INSERT INTO "auth_permission" VALUES (8,2,'view_permission','Can view permission');
INSERT INTO "auth_permission" VALUES (9,3,'add_group','Can add group');
INSERT INTO "auth_permission" VALUES (10,3,'change_group','Can change group');
INSERT INTO "auth_permission" VALUES (11,3,'delete_group','Can delete group');
INSERT INTO "auth_permission" VALUES (12,3,'view_group','Can view group');
INSERT INTO "auth_permission" VALUES (13,4,'add_contenttype','Can add content type');
INSERT INTO "auth_permission" VALUES (14,4,'change_contenttype','Can change content type');
INSERT INTO "auth_permission" VALUES (15,4,'delete_contenttype','Can delete content type');
INSERT INTO "auth_permission" VALUES (16,4,'view_contenttype','Can view content type');
INSERT INTO "auth_permission" VALUES (17,5,'add_session','Can add session');
INSERT INTO "auth_permission" VALUES (18,5,'change_session','Can change session');
INSERT INTO "auth_permission" VALUES (19,5,'delete_session','Can delete session');
INSERT INTO "auth_permission" VALUES (20,5,'view_session','Can view session');
INSERT INTO "auth_permission" VALUES (21,6,'add_customuser','Can add user');
INSERT INTO "auth_permission" VALUES (22,6,'change_customuser','Can change user');
INSERT INTO "auth_permission" VALUES (23,6,'delete_customuser','Can delete user');
INSERT INTO "auth_permission" VALUES (24,6,'view_customuser','Can view user');
INSERT INTO "auth_permission" VALUES (25,7,'add_courses','Can add courses');
INSERT INTO "auth_permission" VALUES (26,7,'change_courses','Can change courses');
INSERT INTO "auth_permission" VALUES (27,7,'delete_courses','Can delete courses');
INSERT INTO "auth_permission" VALUES (28,7,'view_courses','Can view courses');
INSERT INTO "auth_permission" VALUES (29,8,'add_subjects','Can add subjects');
INSERT INTO "auth_permission" VALUES (30,8,'change_subjects','Can change subjects');
INSERT INTO "auth_permission" VALUES (31,8,'delete_subjects','Can delete subjects');
INSERT INTO "auth_permission" VALUES (32,8,'view_subjects','Can view subjects');
INSERT INTO "auth_permission" VALUES (33,9,'add_students','Can add students');
INSERT INTO "auth_permission" VALUES (34,9,'change_students','Can change students');
INSERT INTO "auth_permission" VALUES (35,9,'delete_students','Can delete students');
INSERT INTO "auth_permission" VALUES (36,9,'view_students','Can view students');
INSERT INTO "auth_permission" VALUES (37,10,'add_staffs','Can add staffs');
INSERT INTO "auth_permission" VALUES (38,10,'change_staffs','Can change staffs');
INSERT INTO "auth_permission" VALUES (39,10,'delete_staffs','Can delete staffs');
INSERT INTO "auth_permission" VALUES (40,10,'view_staffs','Can view staffs');
INSERT INTO "auth_permission" VALUES (41,11,'add_notificationstudent','Can add notification student');
INSERT INTO "auth_permission" VALUES (42,11,'change_notificationstudent','Can change notification student');
INSERT INTO "auth_permission" VALUES (43,11,'delete_notificationstudent','Can delete notification student');
INSERT INTO "auth_permission" VALUES (44,11,'view_notificationstudent','Can view notification student');
INSERT INTO "auth_permission" VALUES (45,12,'add_notificationstaff','Can add notification staff');
INSERT INTO "auth_permission" VALUES (46,12,'change_notificationstaff','Can change notification staff');
INSERT INTO "auth_permission" VALUES (47,12,'delete_notificationstaff','Can delete notification staff');
INSERT INTO "auth_permission" VALUES (48,12,'view_notificationstaff','Can view notification staff');
INSERT INTO "auth_permission" VALUES (49,13,'add_admin','Can add admin');
INSERT INTO "auth_permission" VALUES (50,13,'change_admin','Can change admin');
INSERT INTO "auth_permission" VALUES (51,13,'delete_admin','Can delete admin');
INSERT INTO "auth_permission" VALUES (52,13,'view_admin','Can view admin');
INSERT INTO "auth_permission" VALUES (53,14,'add_aithsh','Can add aithsh');
INSERT INTO "auth_permission" VALUES (54,14,'change_aithsh','Can change aithsh');
INSERT INTO "auth_permission" VALUES (55,14,'delete_aithsh','Can delete aithsh');
INSERT INTO "auth_permission" VALUES (56,14,'view_aithsh','Can view aithsh');
INSERT INTO "django_content_type" VALUES (1,'admin','logentry');
INSERT INTO "django_content_type" VALUES (2,'auth','permission');
INSERT INTO "django_content_type" VALUES (3,'auth','group');
INSERT INTO "django_content_type" VALUES (4,'contenttypes','contenttype');
INSERT INTO "django_content_type" VALUES (5,'sessions','session');
INSERT INTO "django_content_type" VALUES (6,'student_management_app','customuser');
INSERT INTO "django_content_type" VALUES (7,'student_management_app','courses');
INSERT INTO "django_content_type" VALUES (8,'student_management_app','subjects');
INSERT INTO "django_content_type" VALUES (9,'student_management_app','students');
INSERT INTO "django_content_type" VALUES (10,'student_management_app','staffs');
INSERT INTO "django_content_type" VALUES (11,'student_management_app','notificationstudent');
INSERT INTO "django_content_type" VALUES (12,'student_management_app','notificationstaff');
INSERT INTO "django_content_type" VALUES (13,'student_management_app','admin');
INSERT INTO "django_content_type" VALUES (14,'student_management_app','aithsh');
INSERT INTO "django_migrations" VALUES (1,'contenttypes','0001_initial','2022-05-29 20:17:54.151565');
INSERT INTO "django_migrations" VALUES (2,'contenttypes','0002_remove_content_type_name','2022-05-29 20:17:54.268081');
INSERT INTO "django_migrations" VALUES (3,'auth','0001_initial','2022-05-29 20:17:54.498742');
INSERT INTO "django_migrations" VALUES (4,'auth','0002_alter_permission_name_max_length','2022-05-29 20:17:54.576834');
INSERT INTO "django_migrations" VALUES (5,'auth','0003_alter_user_email_max_length','2022-05-29 20:17:54.673979');
INSERT INTO "django_migrations" VALUES (6,'auth','0004_alter_user_username_opts','2022-05-29 20:17:54.749795');
INSERT INTO "django_migrations" VALUES (7,'auth','0005_alter_user_last_login_null','2022-05-29 20:17:54.813617');
INSERT INTO "django_migrations" VALUES (8,'auth','0006_require_contenttypes_0002','2022-05-29 20:17:54.890905');
INSERT INTO "django_migrations" VALUES (9,'auth','0007_alter_validators_add_error_messages','2022-05-29 20:17:54.956117');
INSERT INTO "django_migrations" VALUES (10,'auth','0008_alter_user_username_max_length','2022-05-29 20:17:55.022685');
INSERT INTO "django_migrations" VALUES (11,'auth','0009_alter_user_last_name_max_length','2022-05-29 20:17:55.089013');
INSERT INTO "django_migrations" VALUES (12,'auth','0010_alter_group_name_max_length','2022-05-29 20:17:55.179929');
INSERT INTO "django_migrations" VALUES (13,'auth','0011_update_proxy_permissions','2022-05-29 20:17:55.294008');
INSERT INTO "django_migrations" VALUES (14,'auth','0012_alter_user_first_name_max_length','2022-05-29 20:17:55.383083');
INSERT INTO "django_migrations" VALUES (15,'student_management_app','0001_initial','2022-05-29 20:17:55.755458');
INSERT INTO "django_migrations" VALUES (16,'admin','0001_initial','2022-05-29 20:17:55.973086');
INSERT INTO "django_migrations" VALUES (17,'admin','0002_logentry_remove_auto_add','2022-05-29 20:17:56.070619');
INSERT INTO "django_migrations" VALUES (18,'admin','0003_logentry_add_action_flag_choices','2022-05-29 20:17:56.224417');
INSERT INTO "django_migrations" VALUES (19,'sessions','0001_initial','2022-05-29 20:17:56.458416');
INSERT INTO "django_migrations" VALUES (20,'student_management_app','0002_auto_20220530_1824','2022-05-30 18:24:50.562871');
CREATE INDEX IF NOT EXISTS "student_management_app_aithsh_student_id_id_a97626b5" ON "student_management_app_aithsh" (
	"student_id_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_students_course_id_id_fcd09bed" ON "student_management_app_students" (
	"course_id_id"
);
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" (
	"expire_date"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" (
	"user_id"
);
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" (
	"content_type_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_notificationstaff_Staff_id_id_740caeb0" ON "student_management_app_notificationstaff" (
	"Staff_id_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_notificationstudent_student_id_id_f8c05ed7" ON "student_management_app_notificationstudent" (
	"student_id_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_subjects_course_id_id_342668dd" ON "student_management_app_subjects" (
	"course_id_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_customuser_user_permissions_permission_id_cd344297" ON "student_management_app_customuser_user_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_customuser_user_permissions_customuser_id_41a474d7" ON "student_management_app_customuser_user_permissions" (
	"customuser_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "student_management_app_customuser_user_permissions_customuser_id_permission_id_af9a6989_uniq" ON "student_management_app_customuser_user_permissions" (
	"customuser_id",
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_customuser_groups_group_id_61accfd6" ON "student_management_app_customuser_groups" (
	"group_id"
);
CREATE INDEX IF NOT EXISTS "student_management_app_customuser_groups_customuser_id_1e347552" ON "student_management_app_customuser_groups" (
	"customuser_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "student_management_app_customuser_groups_customuser_id_group_id_d872a780_uniq" ON "student_management_app_customuser_groups" (
	"customuser_id",
	"group_id"
);
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" (
	"content_type_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" (
	"content_type_id",
	"codename"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" (
	"permission_id"
);
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" (
	"group_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" (
	"group_id",
	"permission_id"
);
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" (
	"app_label",
	"model"
);
COMMIT;
