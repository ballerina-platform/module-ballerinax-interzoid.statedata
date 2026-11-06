# Validate State Inputs

Checks a list of state or province values against the standardized names and reports the ones that need correction, along with the remaining API credits.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- An Interzoid API license key
- Create a `Config.toml` in this directory:
  ```toml
  licenseKey = "<your-license-key>"
  stateNames = ["Ohio", "NY", "Florida"]
  algorithm = "ai-medium"
  ```

## Run the example

```bash
bal run
```
