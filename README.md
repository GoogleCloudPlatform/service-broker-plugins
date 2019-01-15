[![License](https://img.shields.io/badge/license-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

# Service Broker Brokerpaks

This repository contains sources for brokerpaks you can use with the
[GCP Service Broker](https://github.com/GoogleCloudPlatform/gcp-service-broker).

Brokerpaks are self-contained plugins that use Terraform to add new services to
the service broker.

You can read more about:

 * [The philosophy of brokerpaks](https://github.com/GoogleCloudPlatform/gcp-service-broker/blob/master/docs/brokerpak-intro.md).
 * [The brokerpak specification](https://github.com/GoogleCloudPlatform/gcp-service-broker/blob/master/docs/brokerpak-specification.md).

You can get started building your own brokerpaks by downloading a
[binary release of the GCP Service Broker](https://github.com/GoogleCloudPlatform/gcp-service-broker)
and reading the help of the `pak` sub-command: `gcp-service-broker pak help`.
The contents are copied below:

```
$ gcp-service-broker pak help

Lets you create, validate, and view service definition bundles.
A service definition bundle is a zip file containing all the elements needed
to define and run a custom service.

Bundles include source code (for legal compliance), service definitions, and
Terraform/provider binaries for multiple platforms. They give you a contained
way to deploy new services to existing brokers or augment the broker to fit
your needs.

To start building a pack, create a new directory and within it run init:

	gcp-service-broker pak init my-pak

You'll get a new pack with a manifest and example service definition.
Define the architectures and Terraform plugins you need in your manifest along
with any metadata you want, and include the names of all service definition
files.

When you're done, you can build the bundle which will download the sources,
Terraform resources, and pack them together.

	gcp-service-broker pak build my-pak

This will produce a pack:

	my-pak.brokerpak

You can run validation on an existing pack you created or downloaded:

	gcp-service-broker pak validate my-pak.brokerpak

You can also list information about the pack which includes metadata,
dependencies, services it provides, and the contents.

	gcp-service-broker pak info my-pak.brokerpak

```

## Support

This is not an officially supported Google product.
That being said, you can file GitHub issues or post questions to the [gcp-service-broker Google group](https://groups.google.com/forum/#!forum/gcp-service-broker).

## License

This project is licensed under the Apache license:

    Copyright 2018 Google LLC

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
