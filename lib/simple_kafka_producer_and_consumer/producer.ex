defmodule SimpleKafkaProducerAndConsumer.Producer do

  alias KafkaEx.Protocol.Produce.Message
  alias KafkaEx.Protocol.Produce.Request, as: ProduceRequest

  @spec produce(String.t, [String.t]) :: :ok
  def produce(topic, messages) do
    messages = Enum.map(messages, fn message ->
      %Message{value: message}
    end)

    %ProduceRequest{topic: topic, partition: 0, messages: messages}
    |> KafkaEx.produce()
  end
end
