Class {
	#name : #TestPayroll,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-PayrollApplication'
}

{ #category : #initialization }
TestPayroll >> setUp [

	super setUp.
	PayrollDatabase setUp
]

{ #category : #running }
TestPayroll >> tearDown [

	super tearDown
]

{ #category : #tests }
TestPayroll >> test0010AddSalariedEmployeeE2E [

	" [ Overall Rule ]
	1. Before proceeding to the implementation phase, ensure that you have thoroughly read Chapter 18.    
	   Practice reading each use case( 1 - 9 ), extracting design information from it on your own, and then        comparing it with Uncle Bob's ideas.
	2. After implementation, please read Chapter 22 and organize the group of classes using package ( on Smalltalk, using tag maybe).
	"

	"
	[ UseCase1: Add employee ]
	Three are three transaciton type below.
	
	- AddEmp <EmpID> '<name>' '<address>' H <hourly-rate>
	- AddEmp <EmpID> '<name>' '<address>' S <monthly-salary>
	- AddEmp <EmpID> '<name>' '<address>' C <monthly-salary> <commission-rate>
	
	The default method for salary payment is the HoldMethod.
	If an employee wishes for a different method, they will need to submit a separate change request.
	"

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/eac898f3d1a9c31dbae0953c98f9b79bbbd011d2/Q999-Payroll.package/TestPayroll.class/instance
"

	| empId transaction employee classification schedule method name address salary |
	"Arrange"
	empId := 123.
	name := 'Bob'.
	address := 'Home'.
	salary := 2340.

	"Act"
	transaction := AddSalariedEmployee
		               empId: empId
		               name: name
		               address: address
		               salary: salary.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.
	self assert: employee class equals: Employee.
	self assert: employee name equals: name.
	self assert: employee address equals: address.

	classification := employee classification.
	self deny: classification isNil.
	self assert: classification class equals: SalariedClassification.
	self assert: classification salary equals: salary.

	schedule := employee schedule.
	self deny: schedule isNil.
	self assert: schedule class equals: MonthlySchedule.

	method := employee method.
	self deny: method isNil.
	self assert: method class equals: HoldMethod
]

{ #category : #tests }
TestPayroll >> test0011AddSalariedEmployee [

	| empId name address employee salary transaction classification schedule method |
	"Arrange"
	empId := Mock new.
	name := Mock new.
	address := Mock new.
	salary := Mock new.

	employee := Mock new.
	(Employee stub id: empId name: name address: address) willReturn:
		employee.

	classification := Mock new.
	(SalariedClassification stub salary: salary) willReturn:
		classification.

	schedule := Mock new.
	MonthlySchedule stub new willReturn: schedule.

	method := Mock new.
	HoldMethod stub new willReturn: method.

	(PayrollDatabase stub addEmployee: employee) willReturnYourself.

	"Act"
	transaction := AddSalariedEmployee
		               empId: empId
		               name: name
		               address: address
		               salary: salary.
	transaction execute.

	"Assert"
	Employee should receive id: empId name: name address: address.
	SalariedClassification should receive salary: salary.
	employee should receive classification: classification.
	MonthlySchedule should receive new.
	employee should receive schedule: schedule.
	HoldMethod should receive new.
	employee should receive method: method.
	PayrollDatabase should receive addEmployee: employee
]

{ #category : #tests }
TestPayroll >> test0020AddHourlyEmployeeE2E [

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/ec707d83170c6504f2dcfdea4e5a256dcd6daa0d/Q999-Payroll.package/TestPayroll.class/instance
"

	| empId transaction employee classification schedule method name address hourlyRate |
	"Arrange"
	empId := 123.
	name := 'John'.
	address := 'NewYork'.
	hourlyRate := 10.

	"Act"
	transaction := AddHourlyEmployee
		               empId: empId
		               name: name
		               address: address
		               hourlyRate: hourlyRate.

	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.
	self assert: employee class equals: Employee.
	self assert: employee name equals: name.
	self assert: employee address equals: address.

	classification := employee classification.
	self deny: classification isNil.
	self assert: classification class equals: HourlyClassification.
	self assert: classification rate equals: hourlyRate.

	schedule := employee schedule.
	self deny: schedule isNil.
	self assert: schedule class equals: WeeklySchedule.

	method := employee method.
	self deny: method isNil.
	self assert: method class equals: HoldMethod
]

{ #category : #tests }
TestPayroll >> test0021AddHourlyEmployee [

	| empId name address houlyRate transaction employee classification schedule method timeCards |
	"Arrange"
	empId := Mock new.
	name := Mock new.
	address := Mock new.
	houlyRate := Mock new.
	timeCards := Mock new.

	employee := Mock new.
	(Employee stub id: empId name: name address: address) willReturn:
		employee.
	TimeCards stub new willReturn: timeCards.
	classification := Mock new.
	(HourlyClassification stub rate: houlyRate timeCards: timeCards) 
		willReturn: classification.

	schedule := Mock new.
	WeeklySchedule stub new willReturn: schedule.

	method := Mock new.
	HoldMethod stub new willReturn: method.

	(PayrollDatabase stub addEmployee: employee) willReturnYourself.

	"Act"
	transaction := AddHourlyEmployee
		               empId: empId
		               name: name
		               address: address
		               hourlyRate: houlyRate.

	transaction execute.

	"Assert"
	Employee should receive id: empId name: name address: address.
	TimeCards should receive new.
	HourlyClassification should receive
		rate: houlyRate
		timeCards: timeCards.
	employee should receive classification: classification.
	WeeklySchedule should receive new.
	employee should receive schedule: schedule.
	HoldMethod should receive new.
	employee should receive method: method.
	PayrollDatabase should receive addEmployee: employee
]

{ #category : #tests }
TestPayroll >> test0030AddCommissionedEmployeeE2E [

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/d33ed1dd4c87a3b584250f92237818e5f693c1f6/Q999-Payroll.package/TestPayroll.class/instance
"

	| empId transaction employee classification schedule method name address salary commissionRate |
	"Arrange"
	empId := 123.
	name := 'Mike'.
	address := 'Chicago'.
	salary := 2340.
	commissionRate := 20.

	"Act"
	transaction := AddCommissionedEmployee
		               empId: empId
		               name: name
		               address: address
		               salary: salary
		               commissionRate: commissionRate.

	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.
	self assert: employee class equals: Employee.
	self assert: employee name equals: name.

	classification := employee classification.
	self deny: classification isNil.
	self assert: classification class equals: CommissionedClassification.
	self assert: classification salary equals: salary.
	self assert: classification commissionRate equals: commissionRate.

	schedule := employee schedule.
	self deny: schedule isNil.
	self assert: schedule class equals: BiweekSchedule.

	method := employee method.
	self deny: method isNil.
	self assert: method class equals: HoldMethod
]

{ #category : #tests }
TestPayroll >> test0031AddCommissionedEmployee [

	| empId name address salary commissionRate transaction employee classification schedule method salesReceipts |
	"Arrange"
	empId := Mock new.
	name := Mock new.
	address := Mock new.
	salary := Mock new.
	commissionRate := Mock new.

	employee := Mock new.
	(Employee stub id: empId name: name address: address) willReturn:
		employee.

	salesReceipts := Mock new.
	SalesReceipts stub new willReturn: salesReceipts.
	classification := Mock new.
	(CommissionedClassification stub
		 salary: salary
		 commissionRate: commissionRate
		 salesReceipts: salesReceipts) willReturn: classification.

	schedule := Mock new.
	BiweekSchedule stub new willReturn: schedule.

	method := Mock new.
	HoldMethod stub new willReturn: method.

	(PayrollDatabase stub addEmployee: employee) willReturnYourself.

	"Act"
	transaction := AddCommissionedEmployee
		               empId: empId
		               name: name
		               address: address
		               salary: salary
		               commissionRate: commissionRate.

	transaction execute.

	"Assert"
	Employee should receive id: empId name: name address: address.
	CommissionedClassification should receive
		salary: salary
		commissionRate: commissionRate
		salesReceipts: salesReceipts.
	employee should receive classification: classification.
	BiweekSchedule should receive new.
	employee should receive schedule: schedule.
	HoldMethod should receive new.
	employee should receive method: method.
	PayrollDatabase should receive addEmployee: employee
]

{ #category : #tests }
TestPayroll >> test0040DeleteEmployeeE2E [

	"
	[ UseCase2: Delete employee ]
	
	- DelEmp <EmpID>
	"

	"
	You should pass this test with TDD.
	refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a933043167f152c9556df7a51822e43753c23ad4/Q999-Payroll.package/TestPayroll.class/instance
"

	| empId transaction employee |
	"Arrange"
	empId := 123.
	transaction := AddSalariedEmployee
		               empId: empId
		               name: Mock new
		               address: Mock new
		               salary: Mock new.
	transaction execute.

	employee := PayrollDatabase employeeWithId: empId.
	self deny: employee isNil.

	"Act"
	transaction := DeleteEmployee empId: empId.
	transaction execute.

	"Assert"
	employee := PayrollDatabase employeeWithId: empId.
	self assert: employee isNil
]

{ #category : #tests }
TestPayroll >> test0041DeleteEmployee [

	| empId transaction employee |
	"Arrange"
	empId := Mock new.
	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.
	(PayrollDatabase stub removeEmployeeWithId: empId) willReturnYourself.

	"Act"
	transaction := DeleteEmployee empId: empId.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	PayrollDatabase should receive removeEmployeeWithId: empId
]

{ #category : #tests }
TestPayroll >> test0042DeleteEmployeeNoSuchEmployee [

	| empId transaction raisedException |
	"Arrange"
	empId := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: nil.

	"Act"
	transaction := DeleteEmployee empId: empId.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	PayrollDatabase should receive employeeWithId: empId.
	self
		assert: raisedException messageText
		equals: 'No such employee. id: ' , empId asString
]

{ #category : #tests }
TestPayroll >> test0180PaySingleSalariedEmployee [

	| inputPayDate transaction empId employee payPeriodStartDate payCheck payCheckUpdated |
	"Arrange"
	inputPayDate := Mock new.

	empId := Mock new.
	PayrollDatabase stub allEmployeeIds willReturn: { empId }.

	employee := Mock new.
	(PayrollDatabase stub employeeWithId: empId) willReturn: employee.

	payPeriodStartDate := Mock new.
	(employee stub payPeriodStartDate: inputPayDate) willReturn:
		payPeriodStartDate.

	payCheck := Mock new.
	(Paycheck stub from: payPeriodStartDate to: inputPayDate) 
		willReturn: payCheck.

	payCheckUpdated := Mock new.
	(employee stub payday: payCheck) willReturn: payCheckUpdated.

	"Act"
	transaction := Payday payDate: inputPayDate.
	transaction execute.

	"Assert"
	PayrollDatabase should receive allEmployeeIds.
	PayrollDatabase should receive employeeWithId: empId.
	employee should receive payPeriodStartDate: inputPayDate.
	Paycheck should receive from: payPeriodStartDate to: inputPayDate.
	employee should receive payday: payCheck
]

{ #category : #tests }
TestPayroll >> test0182PaySingleSalariedEmployeeE2E [

	"
You should pass this test with TDD.
refer: https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/84d737d3d2db24ec929aaf8a29b5035aad9490d0/Q999-Payroll.package/TestPayroll.class/instance

spec:
- About `deductions`
Retrieve the service charges from the set held by UnionAffiliation that correspond to the start and end dates of the Paycheck, and sum their amounts.
On the other hand, calculate the amount by multiplying the dues held by UnionAffiliation with the number of Fridays contained between the start and end dates of the Paycheck.
The sum of these two calculations will be the deductions.
"

	| transaction paycheck inputPayDate empId1 empId2 payAmount1 payAmount2 memberId1 memberId2 |
	"Arrange"
	inputPayDate := '2023/09/27'.

	empId1 := 123.
	memberId1 := 1234.
	payAmount1 := 1000.
	transaction := AddSalariedEmployee
		               empId: empId1
		               name: Mock new
		               address: Mock new
		               salary: payAmount1.
	transaction execute.

	transaction := ChangeMember
		               empId: empId1
		               memberId: memberId1
		               dues: Mock new.
	transaction execute.

	transaction := AddServiceCharge memberId: memberId1 date: Mock new amount: Mock new.
	transaction execute.

	empId2 := 456.
	memberId2 := 4567.
	payAmount2 := 2000.
	transaction := AddSalariedEmployee
		               empId: empId2
		               name: Mock new
		               address: Mock new
		               salary: payAmount2.
	transaction execute.

	transaction := ChangeMember
		               empId: empId2
		               memberId: memberId2
		               dues: Mock new.
	transaction execute.

	transaction := AddServiceCharge memberId: memberId2 date: Mock new amount: Mock new.
	transaction execute.

	"Act"
	transaction := Payday payDate: inputPayDate.
	transaction execute.

	"Assert"
	paycheck := transaction paycheck: empId1.
	self assert: paycheck endDate equals: inputPayDate.
	self assert: paycheck grossPay equals: payAmount1.
	self assert: (paycheck field: 'Disposition') equals: 'Hold'.
	self assert: paycheck deductions equals: 0.
	self assert: paycheck netPay equals: payAmount1.
	
	paycheck := transaction paycheck: empId2.
	self assert: paycheck endDate equals: inputPayDate.
	self assert: paycheck grossPay equals: payAmount2.
	self assert: (paycheck field: 'Disposition') equals: 'Hold'.
	self assert: paycheck deductions equals: 0.
	self assert: paycheck netPay equals: payAmount2
]

{ #category : #tests }
TestPayroll >> testExceptionBehavior [

	| raisedException |
	
	[ CannotHandleTimeCardClassificationException signal: 'Test Exception.' ]
		on: CannotHandleTimeCardClassificationException
		do: [ :e | 
			raisedException := e.
		].

	self assert: raisedException messageText equals: 'Test Exception.'.

]
