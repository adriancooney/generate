#generate
Simple project generation from templates. It's admittedly brittle and won't handle errors well, yet. 

##Dependencies
`generate` requires Node.js version v0.9.1 or greater.

##Installation
To install `generate`, run the following:
    
    git clone http://github.com/dunxrion/generate.git
    cd generate
    chmod +x install.sh
    ./install.sh

##Usage
Help: `generate help`

Generate a project: Navigate to the directory you wish for your project to be created in and do `generate <template>`

Add a template: `generate add <project directory|project_name.json>`

View available templates: `generate list`

##To add your own project
Projects can be contained in folders or entirely in a json file. Take a look at the examples projects in `projects/` to get the jist of it. No spec is currently written up for template creation.

##Todo
* More reliable error handling
* generate \<template> \<directory>
* Write up template spec
* Actual templates i.e. run files through templating engine getting variables from config file or arguments
* Reliable template parsing when adding, throwing errors if `project.json` does not exist etc.
* Repository? Overkill? I think so.