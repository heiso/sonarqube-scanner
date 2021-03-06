[Docker Hub - sonarqube-scanner](https://hub.docker.com/r/heiso/sonarqube-scanner)

**This docker image do not include a sonarqube server.**
Its only purpose is to scan a project codebase and send results to a living Sonarqube server.
The default sonar-scanner version used is 3.2.0.1227

# Usage
This image will expose sonar-scanner from https://docs.sonarqube.org/display/SCAN/Analyzing+with+SonarQube+Scanner so you can use any command sonar-scanner could use.

Simple example

```bash
docker run \
  -v $(pwd):/mnt/app \
  heiso/sonarqube-scanner \
  -Dsonar.host.url=https://my.sonarqube.server \
  -Dsonar.projectKey=myProject \
  -Dsonar.sources=./src \
  -Dsonar.login=<token>
```

Example with a sonar-project.properties

```bash
docker run \
  -v $(pwd):/mnt/app \
  heiso/sonarqube-scanner \
  -Dproject.settings=/mnt/app/sonar-project.properties
```

It's also possible to use another version of sonar-scanner by setting the VERSION environment variable

```bash
docker run \
  -v $(pwd):/mnt/app \
  -e VERSION=<version number> \
  heiso/sonarqube-scanner \
  -Dproject.settings=/mnt/app/sonar-project.properties
```
