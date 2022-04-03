import Control.Exception (evaluate)
import Data.Int (Int64)
import Data.Time
import Data.Time.Clock.POSIX (utcTimeToPOSIXSeconds)
import Text.Printf (printf)

msSinceEpoch :: UTCTime -> Int64
msSinceEpoch = floor . (1000 *) . nominalDiffTimeToSeconds . utcTimeToPOSIXSeconds

fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

n :: Int
n = 40

main :: IO ()
main = do
  x <- getCurrentTime
  r <- evaluate $ fib n
  y <- getCurrentTime
  printf "fib(%d) = %d\n" n r
  printf "time    = %d milliseconds\n" (msSinceEpoch y - msSinceEpoch x)
