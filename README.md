# Web UI Automation Testing Framework

## Project Overview

This project is a Web UI Automation Testing Framework developed as part of a QA Automation assignment.

The framework uses Selenium WebDriver and Cucumber to automate login functionality testing on the SauceDemo website.

It follows the Page Object Model (POM) design pattern to keep page elements and test logic organized and maintainable.

**Application Under Test:** https://www.saucedemo.com/

## Technologies Used

- Java 25
- Gradle 9.2.1
- Selenium WebDriver 4.25.0
- Cucumber 7.20.1
- JUnit 4
- Gherkin
- Google Chrome

## Project Structure

```text
web-ui-automation-test/
│
├── gradle/
├── lib/
│   ├── src/
│   │   └── test/
│   │       ├── java/
│   │       │   └── org/example/
│   │       │       ├── pages/
│   │       │       │   ├── LoginPage.java
│   │       │       │   └── InventoryPage.java
│   │       │       │
│   │       │       ├── steps/
│   │       │       │   └── LoginSteps.java
│   │       │       │
│   │       │       └── runner/
│   │       │           └── TestRunner.java
│   │       │
│   │       └── resources/
│   │           └── features/
│   │               └── login.feature
│   │
│   └── build/
│       └── reports/
│           └── cucumber/
│               └── cucumber.html
│
├── gradlew
├── gradlew.bat
├── settings.gradle
└── README.md
```

## Test Scenarios

The current automation suite covers six login scenarios:

| No. | Test Scenario | Test Type |
|---|---|---|
| 1 | Successful login with valid credentials | Positive |
| 2 | Login with an incorrect password | Negative |
| 3 | Login with a locked-out user | Negative |
| 4 | Login with empty username and password | Boundary |
| 5 | Login with an empty password | Boundary |
| 6 | Login with a username containing 300 characters | Boundary |

## Prerequisites

Before running the tests, make sure you have:

- Java Development Kit (JDK) 25
- Google Chrome browser
- Internet connection
- Git (if you want to clone the repository)

## How to Run the Tests

1. Clone or download this repository.
2. Open the project folder in your terminal.
3. Run the following command:

```powershell
.\gradlew.bat :lib:test
```

Gradle will execute the Cucumber test scenarios using Selenium WebDriver.

## Test Report

After the test execution is completed, the Cucumber HTML report can be found at:

```text
lib/build/reports/cucumber/cucumber.html
```

Open the HTML file in your browser to review the test execution results.

## Test Execution Results

The current test execution results:

- Total scenarios: 6
- Passed scenarios: 6
- Failed scenarios: 0

All six login scenarios passed successfully.

## Author

Developed as part of a QA Automation assignment.