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

-------- [(1,2),(2,3),(3,4)]  ->  [1,2,3,4]
getAllDistance :: [(Int,Int)] -> [Int]
getAllDistance a = [mysquare(mysubtract_1(head(a))),mysquare(mysubtract_2(head(a))),mysquare(mysubtract_3(head(a))),mysquare(mysubtract_4(head(a)))]


------[1,2,3,4] -> 1
findSmall :: [Int] -> (Int,[Int]) -> Int
findSmall moves  ((-1),[]) = head(moves)
findSmall moves (s,x) = if(head(moves) >= s)
                then s
                else head(moves)

--------------[(1,2),(2,3),(3,4)] -> [1,(1,2),(2,3),(3,4)]
--makeArr :: [(Int,Int)] -> [Int,[(Int,Int)]] -> [Int,[(Int,Int)]]
--makeArr a = [findSmall (getAllDistance a) ((-1),[]) ,a]

------------------------------
--mycalculator :: [(Int,Int)] -> (Int,[(Int,Int)]) -> (Int,[(Int,Int)])
--mycalculator moves ((-1),[]) =(fst(findSmall(makeArr(moves))),moves)
--mycalculator moves (s,x) = if(fst(findSmall(makeArr(moves))) >= s)
 --               then  (s,x)
   --             else  (fst(findSmall(makeArr(moves))) ,moves)
----------------------------
--corner :: [[(Int,Int)]] -> ([(Int, Int)])
--corner x = snd(foldr mycalculator ((-1),[]) x )



