from os import getenv, setenv
from mojoenv import load_mojo_env

fn main():
    # Defaults to cwd / ".env" and can override with alternative
    # var env_vars = load_mojo_env()

    var env_vars = load_mojo_env(".env.local")

    try: 
        for key in env_vars.keys():
            print("Key:", key[], "| Value:", env_vars[key[]])
    except e:
        print(e)

    # Get a env var defined in .env.local
    var mojo_port: String = getenv("API_KEY")
    print('API_KEY printed from `getenv("API_KEY")` ->', mojo_port)
