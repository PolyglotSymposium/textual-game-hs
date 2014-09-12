#!/bin/sh
for spec in *Spec.hs; do
    runhaskell $spec
done
