## Agenda

1. Python
2. R 
3. Git
4. Others


### Python

- Install.
  - Install python.
    - From the [offical webisite](https://www.python.org/downloads/).
    - Use [homebrew](https://realpython.com/installing-python/#how-to-install-from-homebrew).
  - Install python packages in terminal.
    - `python3 -m pip install pacakge_name`
  - Install jupyter notebook in terminal.
    - `pip install notebook`
  - Check python version in terminal.
    - `python3 --version`
  - Check python version in python/jupyter notebook.
    - `import sys`
    - `sys.version`
- Upgrade.
  - Update python in terminal.
    - `conda update python3`
- Calling.
  - Call jupyter notebook in terminal.
    - `jupyter notebook`
  - Call python in terminal.
    - `python3`


### R

- Install.
  - Install R.
    - From [CRAN](https://www.r-project.org/).
  - Install RStudio.
    - From [posit](https://posit.co/download/rstudio-desktop/).
  - Install packages in R console.
    - `install.packages("package_name")`
  - Check R version in R console.
    - `version`
  - Check package status and version in R console.
    - `packageStatus()`
    - `packageVersion("package_name")`
- Upgrade.
  - Update R.
    - [Reference](https://www.linkedin.com/pulse/3-methods-update-r-rstudio-windows-mac-woratana-ngarmtrakulchol/).
    - Re-download and install R from [CRAN](https://www.r-project.org/).
    - Move all the package folders from your old R version to new R version.
      - Usually they are located at `/Library/Frameworks/R.framework/Versions/x.xx/Resources/library`
  - Update packages.
    - In R console, `update.packages(checkBuilt = TRUE)`
    - In RStudio, go to tools -> check for package updates.
- Git setup.
  - [Reference](https://happygitwithr.com/existing-github-last.html).
  - Create a remote on github from the existing project. 
    - Given your R project is already using git. 
    - Given you use the `usethis` package AND you have configured a GitHub Personal Access Token (PAT) (see [here](https://happygitwithr.com/https-pat.html) for how to set it up).
    - In R console, `usethis::use_github(host = "https://github.com/")`. This will create a remote for your existing local git project.
  - Store git credentials.
    - In R console, `gitcreds::gitcreds_set(url = "https://github.com/")`
    - Switch between different remotes needs to reset the PAT.
  - Retrieve your credentials.
    - In R console, `gitcreds::gitcreds_get(url = "https://github.com/")`
- Fix `data.table` package single thread issue.
    - [Reference 1](https://firas.io/post/data.table_openmp/).
    - [Reference 2](https://stackoverflow.com/questions/40904488/openmp-r-and-macos#).
    - [Reference 3](https://github.com/Rdatatable/data.table/wiki/Installation#openmp-enabled-compiler-for-mac). Recommend to use.
      - Under `/Users/username`, press `cmd+shift+period` to see hidden files, then under `.R` folder (case sensitive), create a `Makevars` file.
      - Add gcc (option 5) info in `Makevars` file is working on work computer.
      - Add libomp (option 1) info in `Makevars` file is working on personal computer.
    - Remove package.
      - In R console, `remove.packages("data.table")`
    - Install package from the source.
      - In R console.
        - `install.packages("data.table", type = "source", repos = "https://Rdatatable.gitlab.io/data.table")`
    - Check thread numbers.
      - In R console, `data.table::getDTthreads()`


### Git 

- Git setup.
  - In Visual studio code, click explore, then open a folder, this will be the work directory and then you can initiate a git project.
  - In Visual studio code, terminal -> new terminal, to open a command line window.
  - In the terminal, use `git config --list` to see the configuration.
  - In the terminal, use `git init` to initialize a project.
  - In the terminal, to staging a specific file: `git add FILENAME`, to add all files: `git add .`, to make a commit: `git commit -m “commit message”`.
- Create a remote.
  - First create a repo in [GitHub](https://github.com/nealxun).
  - Pushing to GitHub.
    - Add a remote, in terminal, run `git remote add origin YOUR URL`. (make sure to select the https one).
    - Git push, in terminal, run `git push -u origin main` (first time push), `git push --all` (push all the branches).


### Others

- [Markdown syntax](https://www.markdownguide.org/basic-syntax/).
      
      
