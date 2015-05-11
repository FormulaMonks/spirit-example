# spirit-example

A simple example of the Spirit web framework

# Getting Started

## Create an elixir application from scratch

```
mix new sample_app
cd sample_app
```

Edit `mix.exs` file

1. Add `:spirit` to OTP application structure

    ```elixir
    def application do
      [applications: [:spirit, :logger]]
    end
    ```

2. Add `:spirit` to deps

    ```elixir
    defp deps do
      [
        { :spirit, "~> 0.0.1" }
      ]
    end
    ```

3. Run `mix deps.get` to install dependencies


## Create a controller

Now, create your _controller/router_ inside your `lib` folder. It should look similar to

```elixir
defmodule SampleApp do
  use Spirit

  get "/hello" do
    send_resp(conn, 200, "<h1>Hello World!</h1>")
  end

  match _ do
    send_resp(conn, 404, "Not found :/")
  end
end
```


Do not forget to add the application name to your `config.exs` file

```elixir
config :spirit, app: SampleApp
```

## Start the application

Now, run `mix server` and you should have the application running on [localhost:4000/hello](http://localhost:4000/hello)
