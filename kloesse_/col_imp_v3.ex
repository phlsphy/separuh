defmodule M do
    
    IO.puts "Hello! Please enter 'M.pagi(a,b)' 
    where 
    'a' is the total pages of Front Matter; 
    'b' is the total pages of the book (without Front Matter)."

    def pagi(fm,body) do 
        # Main pupose of col_imp_v3.ex is to see if we can code an alternative to v2
        # As far as possible, v3 uses the same variable naming as v1
        
        fm_pagi = Enum.to_list(1...fm)
            |>IO.inspect()

        body_pagi = Enum.to_list(1...pagi)
            |>IO.inspect()

        pagination = fm_pagi ++ body_pagi
            |>Enum.chunk_every(32)
        IO.inspect [pagination], charlists: :as_lists

    end    
end