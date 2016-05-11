defmodule Peepchat.ErrorView do
  use Peepchat.Web, :view
  use JaSerializer.PhoenixView

  def render("404.json", _assigns) do
    %{title: "not found", code: 404}
    |> JaSerializer.ErrorSerializer.format
  end

  def render("401.json", _assigns) do
    %{title: "unauthorized", code: 401}
    |> JaSerializer.ErrorSerializer.format
  end

  def render("403.json", _assigns) do
    %{title: "Forbidden", code: 403}
    |> JaSerializer.ErrorSerializer.format
  end

  def render("500.json", _assigns) do
    %{errors: %{detail: "Server internal error"}}
    |> JaSerializer.ErrorSerializer.format
  end

  # In case no render clause matches or no
  # template is found, let's render it as 500
  def template_not_found(_template, assigns) do
    render "500.json", assigns
  end
end
