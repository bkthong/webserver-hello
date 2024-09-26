# webserver-hello
[20240926]
- Updated Containerfile 
    - Use ubi9-minimal instead of centos:7 which the yum repo
      is not easily accessible
    - Updated RUN to use microdnf instead of yum
    - ADD src/ staatement reactivated to add about.html

- Updated src/index.html to become src/about.html with updated content

- Images uploaded to: 
    quay.io/bkthong/webserver-hello:1.3
    quay.io/bkthong/webserver-hello:1.4

    docker.io/bkthong/webserver-hello:1.3
    docker.io/bkthong/webserver-hello:1.4

[older]
Dockerfile for simple hello world page suitable for ecs/eks

quay.io/bkthong/webserver-hello:1.1
quay.io/bkthong/webserver-hello:1.2

docker.io/bkthong/webserver-hello:1.1
docker.io/bkthong/webserver-hello:1.2

- Can be used to show when latest tag changes ,ad image stream updated, redeployment occurs
- Also a general purpose container image that will run on ecs/eks
