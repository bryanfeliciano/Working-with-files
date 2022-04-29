import System.IO

openFile :: FilePath -> IOMode -> IO Handle

-- Initial version --
-- main :: IO()
-- main = do
--     myFile <- openFile "hello.txt" ReadMode
--     hClose myFile
--     putStrLn "done!"