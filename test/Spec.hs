module Main (main) where

import Test.Tasty
import Test.Tasty.HUnit
import Problems

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Ninety-Nine Problems Tests"
  [
    p1Tests,
    p2Tests,
    p3Tests
  ]

p1Tests :: TestTree
p1Tests = testGroup "p01"
  [
    testCase "Test with a list of integers" $
      myLast [1, 2, 3, 4] @?= (4 :: Int),
    testCase "Test with a list of strings" $
      myLast ['x', 'y', 'z'] @?= 'z'
  ]

p2Tests :: TestTree
p2Tests = testGroup "p02"
  [
    testCase "Test with a list of integers" $
      myButLast [1, 2, 3, 4] @?= (3 :: Int),
    testCase "Test with a list of strings" $
      myButLast ['a'..'z'] @?= 'y'
  ]

p3Tests :: TestTree
p3Tests = testGroup "p03"
  [
    testCase "Test with a list of integers" $
      elementAt [1, 2, 3] 2 @?= (2 :: Int),
    testCase "Test with a string" $
      elementAt "haskell" 5 @?= 'e'
  ]
