{-# LANGUAGE OverloadedStrings #-}

import Network.Wai (Application, responseLBS)
import Network.Wai.Handler.Warp (run)
import Network.HTTP.Types (status200)
import Lib

-- The application: handles incoming requests
app :: Application
app _ respond = respond $ responseLBS
    status200
    [("Content-Type", "text/plain")]
    "Hello, World!"

-- Main function: starts the server
main :: IO ()
main = do
    let port = 8080
    putStrLn $ "Starting server on port " ++ show port
    run port app
