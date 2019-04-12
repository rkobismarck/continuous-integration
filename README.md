# CI/CD Implementation.
The purpose of this guide is to show you a way to construct a continuous integration strategy trough Docker-Jenkins related technologies. In this repository, we're gonna describe how to implement a continuous integration and delivery pipeline. In order to support our development and delivery process; because of that this guide will be based on several sources of information, you'll find interesting links at the end of every README in case of need, all of them will contain information that maybe we don't want to have over here, but's important to know.

### What will you need?
1. Github account or any other related GIT provider.
2. AWS or any other related Cloud infrastructure provider; in this case, we're gonna be using AWS's EC2 platform.
3. Basic knowledge about Jenkins, in order to orchestrate our pipeline or workflow.
4. Slack account for all the development team.(Desirable)

### Assumptions.
There are some basic things that you need to know in order to be able to embrace this guideline, first of all, we're going to assume that we will be creating this guide as an **ideal approachment** so any change could be possible in the workflow because we may need certain things very particularly due to our very specifics problems. We're going to rely on Cloud-based infrastructure based on the next fact:  we assume that if we go through this way we'll gain speed and we'll be in a better position in such case we need some kind of horizontal growth in a posterior stage of the software development process.  

### Minimal prerequisites in order to proceed with:
1. AWS Account, if you don't have one you can always create a new one and apply for free of charge products in at least the first 12 months, they'll be free of cost.
 [Sign Up](https://aws.amazon.com/console/). 
2. Even I've created previously a quick guide to help you in the account creation and setup, I'm sure that you can take a look at that repository.
 [AWS Instance Configuration](https://github.com/rkobismarck/docker-jenkins-pipeline)


### What's the problem?
First of all, let me introduce you this question it's seems like an easy one but it's a little bit more tricky than you can think. In the first instance, we need to set up a workflow that allows our team being able to raise the productivity and predictability of our software. In such case, we need to take a look inside the modern proposal of a methodology whose main goal will be providing us an entire methodology where we can develop, test and integrate our changes in the entire lifecycle of our software.


#### What's the proposal?
After the demonstration of the solution, we'll also find several scrips and indications to get our environment up and running; we consider this like an important achievement because this would lead us in the fast track of getting our pipeline working as expected, and establish a real CI/CD for our product. Go and take a look at all of them, here's the guide in order to have a better approachment:

> **Architectural**: Here we're gonna present the agnostic version of the propossal, we're not gonna mention products; in such case we'll be looking for tools in a generic approachment and proposse them in order to empower our solution. 

> **Technological**: Here we're gonna present the propossal along with techonolgies selected to fill the gaps showed previosuly by the architectural overview, in this stage we're gonna mention the products that we're gonna be using to empower our solution. We'll consider and enforce the useage of free software.

> **Workflow**: Here we're gonna describe to you the proposed workflow for our software development process, along with the interaction between components selected previously in the technology overview.

> **Hands on**: Here we're gonna present to you, the script and the steps needed in order to setup the infrastructure urged by this guide.

After all of this, you'll be capable of understanding how our pipeline is orchestrated and how we can deliver value trough our CI/CD process.











