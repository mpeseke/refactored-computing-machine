defmodule RefactoredComputingMachine.Repo do
  use Ecto.Repo,
    otp_app: :refactored_computing_machine,
    adapter: Ecto.Adapters.Postgres
end
