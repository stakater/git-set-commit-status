FROM registry.access.redhat.com/ubi7/python-38


USER 0
WORKDIR /src/git-set-commit-status
ADD . /src/git-set-commit-status
RUN chown -R 1001:0 ./
USER 1001

RUN pip install  /src/git-set-commit-status
CMD ["python3"]
