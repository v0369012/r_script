box::use(yaml[read_yaml])
script_dir <- box::file()
config_path <- file.path(script_dir, "../config.yml")
VERSION <- read_yaml(config_path)$version