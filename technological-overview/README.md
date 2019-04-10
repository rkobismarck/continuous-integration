# Architectural overview.

We need to stablish the propossal about what products/technologies we're gonna embrace in our project, the discussion about how them were selected will be out of the scope in this document, but we can always stablish a discussion about how dou you thinks we can improve this approach.

In order to clarify what about the selection parameters of the components we're gonna be pretty straightforward:

Since the fact this is a serious propossal, here I'm going to list the assumptions:

1. **Community Size**, we were selecting the most widespread used solutions in the industry in order to get information from the product and best practices in a very convenient, fast and concise way.
2. **Experience**, considering the personal experiencie in the handling of the tools, we're gonna propose the most commons one.
3. How does this solve our actual problem, and how can we scale up the solution may be in the future? This is a crucial constraint in our workflow definition.
4. **Bank of information available**, we need to consider in the selection of the technologies process, the availablity of information for ourselves in that case this is gonna be a source of knowledge and a very constructive way to keep ourselves update with the best practices of the solution.

**Note important**: Obviously in a real context we need to encourage with several factors, like technical constraints, budget but we're not be talking about that over here, let's think about we are open to embrace new technologies despite of any kind of constraint related to thos topics.

## So here's the deal:

Here you can see a quick diagram of this:
![alt text](/Users/robertotrujillo/Documents/Projects/continuous-integration/media-content/technological-overview-1.png "Technological O.")

## Propossal:

1. __Version control__: We're going to be using **GitHub**, in this case this allows us to have repositories. You can find more info over here:  [GitHub](https://github.com/rkobismarck/docker-jenkins-pipeline)
2. __Automation server__: We're gonna be using **Jenkins**, in this case this allows us to have a defacto component used in the industry and give us full potencial, to automate and create pipelines for our testing, integration and deployment; but another important thing about using this is the huge quantity of appliances that we can take advantage in order to improve our development process.(Slack,Mail,Notifications,etc.)
3. __Final infrastructure__: We're gonna be using Linux powered servers in our end, most of them auspicied by free EC2 instances, provided by AWS in their modality as Free Tier Cost; this would help us about the setup process of the pipeline.
