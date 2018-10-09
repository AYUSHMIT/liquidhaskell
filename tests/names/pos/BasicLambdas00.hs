{-@ LIQUID "--reflection"      @-}

module BasicLambda00 where

import Prelude hiding (id)

import Language.Haskell.Liquid.NewProofCombinators 

{-@ reflect id @-}
id :: a -> a
id x = x

{-@ fmap_id' :: x:(r -> a) -> {v:Proof | (\roo:r -> id (x roo)) ==  (\moo:r -> (x moo)) } @-}
fmap_id' :: (r -> a) ->  Proof
fmap_id' x = undefined 


