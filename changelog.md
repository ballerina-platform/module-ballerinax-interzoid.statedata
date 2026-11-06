# Changelog

All notable changes to this project are documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- `GetStateAbbreviationQueries`, the record that carries the query parameters of `getStateAbbreviation`.
- An optional `headers` parameter on the remote method, for sending extra request headers.
- New `ConnectionConfig` fields, taken from `http:ClientConfiguration`: `followRedirects`, `cookieConfig`, `socketConfig` and `laxDataBinding`.
- Documentation for the fields of `StateAbbreviationResponse`.

### Changed

- **Breaking:** `getstateabbreviation(string state)` is now `getStateAbbreviation(*GetStateAbbreviationQueries queries)`. The query parameters are passed as named arguments (or as a `GetStateAbbreviationQueries` record), and the new `algorithm` parameter, which selects the algorithm and AI model used to standardize the name, is required:

    ```ballerina
    // 1.5.2
    statedata:StateData result = check stateData->getstateabbreviation("Ohio");
    ```

    ```ballerina
    // 2.0.0
    statedata:StateAbbreviationResponse result = check stateData->getStateAbbreviation(state = "Ohio", algorithm = "ai-medium");
    ```

- **Breaking:** the `StateData` record is renamed to `StateAbbreviationResponse`.
- **Breaking:** record fields use camel case, mapped to the API's Pascal-case JSON names with `@jsondata:Name`: `Abbreviation`, `Code`, `Credits` and `State` are now `abbreviation`, `code`, `credits` and `state`.
- **Breaking:** `credits` is an `int` (was `string`).
- **Breaking:** `ConnectionConfig.http1Settings` is now `http:ClientHttp1Settings` (was the connector's own `ClientHttp1Settings`).
- `ConnectionConfig.timeout` defaults to 30 seconds (was 60).

### Removed

- **Breaking:** the connector's own `ClientHttp1Settings` and `ProxyConfig` records. Use `http:ClientHttp1Settings` and `http:ProxyConfig` instead.
