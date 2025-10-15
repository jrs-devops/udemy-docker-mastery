# use the README.md file for requirements to build this image
# If you get stuck, the answer/ directory has the solution

# Start FROM the `alpine` image. You can also practice pinning to a recent version (found on Docker Hub's alpine image page.) or `:latest`. I tend to care less about FROM image pinning for CLI tools like this.

FROM alpine:latest

# Use the `apk` package manager to install the `cmatrix` package.

RUN apk add --no-cache cmatrix

# You'll want to set the ENTRYPOINT to run `cmatrix` when the container starts.

ENTRYPOINT ["cmatrix"]

# Let's make this image easy to run by adding a `CMD` instruction with some default cmatrix arguments. For example, `-abs -C red`.

CMD ["-abs", "-C", "red"]

