ExUnit.start()
Ecto.Adapters.SQL.Sandbox.mode(Rockelivery.Repo, :manual)
{:ok, _} = Application.ensure_all_started(:bypass)

Mox.defmock(Rockelivery.ViaCep.ClientMock, for: Rockelivery.ViaCep.Behaviour)
