# Commands

## Run tests
```bash
behave #needs to be run from feature file folder
behave path\to\your\feature\files\directory
```

## Save report 
### To json file
```bash
behave -f json -o path-to-your-output-file.json
```
### To allure format
[allure-behave](https://pypi.org/project/allure-behave/)
```bash
behave -f allure_behave.formatter:AllureFormatter -o %allure_result_folder% ./features
allure serve %allure_result_folder%
```