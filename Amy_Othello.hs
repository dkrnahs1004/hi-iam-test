import Debug,Trace
import Control.Monad.Trans.State.Lazy
import Data.Maybe
import System.Environment
import System.IO.Unsafe
import Data.Either
import OthelloTools
-- import TonysOthelloFunctions
import FSM
--need some help which validmove function should I be using one from TonysOthelloFunctions or FSM or the playmove commented out in this file

{- This program is used as a template for the CPSC449 Othello Assignment. -}

-------------------------Main-------------------
main = main' (unsafePerformIO getArgs)
{- | we have a  main' IO function so that we can either:
 	1. call our program from GHCi in the usual way
	2. run from the command line by calling this function with the value from (getArgs)
-}
main' :: [String] -> IO() 
main' args = do  
	putStrLn "\nThe initial board:"
