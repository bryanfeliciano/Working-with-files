import System.IO

openFile :: FilePath -> IOMode -> IO Handle

main :: IO()
main = do
    helloFile <- openFile "hello.txt" ReadMode
    hasLine <- hIsEOF helloFile
    firstLine <- if not hasLine
                 then hGetLine helloFile
                 else return "empty"
    hasSecondLine <- hIsEOF helloFile
    secondLine <- if not hasSecondLine
                  then hGetLine helloFile
                  else return " "


-- Initial version --
-- main :: IO()
-- main = do
--     myFile <- openFile "hello.txt" ReadMode
--     hClose myFile
--     putStrLn "done!"


-- Reading from and writing to another file --
-- main :: IO()
-- main = do
--     helloFile <- openFile "hello.txt" ReadMode
--     putStrLn firstLine 
--     secondLine <- hGetLine helloFile
--     goodByeFile <- openFile "goodBye.txt" WriteMode
--     hPutStrLn goodByeFile secondLine
--     hClose helloFile
--     hclosegoodByeFile
--     putStrLn "done!"