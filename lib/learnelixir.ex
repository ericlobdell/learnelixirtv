defmodule Learnelixir do
    @moduledoc """
        Demo of a module level documentation entry
    """

    @doc """
        Adds two integers together

        ## Examples
            add(1,2)
            3

            add(5,5)
            10
    """
    def add(x, y) do
        x + y
    end
end

defmodule MyList.Recursive do
    def reduce(list, fun, init) do
      do_reduce(list, fun, init || 0)
    end
    defp do_reduce([], fun, acc)  do
      acc
    end
    defp do_reduce([h|t], fun, acc) do
      do_reduce(t, fun, fun.(h, acc))
    end
end
