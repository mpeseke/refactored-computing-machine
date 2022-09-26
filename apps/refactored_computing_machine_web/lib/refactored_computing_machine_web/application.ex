defmodule RefactoredComputingMachineWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      RefactoredComputingMachineWeb.Telemetry,
      # Start the Endpoint (http/https)
      RefactoredComputingMachineWeb.Endpoint
      # Start a worker by calling: RefactoredComputingMachineWeb.Worker.start_link(arg)
      # {RefactoredComputingMachineWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: RefactoredComputingMachineWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    RefactoredComputingMachineWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
