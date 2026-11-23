
package org.example.runner;

import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
    features = "src/test/resources/features",
    glue = "org.example.steps",
    plugin = {"pretty", "html:build/reports/cucumber/cucumber.html"},
    monochrome = true
)

public class TestRunner {
}
