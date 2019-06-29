$LOAD_PATH.push('./lib')

require 'helloworld_services_pb'

stub = Greeter::Stub.new('localhost:50051', :this_channel_is_insecure)
user = ARGV.size > 0 ?  ARGV[0] : 'world'
message = stub.say_hello(HelloRequest.new(name: user)).message
p "Greeting: #{message}"
message = stub.say_hello_again(HelloRequest.new(name: user)).message
p "Greeting: #{message}"
