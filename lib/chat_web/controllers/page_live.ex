defmodule ChatWeb.PageLive do
  use ChatWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
      <button phx-click="random-room">Criar salinha</button>
    """
  end

  def handle_event("random-room",_param, socket) do
    slug = "/" <> MnemonicSlugs.generate_slug(4)
    {:noreply, push_redirect(socket, to: slug)}
  end

end
