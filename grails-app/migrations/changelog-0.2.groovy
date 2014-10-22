databaseChangeLog = {

	changeSet(author: "jtessier (generated)", id: "1414016411029-1") {
		addColumn(tableName: "employee") {
			column(name: "date_created", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "jtessier (generated)", id: "1414016411029-2") {
		addColumn(tableName: "employee") {
			column(name: "last_updated", type: "datetime") {
				constraints(nullable: "false")
			}
		}
	}
}
