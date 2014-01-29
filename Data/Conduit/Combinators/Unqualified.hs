-- WARNING: This module is autogenerated
{-# OPTIONS_HADDOCK not-home #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
module Data.Conduit.Combinators.Unqualified
    ( -- ** Producers
      -- *** Pure
      yieldMany
    , unfoldC
    , enumFromToC
    , iterateC
    , repeatC
    , replicateC
    , sourceLazy

      -- *** Monadic
    , repeatMC
    , repeatWhileMC
    , replicateMC

      -- *** I\/O
    , sourceFile
    , sourceHandle

      -- ** Consumers
      -- *** Pure
    , dropC
    , dropCE
    , dropWhileC
    , dropWhileCE
    , foldC
    , foldlC
    , foldCE
    , foldlCE
    , foldMapC
    , foldMapCE
    , allC
    , allCE
    , anyC
    , anyCE
    , andC
    , andCE
    , orC
    , orCE
    , elemC
    , elemCE
    , notElemC
    , notElemCE
    , sinkLazy
    , sinkList
    , sinkVector
    , sinkNull

      -- *** Monadic
    , mapM_C
    , mapM_CE
    , foldMC
    , foldMCE
    , foldMapMC
    , foldMapMCE

      -- *** I\/O
    , sinkFile
    , sinkHandle

      -- ** Transformers
      -- *** Pure
    , mapC
    , mapCE
    , omapCE
    , concatMapC
    , concatMapCE
    , takeC
    , takeCE
    , takeWhileC
    , takeWhileCE
    , takeExactlyC
    , takeExactlyCE
    , concatC
    , filterC
    , filterCE
    , mapWhileC

      -- *** Monadic
    , mapMC
    , mapMCE
    , omapMCE
    , concatMapMC
    , filterMC
    , filterMCE
    , iterMC
    ) where

import qualified Data.Conduit.Combinators as CC

-- | Yield each of the values contained by the given @MonoFoldable@.
--
-- This will work on many data structures, including lists, @ByteString@s, and @Vector@s.
--
-- Since 1.0.0
yieldMany = CC.yieldMany
{-# INLINE yieldMany#-}

-- | Generate a producer from a seed value.
--
-- Since 1.0.0
unfoldC = CC.unfold
{-# INLINE unfoldC#-}

-- | Enumerate from a value to a final value, inclusive, via 'succ'.
--
-- This is generally more efficient than using @Prelude@\'s @enumFromTo@ and
-- combining with @sourceList@ since this avoids any intermediate data
-- structures.
--
-- Since 1.0.0
enumFromToC = CC.enumFromTo
{-# INLINE enumFromToC#-}

-- | Produces an infinite stream of repeated applications of f to x.
--
-- Since 1.0.0
iterateC = CC.iterate
{-# INLINE iterateC#-}

-- | Produce an infinite stream consisting entirely of the given value.
--
-- Since 1.0.0
repeatC = CC.repeat
{-# INLINE repeatC#-}

-- | Produce a finite stream consistent of n copies of the given value.
--
-- Since 1.0.0
replicateC = CC.replicate
{-# INLINE replicateC#-}

-- | Generate a producer by yielding each of the strict chunks in a @LazySequence@.
--
-- For more information, see 'toChunks'.
--
-- Since 1.0.0
sourceLazy = CC.sourceLazy
{-# INLINE sourceLazy#-}

-- | Repeatedly run the given action and yield all values it produces.
--
-- Since 1.0.0
repeatMC = CC.repeatM
{-# INLINE repeatMC#-}

-- | See 'CC.repeatWhileM'
repeatWhileMC = CC.repeatWhileM
{-# INLINE repeatWhileMC#-}

-- | See 'CC.replicateM'
replicateMC = CC.replicateM
{-# INLINE replicateMC#-}

-- | See 'CC.sourceFile'
sourceFile = CC.sourceFile
{-# INLINE sourceFile#-}

-- | See 'CC.sourceHandle'
sourceHandle = CC.sourceHandle
{-# INLINE sourceHandle#-}

-- | See 'CC.drop'
dropC = CC.drop
{-# INLINE dropC#-}

-- | See 'CC.dropE'
dropCE = CC.dropE
{-# INLINE dropCE#-}

-- | See 'CC.dropWhile'
dropWhileC = CC.dropWhile
{-# INLINE dropWhileC#-}

-- | See 'CC.dropWhileE'
dropWhileCE = CC.dropWhileE
{-# INLINE dropWhileCE#-}

-- | See 'CC.fold'
foldC = CC.fold
{-# INLINE foldC#-}

-- | See 'CC.foldl'
foldlC = CC.foldl
{-# INLINE foldlC#-}

-- | See 'CC.foldE'
foldCE = CC.foldE
{-# INLINE foldCE#-}

-- | See 'CC.foldlE'
foldlCE = CC.foldlE
{-# INLINE foldlCE#-}

-- | See 'CC.foldMap'
foldMapC = CC.foldMap
{-# INLINE foldMapC#-}

-- | See 'CC.foldMapE'
foldMapCE = CC.foldMapE
{-# INLINE foldMapCE#-}

-- | See 'CC.all'
allC = CC.all
{-# INLINE allC#-}

-- | See 'CC.allE'
allCE = CC.allE
{-# INLINE allCE#-}

-- | See 'CC.any'
anyC = CC.any
{-# INLINE anyC#-}

-- | See 'CC.anyE'
anyCE = CC.anyE
{-# INLINE anyCE#-}

-- | See 'CC.and'
andC = CC.and
{-# INLINE andC#-}

-- | See 'CC.andE'
andCE = CC.andE
{-# INLINE andCE#-}

-- | See 'CC.or'
orC = CC.or
{-# INLINE orC#-}

-- | See 'CC.orE'
orCE = CC.orE
{-# INLINE orCE#-}

-- | See 'CC.elem'
elemC = CC.elem
{-# INLINE elemC#-}

-- | See 'CC.elemE'
elemCE = CC.elemE
{-# INLINE elemCE#-}

-- | See 'CC.notElem'
notElemC = CC.notElem
{-# INLINE notElemC#-}

-- | See 'CC.notElemE'
notElemCE = CC.notElemE
{-# INLINE notElemCE#-}

-- | See 'CC.sinkLazy'
sinkLazy = CC.sinkLazy
{-# INLINE sinkLazy#-}

-- | See 'CC.sinkList'
sinkList = CC.sinkList
{-# INLINE sinkList#-}

-- | Sink incoming values into a vector, up until size @maxSize@.
-- Subsequent values will be left in the stream.
sinkVector = CC.sinkVector
{-# INLINE sinkVector#-}

-- | See 'CC.sinkNull'
sinkNull = CC.sinkNull
{-# INLINE sinkNull#-}

-- | See 'CC.mapM_'
mapM_C = CC.mapM_
{-# INLINE mapM_C#-}

-- | See 'CC.mapM_E'
mapM_CE = CC.mapM_E
{-# INLINE mapM_CE#-}

-- | See 'CC.foldM'
foldMC = CC.foldM
{-# INLINE foldMC#-}

-- | See 'CC.foldME'
foldMCE = CC.foldME
{-# INLINE foldMCE#-}

-- | See 'CC.foldMapM'
foldMapMC = CC.foldMapM
{-# INLINE foldMapMC#-}

-- | See 'CC.foldMapME'
foldMapMCE = CC.foldMapME
{-# INLINE foldMapMCE#-}

-- | See 'CC.sinkFile'
sinkFile = CC.sinkFile
{-# INLINE sinkFile#-}

-- | See 'CC.sinkHandle'
sinkHandle = CC.sinkHandle
{-# INLINE sinkHandle#-}

-- | See 'CC.map'
mapC = CC.map
{-# INLINE mapC#-}

-- | See 'CC.mapE'
mapCE = CC.mapE
{-# INLINE mapCE#-}

-- | See 'CC.omapE'
omapCE = CC.omapE
{-# INLINE omapCE#-}

-- | Generalizes concatMap, mapMaybe, mapFoldable
concatMapC = CC.concatMap
{-# INLINE concatMapC#-}

-- | See 'CC.concatMapE'
concatMapCE = CC.concatMapE
{-# INLINE concatMapCE#-}

-- | See 'CC.take'
takeC = CC.take
{-# INLINE takeC#-}

-- | See 'CC.takeE'
takeCE = CC.takeE
{-# INLINE takeCE#-}

-- | See 'CC.takeWhile'
takeWhileC = CC.takeWhile
{-# INLINE takeWhileC#-}

-- | See 'CC.takeWhileE'
takeWhileCE = CC.takeWhileE
{-# INLINE takeWhileCE#-}

-- | See 'CC.takeExactly'
takeExactlyC = CC.takeExactly
{-# INLINE takeExactlyC#-}

-- | See 'CC.takeExactlyE'
takeExactlyCE = CC.takeExactlyE
{-# INLINE takeExactlyCE#-}

-- | See 'CC.concat'
concatC = CC.concat
{-# INLINE concatC#-}

-- | See 'CC.filter'
filterC = CC.filter
{-# INLINE filterC#-}

-- | See 'CC.filterE'
filterCE = CC.filterE
{-# INLINE filterCE#-}

-- | Map values as long as the result is @Just@.
mapWhileC = CC.mapWhile
{-# INLINE mapWhileC#-}

-- | See 'CC.mapM'
mapMC = CC.mapM
{-# INLINE mapMC#-}

-- | See 'CC.mapME'
mapMCE = CC.mapME
{-# INLINE mapMCE#-}

-- | See 'CC.omapME'
omapMCE = CC.omapME
{-# INLINE omapMCE#-}

-- | Generalizes concatMapM, mapMaybeM, mapFoldableM
concatMapMC = CC.concatMapM
{-# INLINE concatMapMC#-}

-- | See 'CC.filterM'
filterMC = CC.filterM
{-# INLINE filterMC#-}

-- | See 'CC.filterME'
filterMCE = CC.filterME
{-# INLINE filterMCE#-}

-- | Apply a monadic action on all values in a stream.
--
-- This @Conduit@ can be used to perform a monadic side-effect for every
-- value, whilst passing the value through the @Conduit@ as-is.
--
-- > iterM f = mapM (\a -> f a >>= \() -> return a)
--
-- Since 0.5.6
iterMC = CC.iterM
{-# INLINE iterMC#-}
