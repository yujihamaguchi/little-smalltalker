Class {
	#name : #AddServiceChargeTest,
	#superclass : #TestCase,
	#category : #'Q999-Payroll-Tests'
}

{ #category : #tests }
AddServiceChargeTest >> testExecute [

	| memberId date amount transaction affiliation serviceCharge employee |
	"Arrange"
	memberId := Mock new.
	date := Mock new.
	amount := Mock new.

	employee := Mock new.
	(PayrollDatabase stub employeeWithUnionMemberId: memberId) 
		willReturn: employee.
	affiliation := Mock new.
	employee stub affiliation willReturn: affiliation.
	serviceCharge := Mock new.
	(ServiceCharge stub date: date amount: amount) willReturn:
		serviceCharge.

	"Act"
	transaction := AddServiceCharge
		               memberId: memberId
		               date: date
		               amount: amount.
	transaction execute.

	"Assert"
	PayrollDatabase should receive employeeWithUnionMemberId: memberId.
	employee should receive affiliation.
	ServiceCharge should receive date: date amount: amount.
	affiliation should receive addServiceCharge: serviceCharge
]

{ #category : #tests }
AddServiceChargeTest >> testExecuteNoSuchMember [

	| raisedException memberId transaction |
	"Arrange"
	memberId := Mock new.
	(PayrollDatabase stub employeeWithUnionMemberId: memberId) 
		willReturn: nil.

	"Act"
	transaction := AddServiceCharge
		               memberId: memberId
		               date: Mock new
		               amount: Mock new.
	[ transaction execute ]
		on: Exception
		do: [ :e | raisedException := e ].

	"Assert"
	self
		assert: raisedException messageText
		equals: 'No such member. id: ' , memberId asString
]
