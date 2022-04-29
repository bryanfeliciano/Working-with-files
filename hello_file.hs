import System.IO

openFile :: FilePath -> IOMode -> IO Handle

main :: IO()
main = do
    helloFile <- openFile "hello.txt" ReadMode
    putStrLn firstLine 
    secondLine <- hGetLine helloFile
    goodByeFile <- openFile "goodBye.txt" WriteMode
    hPutStrLn goodByeFile secondLine
    hClose helloFile
    hclosegoodByeFile
    putStrLn "done!"


-- Initial version --
-- main :: IO()
-- main = do
--     myFile <- openFile "hello.txt" ReadMode
--     hClose myFile
--     putStrLn "done!"