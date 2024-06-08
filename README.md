# Protobuf Definitions

This repository contains the Protobuf definitions for LeetCode challenges and user interactions. These definitions are used to generate gRPC code for various services within our organization.

## Repository Structure

- `protos/`: Contains all the `.proto` files.
- `scripts/`: Contains scripts to generate code from the Protobuf files.
- `generated/`: Contains the generated code for different languages.

## Usage

### Generating gRPC Code

To generate gRPC code from the Protobuf definitions, run the following command:

```sh
./scripts/generate.sh
```

This script generates gRPC code for Python and JavaScript and places it in the generated/python and generated/javascript directories, respectively.

### Protobuf Definitions

TODO - these are place holder

- leetcode_challenges.proto: Contains definitions for LeetCode challenge-related messages and services.
- user_interactions.proto: Contains definitions for user interaction-related messages and services.

### Adding New Protobuf Definitions

1. Create a new .proto file in the protos/ directory.
2. Add your Protobuf definitions to the new file.
3. Update the generate.sh script if necessary to include the new file.
