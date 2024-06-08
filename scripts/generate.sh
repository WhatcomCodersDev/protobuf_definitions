#!/bin/bash

# This script generates gRPC code from the Protobuf definitions

PROTO_DIR="protos"
OUT_DIR="generated"

# Create the output directories if they don't exist
mkdir -p $OUT_DIR/python
mkdir -p $OUT_DIR/javascript

# Generate Python code
python -m grpc_tools.protoc -I$PROTO_DIR --python_out=$OUT_DIR/python --grpc_python_out=$OUT_DIR/python $PROTO_DIR/*.proto

# Generate JavaScript code
# For JavaScript, you can use the grpc-tools package to generate code
# Install grpc-tools by running: npm install -g grpc-tools
grpc_tools_node_protoc --js_out=import_style=commonjs,binary:$OUT_DIR/javascript --grpc_out=$OUT_DIR/javascript --plugin=protoc-gen-grpc=`which grpc_tools_node_protoc_plugin` -I $PROTO_DIR $PROTO_DIR/*.proto

echo "gRPC code generated in $OUT_DIR"
