## Who am I?

Python developer  
Scrum Master  
Tech and soft skills trainer  
Creative Mom  
Visual Thinking enthusiast  

Where you can find me:  
[![alt text](http://i.imgur.com/wWzX9uB.png)](https://twitter.com/Malek_Agnieszka)
[![alt text](http://i.imgur.com/fep1WsG.png)](https://www.facebook.com/agnieszka.j.malek)
[![alt text](http://i.imgur.com/9I6NRUm.png)](https://github.com/Aga-Ma)
[<img src="http://i.imgur.com/4DfAevU.png" width="20"/>](https://www.linkedin.com/in/agnieszka-j-malek/)

## Workshop goals

After the training:
* You will know the BDD concept and its advantages
* You will know how to work with `behave` framework  
* You will be able to create tests based on gained knowledge  

## Agenda

- [BDD - let's grab a little context](#bdd)
  - [What is behavior?](#what-is-behavior)
  - [What is BDD?](#what-is-bdd)
  - [Benefits of BDD](#benefits-of-bdd)
  - [Python BDD test frameworks](#python-bdd-test-frameworks)

# BDD
## What is behavior?
In software it describes how the software operates  

I had a problem. While using and teaching agile practices like test-driven development (TDD) on projects in
different environments, I kept coming across the same confusion and misunderstandings. Programmers wanted
to know where to start, what to test and what not to test, how much to test in one go, what to call their
tests, and how to understand why a test fails.  
[_Dan North_](https://dannorth.net/introducing-bdd/)

Where does TDD fall short:
* In TDD process developers want to know what to test, how much to test, and how to understand failing tests
* Whiteout clear guidelines as to what should be tested and how confusion and misunderstanding are common
* Presenting in a different light through BDD allow the development process to avoid a number of pitfails

### It answers WHAT more than HOW
Behavior are defined early in development using specification by example: plain-language descriptions (Gherkin) that tell what more than how
Behavior specs becomes requirements, ACC and acceptance tests (all in one)  

BDD emphasizes the client's perspective  

## What is BDD?
BDD is a second-generation, outside–in, pull-based, multiple-stakeholder, multiple-scale, high-automation, 
agile methodology. It describes a cycle of interactions with well-defined outputs, resulting in the delivery 
of working, tested software that matters. 

_Dan North_ 

## Benefits of BDD

The Big BDD picture: The main goals of BDD are collaboration and automation

* Allows everybody involved to write tests not just coders
* Supports collaboration - behviors testing allows you to test your application as a whole in such a way that all
stakeholders can define and understand what is being test
* Supports automation
* Behavior are identified using specification by example
* Encourage thinking about the application in a natural consistent language
* Behavior specs becomes requirements, ACC and acceptance tests (all in one)
* BDD is a refinement of Agile process, not an overhoul - formalizes ACC and test coverage

## Python BDD test frameworks

[Behave](https://behave.readthedocs.io/en/latest/)  
[pythest-bdd](https://pytest-bdd.readthedocs.io/en/latest/)  
[radish](http://radish-bdd.io/)  
[lettuce](http://lettuce.it/)  
  
[Python BDD framework comparison - Automation Panda Blog](https://automationpanda.com/2019/04/02/python-bdd-framework-comparison/)

# Behave Test Framework
## Installation check

Pre-training preparation - [behave_workshop/installation.md](installation.md)

## Gherkin mechanics
### Given, When, Then (And, But)

<span style="color: blue;">Scenario</span>: Refunded items should be returned to stock  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Given**</span> a customer previously bought a black sweater from me  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">and</span> I currently have three black sweaters left in stock.  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**When**</span> he returns the sweater for a refund  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Then**</span> I should have four black sweaters in stock.,  
  
<span style="color: blue;">Scenario</span>: Replaced items should be returned to stock  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Given**</span> that a customer buys a blue garment  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">and</span> I have two blue garments in stock  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">and</span> three black garments in stock.  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**When**</span> he returns the garment for a replacement in black,  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Then**</span> I should have three blue garments in stock  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">and</span> two black garments in stock.  

<span style="color: red;">**Feature**</span>: feature name  

&nbsp;&nbsp;<span style="color: blue;">**Scenario**</span>: some scenario  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Given**</span> some condition  
&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: green;">**Then**</span> some result is expected.  

### A scenario outline
### TO DO (Example)

## Python comes into play

Step definitions (Gluing step to definitions (decorators))

+--features/  
|   +--steps/       # -- Steps directory  
|   |    +-- *.py   # -- Step implementation or use step-library python files.  
|   +-- *.feature   # -- Feature files written by your Business Analyst / Sponsor / whoever   
                    # with your behaviour scenarios in it  
                    
### Scenario Context

### Hooks 
environement.py
+-- features/  
|     +-- steps/  
|     |    +-- website_steps.py  
|     |    +-- utils.py  
|     |   
|     +-- environment.py      # -- Environment controls(code to run before and after steps, scenarios, features or the whole shooting match)  
|     +-- signup.feature  
|     +-- login.feature  
|     +-- account_details.feature  

# Summary on how Behave works

#Practice
Blog features - [blog/features](blog/features)  
E-learning portal features - [e-learning_portal/features](../e-learning_portal/features)

