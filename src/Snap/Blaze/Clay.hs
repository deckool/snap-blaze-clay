{-# LANGUAGE OverloadedStrings #-}
module Snap.Blaze.Clay
    (clay,
     clayPretty
    ) where

import Text.Blaze.Html (Html, toHtml)
import Clay

clay :: Css -> Html
clay css = do
    toHtml (renderWith compact [] css)

clayPretty :: Css -> Html
clayPretty css = do
    toHtml (renderWith pretty [] css)
