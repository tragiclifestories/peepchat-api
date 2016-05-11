defmodule Peepchat.ChangesetView do
  use Peepchat.Web, :view
  @doc """
  Traverses and translates changeset errors.
  See `Ecto.Changeset.traverse_errors/2` and
  `Peepchat.ErrorHelpers.translate_error/1` for more details.
  """

  def translate_errors(changeset) do
    Ecto.Changeset.traverse_errors(changeset, &translate_error/1)
  end

  def render("error.json", %{changeset: changeset}) do
    JaSerializer.EctoErrorSerializer.format(changeset)
  end
end