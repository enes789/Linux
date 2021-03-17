#!/bin/bash

read -p "Enter first number: " nmb1
read -p "Enter second number: " nmb2
let total=nmb1+nmb2
multi=$(( nmb1 * nmb2 ))

echo "Result of multi:  $multi"
echo "Result of sum:  $total"
