# venv.sh: Simplify Python Virtual Environment Creation and Activation

This repository contains a bash script (`venv.sh`) that streamlines the process of setting up and managing Python virtual environments. With `venv.sh`, you can create a new Python virtual environment or activate an existing one using a single `venv` command.

## Prerequisites

- Python 3.4 or later
- Bash shell

## Installation

1. **Clone this repository to your local machine**:

    ```
    git clone https://github.com/namastex888/venv.sh.git
    ```

2. **Navigate to the directory containing the script and make it executable**:

    ```bash
    cd venv.sh
    chmod +x venv.sh
    ```

3. **Create a `bin` directory in your home directory if it doesn't exist**:

    ```bash
    mkdir -p ~/bin
    ```

4. **Move the script to the `~/bin` directory in your home directory and rename it to `venv`**:

    ```bash
    mv venv.sh ~/bin/venv
    ```

5. **Ensure that the `~/bin` directory is in your `PATH`**. You can do this by adding the following line to your `~/.bashrc` or `~/.bash_profile` file:

    ```bash
    echo 'export PATH="$HOME/bin:$PATH"' >> ~/.bashrc
    ```

    Then, run the following command to reload your `~/.bashrc` or  file:

    ```bash
    source ~/.bashrc
    ```

    Now, you should be able to use `venv` as a command from anywhere in your terminal.

## Usage

To create a new Python virtual environment or activate an existing one, use the `venv` command:

```bash
venv
```

When prompted, enter the name of the virtual environment. If you just press enter without typing a name, the script will use the default name my_venv.

If the virtual environment already exists, the script will activate it. If it does not exist, the script will create it and then activate it.
