#!/bin/bash

function create_venv() {
  read -p "Enter the name of the virtual environment (default: my_venv): " venv_name

  # If no name is entered, use a default name
  if [ -z "$venv_name" ]
  then
    venv_name="my_venv"
  fi

  # Check if the virtual environment already exists
  if [ -d "$venv_name" ]
  then
    echo "Virtual environment '$venv_name' already exists."
  else
    python3 -m venv $venv_name
    echo "Virtual environment '$venv_name' has been created."
  fi

  # Activate the virtual environment
  source $venv_name/bin/activate
  echo "Virtual environment '$venv_name' has been activated."
}

# Check if a function name 'venv' already exists
if [ -n "$(type -t venv)" ] && [ "$(type -t venv)" = function ]
then
  echo "Error: Function name 'venv' already exists. Please use a different name or delete the existing function."
else
  # Create a new function 'venv' to create a Python virtual environment
  function venv() {
    create_venv
  }

  echo "Function 'venv' has been created. You can now use 'venv' to create and activate a Python virtual environment."
fi
