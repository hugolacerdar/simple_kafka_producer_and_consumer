defmodule SimpleKafkaProducerAndConsumer.MixProject do
  use Mix.Project

  def project do
    [
      app: :simple_kafka_producer_and_consumer,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {SimpleKafkaProducerAndConsumer.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:broadway_kafka, "~> 0.4"},
      {:kafka_ex, "~> 0.12.1"}
    ]
  end
end
