defmodule Example do
  use Application
  alias UUID

  @x 5

  def start(_type, _args)do
    Example.main()
    #IO.puts(hello())
    #IO.puts(Example.hello1())
    #IO.puts(Example.user_ID)
    Supervisor.start_link([], strategy: :one_for_one) #need for running directly form cmd prompt
  end

  def main do
    a = 10
    b = 2.0
    IO.puts(a+b)
    c =3
    IO.puts(a+c)
    IO.puts(a / b )  #its always gives in floating point number
    :io.format("~.20f\n", [0.1]) #Displaying floating floating point number in float with 20 decimal after a decimal point

    IO.puts(Float.ceil(0.875 , 2))
    IO.puts(Integer.gcd(3 , 10))

    #Explore all the functions related to Integer  and Floats as an excersice

  end

  def interpolation do
    IO.puts("This\nis\nis\na\nmesaage\nfrom\nelixir\n")
    IO.puts("After")
    IO.puts(?a)
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
