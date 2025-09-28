# noah
noah is a script for generating toolchain installation scripts from templates.


## Writing templates
When generating scripts, the following template tokens will be substituted with
appropriate values.

| Token      | Purpose                                                        |
|------------|----------------------------------------------------------------|
| `@tmp`     | An appropriate temporary directory to use when unpacking files |
| `@version` | The version argument provided to noah                          |
| `@arch`    | The architecture argument provided to noah                     |

Examples can be found in the existing templates.


## Generating Scripts
```shell
./noah.sh <toolchain> <version> <architecture>
```

Templates are stored in /templates as .txt files. The generated scripts will
be stored in a folder named 'generated'. The name of the toolchain is used as
the name of the template.

The convienence script bulk.sh will read the toolchain, version, and
architecture arguments from targets.txt and call Noah to generate scripts for
those combinations.
