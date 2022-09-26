defmodule RefactoredComputingMachine.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      RefactoredComputingMachine.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: RefactoredComputingMachine.PubSub}
      # Start a worker by calling: RefactoredComputingMachine.Worker.start_link(arg)
      # {RefactoredComputingMachine.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: RefactoredComputingMachine.Supervisor)
  end
end
