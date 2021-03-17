#!/bin/bash

read -p "Enter first number: " nmb1
read -p "Enter second number: " nmb2
total=$(( nmb1 + nmb2 ))
echo "First result: $total"
echo $(( total++ ))

echo "Second result: $total"
result=$(( total - nmb1 ))
echo "Last result: $result"
