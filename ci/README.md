# Brokerpak CI/CD

This project uses Google Cloud Build to generate Brokerpaks and store them to a
Cloud Storage bucket.

You can build CI/CD for your custom Brokerpaks using a similar method with your
favorite build tool.

The GCP Service Broker has several Docker images you can use as the foundation
of the build system for your Brokerpak:

* `gcr.io/gcp-service-broker/gcp-service-broker:develop` - nightly development
* `gcr.io/gcp-service-broker/gcp-service-broker:latest` - latest release

From there, you can run the `pak build` sub-command to generate the Brokerpak 
artifact.
