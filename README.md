# Incomplete Maybe Eq and Ord Instances in Haskell

This repository demonstrates a common error in Haskell involving incomplete instance declarations for the `Eq` and `Ord` type classes when working with the `Maybe` type.

The `bug.hs` file shows an example where the `Eq` and `Ord` instances for `Maybe` are partially defined leading to unexpected behavior when comparing different `Maybe` values.

The `bugSolution.hs` file provides the corrected code with complete `Eq` and `Ord` instances for `Maybe`, demonstrating how to properly define these instances to avoid such issues.