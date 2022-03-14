FROM registry.access.redhat.com/ubi7/python-38


USER 0
ADD git_set_commit_status .
RUN chown -R 1001:0 ./
USER 1001

CMD pip install --no-cache-dir git-set-commit-status
