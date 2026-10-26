# Tests

The test suite calls `getStateAbbreviation` against the mock service in `tests/mock_service.bal` and checks the standardized abbreviation and response code.

## Running Tests

```bash
bal test
```

By default the tests run against the mock server and need no credentials. To run them against the live API, set `IS_LIVE_SERVER=true` and `INTERZOID_LICENSE` to your license key.
