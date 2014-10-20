class EmployeeController {

    static scaffold = true

    def employeeService

    def stats() {
        [ genderHisto: employeeService.genderHisto ]
    }

}

