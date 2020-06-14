module Data.Comment where

import qualified Data.Profile as P

data Comment = Comment {
    id:: Int,
    createdAt:: String,
    updatedAt:: String,
    body:: String,
    author:: P.Profile
  }