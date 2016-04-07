ExUnit.start

Mix.Task.run "ecto.create", ~w(-r SrsDashboard.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r SrsDashboard.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(SrsDashboard.Repo)

