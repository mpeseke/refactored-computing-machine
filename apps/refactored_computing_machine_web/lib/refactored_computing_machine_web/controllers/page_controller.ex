defmodule RefactoredComputingMachineWeb.PageController do
  use RefactoredComputingMachineWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
