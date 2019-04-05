defmodule FinancialSystem do

  # Usando dados da exchange rates API através do HTTPoison (https://exchangeratesapi.io/)
  url = "https://api.exchangeratesapi.io/latest"
  HTTPoison.start()
  response = HTTPoison.get!(url)
  {:ok, response} = {:ok, Poison.decode!(response.body)}
  @attr response


end
