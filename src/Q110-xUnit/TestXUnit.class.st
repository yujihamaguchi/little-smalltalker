Class {
	#name : #TestXUnit,
	#superclass : #Object,
	#category : #'Q110-xUnit'
}

{ #category : #tests }
TestXUnit >> test0010CallTestMethod [
"
We want to make our test method executable.

Please execute the script below on a Playground.
You should see nil<CR>1 on a Transcript.

```
Transcript clear.
test := WasRun name: 'testMethod'.
Transcript show: test wasRun; cr.
test testMethod.
Transcript show: test wasRun; cr
```

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/a98547f2a5574ade14f6a4bf345ae81e1ced871f/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0020UseRunMethod [
"
Inspite of calling `testMethod` directly,
if we execute `run` method, it's nice to be called `testMethod` indirectly. 
(You can call `testMethod` directory in run method)

Please pass the test below on Playground.

```
Transcript clear.
test := WasRun name: 'testMethod'.
Transcript show: test wasRun; cr.
test run.
Transcript show: test wasRun; cr
```

You will see nil<CR>1 on a Transcript.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/48a20612d7123cc90633bac61895b788069baf41/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0030CallTestMethodDynamically [
"

You should make `testMethod` called dynamically.

Please pass the test below on Playground.
( Same as the previous question )
```
Transcript clear.
test := WasRun name: 'testMethod'.
Transcript show: test wasRun; cr.
test run.
Transcript show: test wasRun; cr
```

You will see nil<CR>1 on a Transcript.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/69640fb28849b059633719f8b21e1e5a6057edcb/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0040SeparateWasRunClassOnResponsibilities [
"
You should separate `WasRun` class based on responsibilities.

1. Recording whether a method has been executed -> WasRun class
2. Dynamically invoking a test method -> TestCaze class


Please pass the test below on Playground.
( Same as the previous test )
```
Transcript clear.
test := WasRun name: 'testMethod'.
Transcript show: test wasRun; cr.
test run.
Transcript show: test wasRun; cr
```

You will see nil<CR>1 on a Transcript.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/ad9c97479f630731adce20d5fe5bc66636790343/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0050UseOurTestCazeClass [
"
You should use your `TestCaze` class to execute test case.

Please pass the test below on Playground.

```
(TestCazeTest name: 'testRunning') run
```

You will not see anymore on a Transcript.
If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/eb4144c89b76ec197c72550f860bf55bf498898d/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0060SetUp [
"
We want to add `setup` process before execution of test.

Please pass the test below on Playground.

```
(TestCazeTest name: 'testRunning') run.
(TestCazeTest name: 'testSetUp') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/f57a816cb13483c682df5159e84953897c0280c3/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0070RefactorUsingSetUp [
"
You can simplify your code using `setUp`.

Now, you can use setUp method to create a `WasRun` instance.

Please pass the test below on Playground.
( Same as the previous test )
```
(TestCazeTest name: 'testRunning') run
(TestCazeTest name: 'testSetUp') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/330c79cb1aa81359681508f1182fb18c92312740/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0080Logging [
"
You should stop using flags to check if it has been executed and instead use a log.
WasRun log -> 'setUp testMethod ' 

Please pass the test below on Playground.
```
(TestCazeTest name: 'testTemplateMethod') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/72967549255473654f785ac55a4c1578195b3a31/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0090TearDown [
"
It's easy to add `tearDown`.

Please pass the test below on Playground.
( Same as the previous test )
```
(TestCazeTest name: 'testTemplateMethod') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/c9d0c40f0be29c2f88817ae5db616e0084ea1730/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0100ReturnTestResult [
"
We want to receive some test result(named `TestRezult`) which report a summary like `1 run, 0 failed`.
You can hard-code a text of summary but you should return object `TestRezult`.

Please pass the test below on Playground.
```
(TestCazeTest name: 'testTemplateMethod') run.
(TestCazeTest name: 'testRezult') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/e50f64e4242c40d74bc210d395fda8f158e0cbe9/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0110CountTest [
"
You should return object `TestRezult` which has a `runCount` variable.

Please pass the test below on Playground.
( Same as the previous test )
```
(TestCazeTest name: 'testTemplateMethod') run.
(TestCazeTest name: 'testRezult') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/98a03a867066fbc6f7a1bba6552639d71e1d5aaf/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0120CountFailedTestFormmating [
"
You should return object `TestRezult` which has a `errorCount` variable.

At first, you can do a small step which passes the test below.
You can concentrate to implement `TestRezult` class.
```
	result := TestRezult new.
	result testStarted.
	result testFailed.
	TestCase new assert: result summary equals: '1 run, 1 failed'
```

Please pass the test below on Playground.
```
(TestCazeTest name: 'testTemplateMethod') run.
(TestCazeTest name: 'testRezult') run.
(TestCazeTest name: 'testFailedResultFormatting') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/d6344f1ef2cd6d077fba06652b6aa785f25b3387/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0130CountFailedTest [
"
You should return object `TestRezult` which has a `errorCount` variable.
Now, you can create a genuine implement which passes the test below.
```
	test := WasRun name: 'testBrokenMethod'.
	result := test run.
	TestCase new assert: result summary equals: '1 run, 1 failed'
```

Please pass the test below on Playground.
```
(TestCazeTest name: 'testTemplateMethod') run.
(TestCazeTest name: 'testRezult') run.
(TestCazeTest name: 'testFailedResultFormatting') run.
(TestCazeTest name: 'testFailedResult') run
```

If the test is success, nothing is happened.
If the test is failed, you will see some stacktrace.

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/20ccf16c51ef80b57079322bb371ef984920eb45/Q110-xUnit_work.package
"
]

{ #category : #tests }
TestXUnit >> test0140TestSuite [
"
We want to treat a single test and multiple tests in the same way.
You should create a `TestZuite` class to do it.

Please pass the test below on Playground.
```
Transcript clear.
suite := TestZuite new.
suite add: (TestCazeTest name: 'testTemplateMethod').
suite add: (TestCazeTest name: 'testRezult').
suite add: (TestCazeTest name: 'testFailedResultFormatting').
suite add: (TestCazeTest name: 'testFailedResult').
suite add: (TestCazeTest name: 'testZuite').
result := TestRezult new.
suite run: result.
Transcript show: result summary
```
You can see the result below in the Transcript.
```
5 run, 0 failed
```

https://github.com/yujihamaguchi/little-smalltalker-filetree/tree/227980a2dc0d1316ed1184bf3abc8ab5653fa8a9/Q110-xUnit_work.package
"
]
