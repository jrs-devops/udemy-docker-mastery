# use the README.md file for requirements to build this image
# If you get stuck, the answer/ directory has the solution

# Use the `ubuntu` image as the base image. You could pin to a specific version (LTS versions end in .04, so `:20.04`), or use `:latest`.

FROM ubuntu:20.04

# Use the `apt-get` package manager to install the `apache2-utils` package, which contains the `ab` ApacheBench tool.

RUN apt-get update && apt-get install -y apache2-utils && rm -rf /var/lib/apt/lists/*

# Create an ENTRYPOINT that runs the `ab` command.

ENTRYPOINT ["ab"]

# Create an CMD that gives some default arguments to the `ab` command. For example, `-n 10 -c 2 https://www.bretfisher.com/`. `-n 10` means 10 requests total, and `-c 2` means 2 concurrent requests.

CMD ["--help"]

# OR, an easer way for tools like ab, curl, httping, that always need a URL added at the CLI, I find it easier to add some default arguments to the ENTRYPOINT, and leave the CMD as `["--help"]` so that all the user needs to do is add the URL at the end of the `docker run` command. If they forget to override the CMD, they'll get the help output.


