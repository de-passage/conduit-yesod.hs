module Data.Profile where

data Profile = Profile {
    username:: String,
    bio:: Maybe String,
    image:: Maybe String,
    following:: Bool
  }