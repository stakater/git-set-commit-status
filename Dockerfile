FROM registry.access.redhat.com/ubi7/python-38

# Add application sources to a directory that the assemble script expects them
# and set permissions so that the container runs without root access
USER 0
ADD git_set_commit_status .
RUN chown -R 1001:0 ./
USER 1001

# # Install the dependencies
# RUN /usr/libexec/s2i/assemble

# Set the default command for the resulting image
CMD pip install --no-cache-dir git-set-commit-status
