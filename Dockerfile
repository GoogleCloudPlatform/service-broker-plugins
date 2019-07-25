# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Initialize a new build stage and set the base image as the gcp-service-broker
# Note that there is an executable at /bin/gcp-service-broker
FROM gcr.io/gcp-service-broker/gcp-service-broker:master AS build

# Copy local service-broker-plugins repository to docker image
COPY . ./service-broker-plugins/

# Use the gcp-service-broker binary to build the brokerpak
RUN /bin/gcp-service-broker pak build service-broker-plugins

FROM scratch
COPY --from=build /src /src
COPY --from=build /bin/gcp-service-broker /bin/gcp-service-broker
COPY --from=build /service-broker-plugins/google-cloud-services-1.brokerpak /usr/share/gcp-service-broker/builtin-brokerpaks/google-cloud-services-1.brokerpak

ENTRYPOINT ["/bin/gcp-service-broker"]
CMD ["help"]
