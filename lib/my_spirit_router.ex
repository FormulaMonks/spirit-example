defmodule MySpiritRouter do
  use Spirit

  get "/hello" do
    send_resp(conn, 200, "<h1>Hello World!</h1>")
  end

  match _ do
    send_resp(conn, 404, "Not found :/")
  end
end
