import ballerina/io;
import ballerinax/interzoid.statedata;

configurable string licenseKey = ?;
configurable string[] stateNames = ["Ohio", "calif", "Texs"];
configurable string algorithm = "ai-medium";

public function main() returns error? {
    statedata:Client stateClient = check new ({license: licenseKey});

    // Standardize each raw state name and collect its two-letter abbreviation.
    map<string> abbreviations = {};
    foreach string rawName in stateNames {
        statedata:StateAbbreviationResponse result = check stateClient->getStateAbbreviation(state = rawName, algorithm = algorithm);
        string? standardName = result?.state;
        string? abbreviation = result?.abbreviation;
        if standardName is () || abbreviation is () {
            return error(string `No standardized result returned for '${rawName}'`);
        }
        abbreviations[rawName] = abbreviation;
        io:println(string `${rawName} -> ${standardName} (${abbreviation})`);
    }
    io:println("Total standardized: ", abbreviations.length());
}
