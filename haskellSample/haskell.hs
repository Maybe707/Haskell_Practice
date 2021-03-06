fibonacci :: Integer -> Integer
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci (-1) = 1
fibonacci (-2) = -1

fibonacci n | n > 1 = accumulator 0 1 n
            | n < (-2) = accumulator2 1 (-1) n
    
accumulator acc acc2 1 = acc2
accumulator acc acc2 n = accumulator (acc2) (acc2 + acc) (n - 1)
accumulator2 acc1 ac2 (-1) = acc1
accumulator2 acc1 ac2 n = accumulator2 (ac2) (acc1 - ac2) (n + 1)

