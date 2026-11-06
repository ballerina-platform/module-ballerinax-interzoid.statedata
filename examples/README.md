# Examples

The `ballerinax/interzoid.statedata` connector provides practical examples illustrating usage in various scenarios.

| Example | Description |
|---------|-------------|
| [`standardize_customer_states`](./standardize_customer_states/standardize_customer_states.md) | Standardize raw state names and print their two-letter abbreviations. |
| [`validate_state_inputs`](./validate_state_inputs/validate_state_inputs.md) | Report state inputs that differ from their standardized names. |

## Prerequisites

1. An Interzoid API license key.

2. For each example, create a `Config.toml` in the example directory with the required values:
   ```toml
   licenseKey = "<your-license-key>"
   ```

## Running an example

```bash
cd examples/<example-name>
bal run
```
