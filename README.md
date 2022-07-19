# mason
> [mason_cli](https://pub.dev/packages/mason_cli)

### Installation

```sh
# 🎯 Activate from https://pub.dev
dart pub global activate mason_cli

# 🍺 Or install from https://brew.sh
brew tap felangel/mason
brew install mason
```

### Initializing Use Mason in Project

- location project and make file mason.yaml
    ```sh
    touch mason.yaml
    ```

    ***exmaple file mason.yaml
    ```.yaml
    bricks:
      get_module:
         git:
           url: https://github.com/00believers00/mason
           path: bricks/get_module
    ```

- update data mason to project 
    ```sh
    mason get
    ```

### Create template by mason 

- goto location path
    ```sh
    cd <location>   
    ```
- create template
    ```sh
    mason make <name bricks>
    ```
    ***exmaple create get_module
    ```sh
    mason make get_module
    ```
  #### or
   ```sh
      mason make <name bricks> -o <path>
   ```

#### config .gitignore
```
.mason
mason-lock.json
```
