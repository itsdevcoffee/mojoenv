# MojoEnv

MojoEnv is a simple and efficient environment variable loader for Mojo projects. It allows you to easily manage environment variables in your Mojo applications by loading them from a `.env` file.

## Features

- Load environment variables from a `.env` file
- Parse and set environment variables in the current process
- Ignore comments and empty lines in the `.env` file
- Strip whitespace and quotes from keys and values
- Option to append the current working directory to the `.env` file path

## Usage

1. Copy `mojoenv.mojopkg` into the root of your mojo project

2. Create a `.env` file in your project directory:

```
DATABASE_URL=postgres://user:pass@localhost:5432/dbname
API_KEY=your_secret_api_key
DEBUG=True
```

3. In your Mojo script, import and use the `load_mojo_env` function:

```mojo
from mojoenv import load_mojo_env

fn main() raises:
    var env_vars = load_mojo_env()
    print(env_vars)  # This will print all loaded environment variables

    # You can also access individual environment variables
    let db_url = env_vars.get("DATABASE_URL", "")
    let api_key = env_vars.get("API_KEY", "")

    # Use the environment variables in your application
    # ...
```

## API

### `load_mojo_env(env_path: String = ".env", should_append_cwd: Bool = True) raises -> Dict[String, String]`

Loads environment variables from a `.env` file and sets them in the current process environment.

- `env_path`: Path to the `.env` file. Defaults to '.env' in the current directory.
- `should_append_cwd`: If True, appends the current working directory to the `env_path` when `env_path` is not '.env'. Defaults to True.

Returns a dictionary containing all parsed environment variables.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
