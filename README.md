# ue4-cloud
UnrealEngine4 cloud environment ideal for fast and cheap solutions to building CI/CD tools. 

### Flow Example - CI Build HTML5 
- Given I am acting as a developer
- When I push a commit to develop branch
- Then a github action triggers a ue4 cloud build, using terraform
- And this ue4 cloud compiles the HTML5 build
- And it stores the build to an s3 bucket
- And then the github action destroys the aws resources
