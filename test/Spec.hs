module Main (main) where

import Test.Tasty ( defaultMain, testGroup, TestTree )
import Test.Tasty.HUnit
import Problems

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests = testGroup "Ninety-Nine Problems Tests"
  [
    p1Tests,
    p2Tests,
    p3Tests,
    p4Tests,
    p5Tests,
    p6Tests,
    p7Tests,
    p8Tests,
    p9Tests,
    p10Tests
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

p4Tests :: TestTree
p4Tests = testGroup "p04"
  [
    testCase "Test with a list of integers" $
      myLength ([123, 456, 789] :: [Integer]) @?= 3,
    testCase "Test with a string" $
      myLength "Hello, world!" @?= 13
  ]

p5Tests :: TestTree
p5Tests = testGroup "p05"
  [
    testCase "Test with a string" $
      myReverse "A man, a plan, a canal, panama!" @?= "!amanap ,lanac a ,nalp a ,nam A",
    testCase "Test with a list of integers" $
      myReverse [1, 2, 3, 4] @?= ([4, 3, 2, 1] :: [Integer])
  ]

p6Tests :: TestTree
p6Tests = testGroup "p06"
  [
    testCase "False test case with a list of integers" $
      isPalindrome ([1, 2, 3] :: [Integer]) @?= False,
    testCase "Test with a string" $
      isPalindrome "madamimadam" @?= True,
    testCase "True test case with a list of integers" $
      isPalindrome ([1, 2, 4, 8, 16, 8, 4, 2, 1] :: [Integer]) @?= True
  ]

p7Tests :: TestTree
p7Tests = testGroup "p07"
  [
    testCase "Test case for an element" $
      flatten (Elem (5 :: Integer)) @?= [5],
    testCase "Test case for a nested list" $
      flatten (List [Elem (1 :: Integer), List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) @?= [1, 2, 3, 4, 5],
    testCase "Test case for an empty list" $
      flatten (List []) @?= ([] :: [Int])
  ]

p8Tests :: TestTree
p8Tests = testGroup "p08"
  [
    testCase "Test with a string" $
      compress "aaaabccaadeeee" @?= "abcade"
  ]

p9Tests :: TestTree
p9Tests = testGroup "p09"
  [
    testCase "Test with a list of chars" $
      pack ['a', 'a', 'a', 'a', 'b', 'c', 'c', 'a', 'a', 'd', 'e', 'e', 'e', 'e'] @?= ["aaaa", "b", "cc", "aa", "d", "eeee"]
  ]

p10Tests :: TestTree
p10Tests = testGroup "p10"
  [
    testCase "Test with a string" $
      encode "aaaabccaadeeee" @?= [(4, 'a'), (1, 'b'), (2, 'c'), (2, 'a'), (1, 'd'), (4, 'e')]
  ]
