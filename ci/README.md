# Brokerpak CI/CD

This project uses Google Cloud Build to generate Brokerpaks and store them to a
Cloud Storage bucket.

You can build CI/CD for your custom Brokerpaks using a similar method with your
favorite build tool.

The GCP Service Broker has several Docker images you can use as the foundation
of the build system for your Brokerpak:

Current development branch:

`docker run gcr.io/gcp-service-broker/gcp-service-broker:develop pak build path/to/your/pak/dir`

Latest stable release:

`docker run gcr.io/gcp-service-broker/gcp-service-broker:latest pak build path/to/your/pak/dir`
