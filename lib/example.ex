defmodule Example do
  use Application
  alias UUID

  @x 5

  def start(_type, _args)do
    Example.main()
    #IO.puts(hello())
    #IO.puts(Example.hello1())
    #IO.puts(Example.user_ID)
    Supervisor.start_link([], strategy: :one_for_one)
  end

  def main do


  end

  def case_and_defaults do
    name = "VINIT"
    #status = :gold
    status = Enum.random([:gold , :silver , :bronze , :"not a member" ])

    case status do
      :gold -> IO.puts("welcome to jungle, #{name}")
      :"not a member" -> IO.puts("Join the club")
      _ -> IO.puts("Pise bhar")
    end
  end

  def atoms_if_variables do
    name = "VINIT"
    #status = :gold
    status = Enum.random([:gold , :silver , :bronze ])

    if status === :gold do
      IO.puts("Welcome to Jungle #{name} your membership is #{status}")
    else
      IO.puts("Welcome to Zumble #{name} your membership is #{status}")
    end
  end

  def numerical_const do
    x = 10
    a = @x + x
    IO.puts(a + @x)
  end
  # def user_ID do
  #   IO.puts(UUID.uuid4())
  # end

  def hello do
    IO.puts(:"ZA-world")
  end

  def hello1 do
    IO.puts(:"Hello from hello1  function")
  end
end
