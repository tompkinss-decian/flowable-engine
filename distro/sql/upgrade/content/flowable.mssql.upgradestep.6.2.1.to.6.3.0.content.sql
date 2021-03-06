

UPDATE [ACT_CO_DATABASECHANGELOGLOCK] SET [LOCKED] = 1, [LOCKEDBY] = '192.168.1.5 (192.168.1.5)', [LOCKGRANTED] = '2019-03-13T21:42:25.184' WHERE [ID] = 1 AND [LOCKED] = 0

ALTER TABLE [ACT_CO_CONTENT_ITEM] ADD [SCOPE_ID_] [varchar](255)

ALTER TABLE [ACT_CO_CONTENT_ITEM] ADD [SCOPE_TYPE_] [varchar](255)

CREATE NONCLUSTERED INDEX idx_contitem_scope ON [ACT_CO_CONTENT_ITEM]([SCOPE_ID_], [SCOPE_TYPE_])

INSERT INTO [ACT_CO_DATABASECHANGELOG] ([ID], [AUTHOR], [FILENAME], [DATEEXECUTED], [ORDEREXECUTED], [MD5SUM], [DESCRIPTION], [COMMENTS], [EXECTYPE], [CONTEXTS], [LABELS], [LIQUIBASE], [DEPLOYMENT_ID]) VALUES ('2', 'flowable', 'org/flowable/content/db/liquibase/flowable-content-db-changelog.xml', GETDATE(), 2, '7:5aa445d140a638ee432a00c23134dd98', 'addColumn tableName=ACT_CO_CONTENT_ITEM; createIndex indexName=idx_contitem_scope, tableName=ACT_CO_CONTENT_ITEM', '', 'EXECUTED', NULL, NULL, '3.5.3', '2509745483')

UPDATE [ACT_CO_DATABASECHANGELOGLOCK] SET [LOCKED] = 0, [LOCKEDBY] = NULL, [LOCKGRANTED] = NULL WHERE [ID] = 1

