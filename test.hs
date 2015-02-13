mysubtract_1 :: (Int,Int) -> (Int, Int) 
mysubtract_1  (a,b) = (a-1,b-1) 
mysubtract_2 :: (Int,Int) -> (Int, Int) 
mysubtract_2  (a,b) = (a-1,b-8) 
mysubtract_3 :: (Int,Int) -> (Int, Int) 
mysubtract_3  (a,b) = (a-8,b-1) 
mysubtract_4 :: (Int,Int) -> (Int, Int) 
mysubtract_4  (a,b) = (a-8,b-8) 
mysquare :: (Int,Int) -> Int 
mysquare (a,b) = a^2+b^2 

----------------- [(1,2),(2,3),(3,4)]  ->  [1,2,3,4] 
getAllDistance :: [(Int,Int)] -> [Int] 
getAllDistance a = [mysquare(mysubtract_1(head(a))),mysquare

(mysubtract_2(head(a))),mysquare(mysubtract_3(head(a))),mysquare

(mysubtract_4(head(a)))] 
----------------------------------[1,2,3,4] -> 1 
findSmall :: [Int] -> Int
findSmall x = minimum x

makeArr :: [(Int,Int)] -> (Int,[(Int,Int)])
makeArr x = (findSmall(getAllDistance x) , x )

mycalculator :: [(Int, Int)] -> (Int,[(Int,Int)]) -> (Int,[(Int,Int)])
mycalculator moves ((-1),[ ]) = makeArr moves
mycalculator moves (s,x) = if(fst(makeArr moves)>=s) then (s,x) else 

makeArr moves

corner :: [[(Int,Int)]] -> ([(Int,Int)])
corner x = snd(foldr mycalculator ((-1),[ ]) x)
