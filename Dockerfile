FROM registry.gitlab.com/kimvanwyk/kppe:latest

COPY ./templates/. /templates/

ENTRYPOINT ["/usr/bin/python3", "/app/kppe.py", "build", "--templates-dir", "/templates", "pandoc_template"]

