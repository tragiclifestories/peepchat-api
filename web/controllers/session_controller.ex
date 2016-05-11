defmodule Peepchat.SessionController do
  use Peepchat.Web, :controller

  def index(conn, _params) do
    conn
    |> json(%{status: "ok"})
  end
end