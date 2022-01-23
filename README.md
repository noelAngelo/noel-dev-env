# Development Environment Cookbook

The following are a list of tools Noel uses to write amazing code. The list assumes that Noel is writing mostly in __Python__ and uses the environment for _Data Engineering_ tasks. Specifications on the different tools will be listed below.

## Table of Contents


### Summary

This cookbok will assume that you are working on a `UNIX` machine (preferrably on a MacOS). It will primarily use __Ansible__ to automate the installation of the different tools necessary to get started coding.

#### Automation Tools
The following are the different tools Noel uses to gather his minions.

1. Homebrew
2. Ansible
3. Docker

#### Shell tools
The following are the different tools Noel uses to customize his Terminal.

1. FiSH shell
2. Fira Font
3. Starship Prompt (_*yes, I have a personality. I like pretty things_)
4. Hyper/iTerm2

#### Text tools
The following are the different tools Noel uses to write a Shakespere novel.

1. PyCharm
2. Visual Studio Code

#### Development tools
The following are the different tools Noel uses to craft a story.

1. Python3
2. NodeJS
3. Neo4J
4. Postman

#### Extra tools
The following are just extra tools that are for procrastination.

1. Spotify
2. Messenger
3. Slack
4. Magnet (get from AppStore)
5. Zoom
6. Microsoft Office (get from Office365)
7. 1Password

## Configuration for Tools

### Set FiSH as default
```terminal
#!/usr/bin/env fish

$ echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
$ chsh -s /opt/homebrew/bin/fish
```

### VS Code

Configuration
```
# settings.json

"editor.fontFamily": "Fira Code",
"editor.fontLigatures": true,
```

#### Extensions
1. Python
2. Pylance
3. Prettier
4. Visual Studio Intellicode
5. Docker
6. GitLens
7. Material Icons
8. Markdown All In One

### Hyper Terminal

Configuration
```
# ~/.hyper.js

shell: '/opt/homebrew/bin/fish',
...
fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
...
webGLRenderer: false,
```

Errors
```
$ cd ~/.hyper_plugins
$ npm install
```

#### Extensions
1. hyper-font-ligatures
2. hyper-pane
3. hyper-tabs-enhanced