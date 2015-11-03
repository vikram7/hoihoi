defmodule Hoihoi do
  use Spirit

  def square(x) do
    x * x
  end

  get "/tester" do
    send_resp(conn, 200, "hi")
  end

  get "securities/:security" do
    send_resp(conn, 200, "<h1>You're trying to reach #{security}'s page</h1>")
  end

  get "/hello" do
    wut = square 3
    send_resp(conn, 200, "<h1>hi #{wut}</h1>")
  end

  match _ do
    send_resp(conn, 404, "Not found :/")
  end
end
