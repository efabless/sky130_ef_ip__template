# Dependenices

Dependencies are handled as git submodules in the `ip/` directory.

## Adding submodules

To create a git submodule, cd to the project root directory and do:

```
git submodule add <repository> ip/<ip_block>
```

Where `<repository>` is the URL of the new submodule. This can be either a HTTPS or 
SSH URL and would assume one of those methods during fetching. To be able to use
HTTPS *or* SSH for the root repository ("superproject") you should use relative urls:

Use `../<ip_block>.git` for `<repository>` if the repository is in the same namespace, e.g. if your are the owner of both the superproject and the IP block.

Use `../../<owner>/<ip_block>.git` if the IP block is owned by someone else on GitHub, for example: `../../efabless/sky130_ef_ip__adc3v_12bit.git`.

Therefore executing the following in the project root directory:

```
git submodule add ../../efabless/sky130_ef_ip__adc3v_12bit.git ip/sky130_ef_ip__adc3v_12bit
```

Would create the `sky130_ef_ip__adc3v_12bit` submodule under `ip/`.

## Managing submodules

> [!IMPORTANT]
> Never manually move/delete submodules! Instead use `git mv old/submod new/submod` or `git rm ip/submodule`.

- To update and initialize the submodules, do:

    ```
    git submodule update --init --recursive
    ```

- To update the submodules to the latest commit on their respective branches, do:

    ```
    git submodule update --remote --recursive
    ```

For more commands please see the [git-submodule](https://git-scm.com/docs/git-submodule) documentation.
