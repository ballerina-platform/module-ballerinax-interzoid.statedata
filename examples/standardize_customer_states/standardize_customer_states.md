# Standardize Customer States

Standardizes a list of raw state or province names and prints each standardized name with its two-letter abbreviation. Useful for cleaning customer address data before loading it into a CRM.

## Prerequisites

- Ballerina Swan Lake 2201.12.0 or later
- An Interzoid API license key
- Create a `Config.toml` in this directory:
  ```toml
  licenseKey = "<your-license-key>"
  stateNames = ["Ohio", "calif", "Texs"]
  algorithm = "ai-medium"
  ```

## Run the example

```bash
bal run
```
