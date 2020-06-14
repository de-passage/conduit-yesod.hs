module Data.User where

data User = User {
    email :: String,
    token :: String,
    username :: String,
    bio :: Maybe String,
    image :: String
  }