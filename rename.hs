import System.IO
import System.Enviroment
import qualified Data.Text as T
import qualified Data.Text.IO as TIO

reNameMain :: IO()
reNameMain = do
    args <- getArgs
    let source =  args !! 0
    let dest = args !! 1
    input <- TI.readFile source
    TI.writeFile dest input
    
capitalizeMain :: IO()
capitalizeMain = do
    args <- get args
    let fileName = head args
    input <- TI.readFile fileName
    TI.writeFile fileName (T.toUpper input)

