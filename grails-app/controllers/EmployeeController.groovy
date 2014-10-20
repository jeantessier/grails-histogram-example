class EmployeeController {

    static scaffold = true

    def employeeService

    def stats() {
        def genderHisto = employeeService.genderHisto
        def count = genderHisto.values().sum() ?: 0

        [ genderHisto: genderHisto, count: count ]
    }

}

