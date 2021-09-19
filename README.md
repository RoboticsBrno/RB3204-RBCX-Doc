# RB3204-RBCX-Doc
Full web documentation for universal board RB3204-RBCX

## Requirements

### Apt
- python 3.6 or newer -> `sudo apt install python3` 
- Pip -> `sudo apt install python3-pip`
- Git -> `sudo apt install git`
- Doxygen -> `sudo apt install doxygen`

### Pip
- Jinja2 -> `pip install jinja2`
- Mkdocs -> `pip install mkdocs`
- ruamel.yaml -> `pip install ruamel.yaml`
- mkdocs-material -> `pip install mkdocs-material`


To develop follow these instructions:

- Clone this repo `git clone https://github.com/RoboticsBrno/RB3204-RBCX-Doc.git`
- Run `make setup` to clone RBCX libs
- Run `make serve` to serve page on `localhost:8080`