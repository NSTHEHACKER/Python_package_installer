#!/bin/bash

# List of package names to download
packages=(
    requests
    pandas
    numpy
    matplotlib
    scikit-learn
    nltk
    tensorflow
    PyAudio
    keras
    torch
    opencv-python
    pyttsx3
    textblob
    PyPDF2
    beautifulsoup4
    pygame
)

# Display the list of package names
echo "The following packages will be installed:"
printf '%s\n' "${packages[@]}"

# Install packages with progress bar
count=0
total=${#packages[@]}
for package in "${packages[@]}"
do
    ((count++))
    echo -ne "Installing package $count of $total: $package \r"
    pip install "$package" > /dev/null 2>&1
    if [ $count -eq $total ]
    then
        echo -ne "\n"
    fi
done

