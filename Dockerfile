FROM ghcr.io/orange-opensource/hurl:latest

VOLUME [ "/tests" ]

CMD [ "--test", "--glob", "/tests/*.hurl"]

ENTRYPOINT ["/usr/bin/hurl"]

# Use this container with a directory that contains a set of hurl files for testing
# For example, you can run all the tests in a local directory called `tests` with the following command
# e.g. docker run --volume ./tests:/tests ghcr.io/openchami/hurl-tests:latest
