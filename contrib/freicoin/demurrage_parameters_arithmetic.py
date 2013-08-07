#!/usr/bin/env python

from __future__ import division

try:
    from gmpy2 import mpq as Fraction
except ImportError:
    from fractions import Fraction

TOTAL_SUPPLY   = 10**16 - 1
EQ_HEIGHT      = 161280
TITHE_RATIO    = Fraction(4,5)
TITHE_AMOUNT   = TOTAL_SUPPLY * TITHE_RATIO / EQ_HEIGHT
DEMURRAGE_RATE = 2**20

def sample_run(subsidy):
  def get_block_value(height):
    if height < EQ_HEIGHT:
        return Fraction(TOTAL_SUPPLY, DEMURRAGE_RATE) + TITHE_AMOUNT + \
               Fraction((EQ_HEIGHT - height) * subsidy, EQ_HEIGHT)
    else:
        return Fraction(TOTAL_SUPPLY, DEMURRAGE_RATE)
  total=0
  for i in xrange(EQ_HEIGHT):
    total = total + get_block_value(i) - Fraction(total, DEMURRAGE_RATE)
  return total

print "Performing binary search..."

low,high = 0, TOTAL_SUPPLY
while True:
  if (high-low) <= 1:
    break
  sample = (low+high)//2
  result = sample_run(sample)
  if result < TOTAL_SUPPLY:
    low = sample
  else:
    high = sample
  print(high - low)
initial = low
if sample_run(initial) >= TOTAL_SUPPLY:
  initial = initial - 1
print "Tithe amount:    %d" % TITHE_AMOUNT
print "Initial subsidy: %d" % initial
print "Initial reward:  %d" % (initial + TOTAL_SUPPLY//DEMURRAGE_RATE)
print "Final subsidy:   %d" % 0
print "Final reward:    %d" % (TOTAL_SUPPLY//DEMURRAGE_RATE)
print "Equilibrium:     Block #%d" % EQ_HEIGHT
print "Approx delta:    %f" % (initial / EQ_HEIGHT / 100000000)
print "Max coins:       %d" % sample_run(initial)
