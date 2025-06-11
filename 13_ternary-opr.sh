#!/bin/bash

read -p "Enter your age:" age

[[ age -ge 18 ]] && echo "You can vote." || echo "You cann't vote."
