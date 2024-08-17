#!/usr/bin/Rscript

# Function: plus two variable

## Usage: Rscript r_script.R \
#         --first_number 1 \ 
#         --second_number 2

# optional arguments:
#    -h, --help  show this message and exit
#    -f, --first_number Input first number
#    -s, --second_number Input second number

# R package
box::use(argparser[arg_parser, add_argument, parse_args], glue[glue])

# load module
box::use(modules/func[plus_number])
box::use(modules/global[...])

# Create a parser
p <- arg_parser(glue("plus two number. (version: {VERSION})"))

# Add command line arguments
p <- add_argument(p, "--first_number",  help="first number to plus", type="numeric", default = 2)
p <- add_argument(p, "--second_number", help="second number to plus", type="numeric", default = 3)

# Parse the command line arguments
argv <- parse_args(p)

# Do something based on the passed arguments
cat(paste0("First number: ", argv$first_number, "\n"))
cat(paste0("Second number: ", argv$second_number, "\n"))
cat(paste0("Total number: ", plus_number(argv$first_number, argv$second_number), "\n"))