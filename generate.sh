ROOT=$PWD

cd $ROOT/client
bundle exec grpc_tools_ruby_protoc -I ../protos --ruby_out=lib --grpc_out=lib ../protos/helloworld.proto

cd $ROOT/server
bundle exec grpc_tools_ruby_protoc -I ../protos --ruby_out=lib --grpc_out=lib ../protos/helloworld.proto

cd $ROOT
