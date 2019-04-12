# Worflow.

# Introduction
In this part we'll be focused on the fact, of defining our workflow. The main question that we need to ask ourselves is the next: What's the importance of this? In order to advance with, let me give you a brief explanation: We need to undesrtand that a software process is usualy related to an abstraction of the real life components or entities, because of that that we need to consider the software as a living ent in our guardianship, so we need to make sure that as like we expect in the real life, all the components work together and in a perfect armony; when we are capable of doing this we're improving our quality, and saving a lot of time. We need to consider this "An error in a priroly stage always will be better than in a late stage", so we need to track down all of them and ensure our deliverables to keep moving forward and ensure the perfect operation of our components.

# What's needed
In the previous sections of this guide, we've seen proposed appliances that'll be integrated in our workflow, but we need to understand that our process will be also human driven, in that case we must follow the statements that our linements are requesting from us. We'll be working in an automated driven workflow, but we need to remember that we empower the input for the workflow in that case, we need to be aware and alert of all the signs that our process give us in order to get this stable and healthiness of this one.

    > Humans
    > Tools
    > Infrastructure

All of them will be working together and in a synchronized mood, and that will lead us to success.

# What's the propossal

I'm a strong believer of **"A picture is worth a thousand words"** and as a consequence of that, we'll open up the discussion with an image:

![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/workflow-overview-1.png "Workflow O.")

Let's go deeper on this:

**Branching Strategy**:

We're gonna look for a conservative branching strategy,we can have in a normal Sprint more than one feature branches opened at a certain moment, and based on the fact that the branches are really easy to create, merge o delete we'll trust on them. We can have may be one feature that should be delivered just before another one, so in that case may one of them reachs production in a earlier stage and based on that fact and the continuos integration pipeline that we've setted up we must have present that at least every feature branch should be translated in a user story, and because of that it should be so atomic that the deployment could be done with no affecting the entire solution. In that case we can think in something like this:

![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/workflow-overview-2.png "Branching O.")

[+Info Branching](https://danielkummer.github.io/git-flow-cheatsheet)

Justification:
I think that if we move forward with this branching strategy, we will be able to have a stable integration branch in order to be tested, and after the passing all the testing we can promote this as a release version whose main objective is to reach our prod end; in any case to live in master. We can continue with the development process of isolated functionalities in our features branches. After that, we'll be integratinf features in develop, promote a release and reach master and version tagging.

**Automation**:

We will rely on Jenkins as a server our CI/CD delivery:
    Objectives:
    > Orchestration.(Pipelines)
    > Build & Testing.(Jobs)
    > Notifications.(Integration with Slack)
    > Testing reports.(JUnit XML)
    > WebHooks.(Automated execution)
    > CRON Expressions. (In case of needed we'll set them)

Justification:
It's the defacto industry automation server, we take advantage of this and as an Open Source solution with a very strong community and fastly growing set of plugins that ensure us, cross domain comunication, operation and very importa capable of working with too many technological stacks, we can setup once and continue using for further projects. Also the chron expressions give us the chance to orchestrate CD topics in our business in case of needing this.

**Infrastructure**:

Obviously we'll go for Linux, due to one single reason: we need to be working in environments rescilient and with capablities of scalability; because of that we'll be using along with our Linux Servers one more thing... **Docker**, this will provide us with containerization and all the advantages that this is capable of provide to us.
    Topics:
    > Containerization.
    Related topics:
    > Docker compose.
    > Portainer.
    > Docker CE

Justification:
We need a Linux server in order to run in a very nice mode and obviously tons of advantages versus another system, and for this specific case AWSEC2 will provide us with many of them for free. We can save up resources versus the implementation with VM or even native instances, and in our case along with some kind of suppor from Kubernetes we'll be willing to have a high availabily plattform ready to start with.But in this case, we're gonna start in a very simple manner, docker, compose and may be running as stacks in swarm mode.

![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/workflow-overview-3.png "Containers O.")


[+Info Containers](https://www.oreilly.com/library/view/using-docker/9781491915752/ch01.html)




