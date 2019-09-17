use Mix.Config

config :caesar,
       alphabet_size: 26

config :logger,
       compile_time_purge_level: :info

# import_config "#{Mix.env()}.exs"