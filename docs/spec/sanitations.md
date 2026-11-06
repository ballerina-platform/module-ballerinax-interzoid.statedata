_Author_:  @DimuthuMadushan \
_Created_: 2026/10/26 \
_Updated_: 2026/10/26 \
_Edition_: Swan Lake

# Sanitation for OpenAPI specification

This document records the sanitation done on top of the official OpenAPI specification from Interzoid State Data. 
The OpenAPI specification is obtained from [wso2/api-specs](https://github.com/wso2/api-specs/blob/main/openapi/interzoid/statedata/1.0.0/openapi.yaml).
These changes are done in order to improve the overall usability, and as workarounds for some known language limitations.


1. Changed the OpenAPI version from `3.1.0` to `3.0.3`, because `bal openapi flatten` drops every schema `type` from a 3.1 document and the generated parameters and response fields became `anydata`.
2. Removed the `license` query parameter from `getStateAbbreviation`, since the `apiKeyAuth` security scheme already supplies it and it would otherwise be required twice.
3. Rewrote `info.description` as a short plain-text summary, which becomes the `Client` class documentation.
4. Renamed the schema `InlineResponse200` to `StateAbbreviationResponse`, recorded in `docs/spec/ai-mappings.json`.
5. Described the `apiKeyAuth` security scheme as "Interzoid API license key supplied as the license query parameter" in the aligned spec. This was made only in `docs/spec/aligned_ballerina_openapi.json` and must be re-applied after a re-align.

## OpenAPI cli command

The following command was used to generate the Ballerina client from the OpenAPI specification. The command should be executed from the repository root directory.

```bash
bal openapi -i docs/spec/aligned_ballerina_openapi.json -o ballerina --mode client --client-methods remote --license docs/license.txt
```

