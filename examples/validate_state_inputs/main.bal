import ballerina/io;
import ballerinax/interzoid.statedata;

configurable string licenseKey = ?;
configurable string[] stateNames = ["Ohio", "NY", "Florida"];
configurable string algorithm = "ai-medium";

public function main() returns error? {
    statedata:Client stateClient = check new ({license: licenseKey});

    // Flag records whose input differs from the standardized state name.
    string[] needsCorrection = [];
    int remainingCredits = 0;
    foreach string rawName in stateNames {
        statedata:StateAbbreviationResponse result = check stateClient->getStateAbbreviation(state = rawName, algorithm = algorithm);
        if result?.code != "Success" {
            return error(string `Standardization failed for '${rawName}'`);
        }
        if result?.state != rawName {
            needsCorrection.push(rawName);
        }
        remainingCredits = result?.credits ?: remainingCredits;
    }
    io:println("Inputs needing correction: ", needsCorrection);
    io:println("Remaining credits: ", remainingCredits);
}
