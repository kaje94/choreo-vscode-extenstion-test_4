import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "first component",
	id: "first component-fa33c398-18ba-4715-b142-ba50b3409213"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
