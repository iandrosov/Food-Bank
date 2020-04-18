BEGIN TRANSACTION;
CREATE TABLE "Account" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	parent_id VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Account" VALUES('0015D00000dIyxEQAS','Socrates Cafe','');
INSERT INTO "Account" VALUES('0015D00000dIypGQAS','Fort DeSoto shelter','');
INSERT INTO "Account" VALUES('0015D00000dIyxJQAS','South Side','');
CREATE TABLE "Delivery_Item__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	delivery__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery_Item__c" VALUES('a005D000005lrTEQAY','Italian Meat sauce (canned)','2020-09-01','Non-refrigerated','a015D00000BO16ZQAT');
INSERT INTO "Delivery_Item__c" VALUES('a005D000005lrT9QAI','Pasta','','Non-refrigerated','a015D00000BO16ZQAT');
INSERT INTO "Delivery_Item__c" VALUES('a005D000005lrT4QAI','Rice 5lb bags','','Non-refrigerated','a015D00000BO16ZQAT');
INSERT INTO "Delivery_Item__c" VALUES('a005D000005lrTJQAY','Mexican meals','2020-04-30','Frozen','a015D00000BO16eQAD');
CREATE TABLE "Delivery__c" (
	sf_id VARCHAR(255) NOT NULL, 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	supplier__c VARCHAR(255), 
	PRIMARY KEY (sf_id)
);
INSERT INTO "Delivery__c" VALUES('a015D00000BO16ZQAT','2020-04-20T03:00:00.000Z','Scheduled','0015D00000dIyxEQAS');
INSERT INTO "Delivery__c" VALUES('a015D00000BO16eQAD','2020-04-19T03:00:00.000Z','Requested','0015D00000dIyxJQAS');
COMMIT;
