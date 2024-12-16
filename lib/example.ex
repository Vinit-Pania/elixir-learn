defmodule Example do
  use Application
  alias UUID

  @x 5

  def start(_type, _args)do
    Example.main()
    #Example.new_year_calculator()
    #IO.puts(hello())
    #IO.puts(Example.hello1())
    #IO.puts(Example.user_ID)
    Supervisor.start_link([], strategy: :one_for_one) #need for running directly form cmd prompt
  end

  def main do



  end
  def  tuples_in do
      memberships = {:bronze, :silver}
    IO.inspect(memberships)
    #Atoms does not accept puts
    memberships =  Tuple.append(memberships, :gold)
    IO.inspect(memberships)

    prices = {5,10 , 14, 16}
    avg_prices =  Tuple.sum(prices) / tuple_size(prices)
    IO.puts(avg_prices)

    #printing out the each element in tuple
    IO.puts("Avg of mebership from #{elem(memberships, 0)} #{elem(memberships, 1)} , #{elem(memberships, 2)} is #{avg_prices}")

    #store individual instances
    user1 = {"bint" ,  :gold}
    {name, membership} = user1
    IO.puts("#{elem(user1, 0)} has a #{elem(user1, 1)} membership from elment matching")
    IO.puts("#{name} has a #{membership} membership from pattern matching ")
  end

  def basic_date_time do
    time = Time.new(16,30,30,0)
    # IO.puts(time) --> will not wrok for multiple value
    IO.inspect(time)

    date_new=Date.new(2025,1,1)
    #IO.inspect("Date is,#{date}" )
    #IO.inspect("Date and time is, #{date_new}") i dont know why its not working
    IO.inspect(date_new)

    date_time = DateTime.new!(Date.new!(2024,1,1), Time.new!(0,0,0,0), "Etc/UTC")
    IO.puts(date_time.utc_offset)
    IO.inspect("Combination of Date and time is, #{date_time}")
  end

  def new_year_calculator do
    time = DateTime.new!(Date.new!(2024,1,1), Time.new!(0,0,0,0), "Etc/UTC")
    time_till = DateTime.diff(time, DateTime.utc_now())
    IO.puts("Time remainning is #{time_till}")

    days = time_till / 86_400
    IO.puts("No of days #{days}")

    hours =  div(rem(time_till , 86_400), 60 * 60 )
    IO.puts("No of hours #{hours}")

    minutes = div(rem(time_till, 60 * 60 ), 60)
    IO.puts("Minutes is #{minutes}")

    seconds = rem(time_till , 60)
    IO.puts("Seconds are #{seconds}")

    IO.puts ("Days Gone: #{days} days , #{hours} hours , #{minutes} minutes, #{seconds} seconds ")

  end

  def integer_floats do
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
