databaseChangeLog = {

	changeSet(author: "jtessier (generated)", id: "1414015210200-1") {
		createTable(tableName: "employee") {
			column(autoIncrement: "true", name: "id", type: "BIGINT") {
				constraints(nullable: "false", primaryKey: "true")
			}

			column(name: "version", type: "BIGINT") {
				constraints(nullable: "false")
			}

			column(name: "gender", type: "VARCHAR(255)") {
				constraints(nullable: "false")
			}
		}
	}
}
