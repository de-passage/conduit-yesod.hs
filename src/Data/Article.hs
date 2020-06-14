module Data.Article where

import qualified Data.Profile as P

data Article = Article {
    slug:: String,
    title:: String,
    description:: String,
    body:: String,
    tagList:: [ String ],
    createdAt:: String,
    updatedAt:: String, 
    favorited:: Bool,
    favoritesCount:: Int,
    author:: P.Profile
  }