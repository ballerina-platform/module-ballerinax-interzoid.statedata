## Overview

The Interzoid State Data connector lets Ballerina applications standardize state and province names and obtain their two-letter abbreviations using Interzoid's AI-driven algorithms and knowledge bases. It supports version 1.0.0 of the Interzoid State/Province Standardization API.

### Key features

- Standardize state and province names from free-form input
- Retrieve two-letter state and province abbreviations
- Choose the AI model used for standardization
- Track the remaining API credits on your license

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
