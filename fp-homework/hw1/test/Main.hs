{-# LANGUAGE UnicodeSyntax #-}
module Main where

import Test.Tasty (defaultMain, testGroup)
import Test1 (hspecTest1)
import Test2 (hspecTest2)
import Test3 (hspecTest3)
import Test_4 (hspecTest4)
import Test5 (hspecTest5)
import Test6 (hspecTest6)
import Test7 (hspecTest7)

main = defaultMain =<< allTests

allTests = do
    t1 ← hspecTest1
    t2 ← hspecTest2
    t3 ← hspecTest3
    t4 ← hspecTest4
    t5 ← hspecTest5
    t6 ← hspecTest6
    t7 ← hspecTest7
    return $ testGroup "Tests"
      [t1, t2, t3, t4, t5, t6, t7]