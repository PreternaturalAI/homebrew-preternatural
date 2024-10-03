# Preternatural CLI

`preternatural` is a command line tool to help building and updating Xcode Projects, Workspaces and Swift packages.

## Installation

### `brew` (Recommended)

1. Install brew if not already installed using the `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"` command.
2. Add the `PreternaturalAI/preternatural` tap using the `brew tap PreternaturalAI/preternatural` command.
3. Install the `preternatural` cli using the `brew install preternatural` command.

### `mint`

1. Install mint if not already installed using the `brew install mint` command.
2. Add Mint to your path by running `echo 'export PATH="$HOME/.mint/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc` (and restart your Terminal app) so that tools installed via Mint will be available without having to do mint run (i.e. mint run foo can now just be foo)
3. Install preternatural binary via mint: `mint install PreternaturalAI/cli-binary preternatural`

You can now use the `preternatural` command from your command line. See all the available options using `preternatural --help`.

> [!NOTE]  
> After installing `preternatural` with `mint`, there are some issues related to interactive input when running the `archive` subcommand. Thus, it is recommended to install `preternatural` via `brew` instead.

## Commands

### Build

Build Xcode projects, packages and workspaces. This command builds all projects, packages and workspaces that it finds within the current working directory. It also searches in sub-directories. If a project or package is found to be referenced from a workspace, by default this command will prioritize building it from the workspace as opposed to the standalone project or package.

```
preternatural build [options]
```

Options:
- `--derived-data-path <path>`: Path to the derived data folder
- `--build-all-platforms`: Builds for all supported platforms
- `--verbose`: Enable verbose logging
- `--isolated`: Prioritises building standalone Xcode projects instead of the referenced projects in an Xcode Workspace
- `--update-developer-team`: Autoconfigure the developer team for Xcode projects. Warning - this option updates the Xcode project with a new developer team
- `--attempt-automatic-fixes`: If build fails for a project or workspace, attempts to fix the build by updating code signing and dependecies. This does not update the original Xcode project or workspace, it makes a temporary copy and tries updating and building the temporary copy


Example:
```
preternatural build --build-all-platforms --update-developer-team
```

### Update

Update the dependencies of Xcode projects, packages and workspaces.

```
preternatural update [options]
```

Options:
- `--derived-data-path <path>`: Path to the derived data folder
- `--verify`: Verify the update process. Builds any projects / packages / workspaces that had changes
- `--verbose`: Enable verbose logging
- `--build-all-platforms`: Builds for all supported platforms
- `--isolated`: Prioritises building standalone Xcode projects instead of the referenced projects in an Xcode Workspace
- `--update-developer-team`: Autoconfigure the developer team for Xcode projects. Warning - this option updates the Xcode project with a new developer team

Example:
```
preternatural update --verify --build-all-platforms
```

### Generate Workspace

This command searches for an Xcode project within the current working directory, and acts on the first project that it finds. It will generate an Xcode workspace, clone all remote dependencies of the Xcode project in a folder called `Dependencies` and link them as local references in the Workspace.

```
preternatural generate workspace [name]
```

Arguments:
- `name`: Name of the workspace to generate (default: All)

Example:
```
preternatural generate workspace MyWorkspace
```

### Add Package

Add a Swift package to the Xcode project or workspace. This command will recursively search for Xcode projects and workspaces in the current working directory, and add the package to all projects and workspaces.

```
preternatural add <package-url>
```

Arguments:
- `package-url`: The URL of the Swift package to add

Example:
```
preternatural add https://github.com/Alamofire/Alamofire.git
```

### Archive

Archive and export a notarized and stapled .zip for the macOS app. Recursively searches in the current working directory for a project or workspace that contains the given target, and will archive the first one. If no target is specified, it will auto-determine the primary target of the first found project or workspace file and archive it.

```
preternatural archive [target] [output] [options]
```

Arguments:
- `target`: The target to archive. If not specified, the primary target will be used
- `output`: The output path for the archived .zip file. If not specified, a default path will be used

Options:
- `--debug`: Build the app in debug configuration. (It is built in release configuration by default)

Environment Variables:

- `NOTARIZATION_APP_STORE_CONNECT_USERNAME`: Your App Store Connect username to be used for notarization.
- `NOTARIZATION_APP_STORE_CONNECT_PASSWORD`: Your app-specific password to be used for notarization. See how to generate an app-specific password [here](https://support.apple.com/en-us/102654).
- `NOTARIZATION_APP_STORE_CONNECT_TEAMID`: Your App Store Connect Team ID for notarization.

**Note:** Setting the Environment Variables is optional. If the Environment Variables are not provided, `preternatural` comand will look for a signing certificate in the keychain, and will interactively ask for the notarization username and password when running the script for the first time.

Example:
```
preternatural archive MyApp ./output/MyApp.zip --debug
```

### Fix Codesigning

Fixes codesigning by fetching and applying codesigning certificates from the keychain.

```
preternatural fix codesigning [input]
```

Arguments:
- `input`: Path to the project or workspace file to be fixed. If not specified, codesigning fixes will be applied to all projects and workspaces in the current directory

Example:
```
preternatural fix codesigning ./MyProject.xcodeproj
```

### Clone

Clone an Xcode workspace or project.

```
preternatural clone <input> <output>
```

Arguments:
- `input`: The input workspace or project file path. Can be a relative or full path to an .xcworkspace or .xcodeproj file. Optionally, you can specify a target using the format: <file path>.xcodeproj/<target> or <file path>.xcworkspace/<target>
- `output`: The output directory path where the cloned project will be saved

Example:
```
preternatural clone ./MyProject.xcodeproj ./ClonedProject
```

## Additional Information

For more detailed information on each command and its options, you can use the `--help` flag with any command or subcommand:

```
preternatural --help
preternatural build --help
preternatural generate workspace --help
```

This will provide you with a detailed description of the command and all available options.
