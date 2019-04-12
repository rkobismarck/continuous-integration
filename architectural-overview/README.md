# Architectural overview.

We need to stablish an architectural overview for our E2E, CI/CD pipeline in such case we're gonna be using an agnostic technology provider mindset, and whose main purpose is only to show what do we need isolated of specific solutions or providers.

In the next diagram we will try to show you what does it looks like a basic template for our software development process, we can see that the main topics are listed below:

1. **Version control**: We need a software to handle the version control in our process, that means any popular handler for this task.

2. **Automation server**: We need a software whose main goal will be providing us with several tools in order to connect with the source code manager, and perform all the kind of operations that we need in order to empower of development process, based on CI/CD perspective.

3. **Infrastructure**: All the underlying infrastructure whose main purpose will be, empower our solution. In this case we're talking about servers, data storage, etc.

4. **Miscelaneous** The main characteristic that you can find in common across this components, is that all of them are desirable but not mandatory to implement. In such case, we just make a strong recomendation about the embracement and their usage.

Here you can see a quick diagram of this:
![alt text](https://github.com/rkobismarck/continuous-integration/blob/master/media-content/architectural-overview-1.png "Architectural O.")







