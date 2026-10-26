# Ballerina Interzoid State Data connector

[![Build](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/actions/workflows/ci.yml/badge.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/actions/workflows/ci.yml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/ballerina-platform/module-ballerinax-interzoid.statedata.svg)](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/commits/main)
[![GitHub Issues](https://img.shields.io/github/issues/ballerina-platform/ballerina-library/module/interzoid.statedata.svg?label=Open%20Issues)](https://github.com/ballerina-platform/ballerina-library/labels/module%2Finterzoid.statedata)

## Overview

The Interzoid State Data connector lets Ballerina applications standardize state and province names and obtain their two-letter abbreviations using Interzoid's AI-driven algorithms and knowledge bases. It supports version 1.0.0 of the Interzoid State/Province Standardization API.

## Setup guide

1. Register for an Interzoid API account at the [Interzoid registration page](https://www.interzoid.com/register-api-account).

2. Copy the API license key issued for your account.

3. Provide the license key when creating the client, for example through a `Config.toml` file.

## Quickstart

To use the `interzoid.statedata` connector in your Ballerina application, update the `.bal` file as follows:

### Step 1: Import the module

```ballerina
import ballerinax/interzoid.statedata;
```

### Step 2: Instantiate a new connector

Create a `Config.toml` file with your license key:

```toml
licenseKey = "<your-license-key>"
```

```ballerina
configurable string licenseKey = ?;

final statedata:Client stateClient = check new ({license: licenseKey});
```

### Step 3: Invoke the connector operation

```ballerina
public function main() returns error? {
    statedata:StateAbbreviationResponse _ = check stateClient->getStateAbbreviation(state = "Ohio", algorithm = "ai-medium");
}
```

### Step 4: Run the Ballerina application

```bash
bal run
```

## Examples

The `Interzoid State Data` connector provides practical examples illustrating usage in various scenarios. Explore these [examples](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/tree/main/examples/), covering the following use cases:

1. [Standardize customer states](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/tree/main/examples/standardize_customer_states) - Standardize raw state names and print their two-letter abbreviations.
2. [Validate state inputs](https://github.com/ballerina-platform/module-ballerinax-interzoid.statedata/tree/main/examples/validate_state_inputs) - Report state inputs that differ from their standardized names.

## Build from the source

### Setting up the prerequisites

1. Download and install Java SE Development Kit (JDK) version 21. You can download it from either of the following sources:

    * [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)
    * [OpenJDK](https://adoptium.net/)

   > **Note:** After installation, remember to set the `JAVA_HOME` environment variable to the directory where JDK was installed.

2. Download and install [Ballerina Swan Lake](https://ballerina.io/).

3. Download and install [Docker](https://www.docker.com/get-started).

   > **Note**: Ensure that the Docker daemon is running before executing any tests.

4. Export Github Personal access token with read package permissions as follows,

    ```bash
    export packageUser=<Username>
    export packagePAT=<Personal access token>
    ```

### Build options

Execute the commands below to build from the source.

1. To build the package:

   ```bash
   ./gradlew clean build
   ```

2. To run the tests:

   ```bash
   ./gradlew clean test
   ```

3. To build the without the tests:

   ```bash
   ./gradlew clean build -x test
   ```

4. To run tests against different environments:

   ```bash
   ./gradlew clean test -Pgroups=<Comma separated groups/test cases>
   ```

5. To debug the package with a remote debugger:

   ```bash
   ./gradlew clean build -Pdebug=<port>
   ```

6. To debug with the Ballerina language:

   ```bash
   ./gradlew clean build -PbalJavaDebug=<port>
   ```

7. Publish the generated artifacts to the local Ballerina Central repository:

    ```bash
    ./gradlew clean build -PpublishToLocalCentral=true
    ```

8. Publish the generated artifacts to the Ballerina Central repository:

   ```bash
   ./gradlew clean build -PpublishToCentral=true
   ```

## Contribute to Ballerina

As an open-source project, Ballerina welcomes contributions from the community.

For more information, go to the [contribution guidelines](https://github.com/ballerina-platform/ballerina-lang/blob/master/CONTRIBUTING.md).

## Code of conduct

All the contributors are encouraged to read the [Ballerina Code of Conduct](https://ballerina.io/code-of-conduct).

## Useful links

* For more information go to the [`interzoid.statedata` package](https://central.ballerina.io/ballerinax/interzoid.statedata/latest).
* For example demonstrations of the usage, go to [Ballerina By Examples](https://ballerina.io/learn/by-example/).
* Chat live with us via our [Discord server](https://discord.gg/ballerinalang).
* Post all technical questions on Stack Overflow with the [#ballerina](https://stackoverflow.com/questions/tagged/ballerina) tag.
