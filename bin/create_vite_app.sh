#!/bin/bash

project_type=${1:-react}
project_name=${2:-default_react_project}

npm create vite@latest "${project_name}" -- --template "${project_type}"

