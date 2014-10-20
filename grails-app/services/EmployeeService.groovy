class EmployeeService {

    def getGenderHisto() {
        Employee.withCriteria {
            projections {
                groupProperty "gender"
                rowCount()
            }
        }.inject([:]) { map, row ->
            map[row[0]] = row[1]
            map
        }
    }

}

