{-# LANGUAGE OverloadedStrings     #-}
{-# LANGUAGE QuasiQuotes           #-}
{-# LANGUAGE TemplateHaskell       #-}
{-# LANGUAGE TypeFamilies          #-}
{-# LANGUAGE ViewPatterns          #-}
import           Yesod

data HelloWorld = HelloWorld

mkYesod "HelloWorld" [parseRoutes|
/ HomeR GET
/api/users/login LoginR POST
/api/users RegisterR POST
/api/user CurrentUserR GET PUT
/api/profiles/#String ProfileR GET
/api/profiles/#String/follow FollowingR POST DELETE
/api/articles ArticlesR GET PUT
/api/articles/feed FeedR GET
!/api/articles/#String ArticleR GET PUT DELETE
/api/articles/#String/comments CommentsR GET POST
/api/articles/#String/comments/#Int CommentR DELETE
/api/articles/#String/favorite FavoritingR POST DELETE
/api/tags TagsR GET
|]

instance Yesod HelloWorld

getHomeR :: Handler Value
getHomeR = return $ object []

postLoginR :: Handler Value
postLoginR = return $ object []

postRegisterR :: Handler Value
postRegisterR = return $ object []

getCurrentUserR :: Handler Value
getCurrentUserR = return $ object []

putCurrentUserR :: Handler Value
putCurrentUserR = return $ object []

getProfileR :: String -> Handler Value
getProfileR _ = return $ object []

postFollowingR :: String -> Handler Value
postFollowingR _ = return $ object []

deleteFollowingR :: String -> Handler Value
deleteFollowingR _ = return $ object []

getArticlesR :: Handler Value
getArticlesR = return $ object []

putArticlesR :: Handler Value
putArticlesR = return $ object []

getFeedR :: Handler Value
getFeedR = return $ object []

getArticleR :: String -> Handler Value
getArticleR _ = return $ object []

putArticleR :: String -> Handler Value
putArticleR _ = return $ object []

deleteArticleR :: String -> Handler Value
deleteArticleR _ = return $ object []

getCommentsR :: String -> Handler Value
getCommentsR _ = return $ object []

postCommentsR :: String -> Handler Value
postCommentsR _ = return $ object []

deleteCommentR :: String -> Int -> Handler Value
deleteCommentR _ _ = return $ object []

postFavoritingR :: String -> Handler Value
postFavoritingR _ = return $ object []

deleteFavoritingR :: String -> Handler Value
deleteFavoritingR _ = return $ object []

getTagsR :: Handler Value
getTagsR = return $ object []

main :: IO ()
main = warp 3000 HelloWorld