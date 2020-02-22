# Commands

# Run tests

## Run all scenarios in the project
```bash
behave #needs to be run from feature file folder
behave path\to\your\feature\files\directory
```
## Run all scenarios in a specific feature file
```bash
behave features/test.feature
```
 
## Filter tests by tag
behave --tags-help
behave --tags @sometag
behave --tags ~@atag
behave --tags @testatg --tags @add,@remove
 
# Don't print skipped scenarios
behave -k

# Save report 
## To json file
```bash
behave -f json -o path-to-your-output-file.json
```
## Write a JUnit report
```bash
behave --junit
```
## To allure format
[allure-behave](https://pypi.org/project/allure-behave/)
```bash
behave -f allure_behave.formatter:AllureFormatter -o %allure_result_folder% ./features
allure serve %allure_result_folder%
```