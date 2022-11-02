defmodule SimpleKafkaProducerAndConsumerTest do
  use ExUnit.Case
  doctest SimpleKafkaProducerAndConsumer

  test "greets the world" do
    assert SimpleKafkaProducerAndConsumer.hello() == :world
  end
end
