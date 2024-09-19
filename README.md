# R package to access EcoTaxa's API

An Application Programming Interface is a set of functions that are exposed through the web to trigger actions in a web application. EcoTaxa now has an API and it can trigger *all* the actions that are doable through the web interface. It is documented online at <http://ecotaxa.obs-vlfr.fr/api/docs>. The same documentation is available from R but it may be more convenient to read it online to discover functions and see examples.

## Installation

The package is in development and not on CRAN. To install it, install the `devtools` package and then

```
remotes::install_github("ecotaxa/ecotaxarapi")
```

## Usage

The first step is to log in, since most functions require an EcoTaxa account. This action will generate a personal token. You can save it and it will be used in all subsequent function calls, even in new R sessions. This means you only have to do this once. This also means that anyone that has your token can perform all permitted actions (including deleting all your data) without your password: do not share it!

```
library("ecotaxarapi")
token <- login(LoginReq=LoginReq(
    password="my_super_password",
    username="my_login_email@somewhere.org"
  ))
save_api_token(token)
```

NB: this action shows a common pattern in the API calls: the argument to the `login()` function is another function that defines an object of a given type. It is documented so that you can figure out its arguments (`?LoginReq`). It may seem convoluted but is standard practice to check the input arguments for each object. Those objects are often called `***Req` or `***Model`.

Now, you are ready to make API calls. A simple example is getting information about yourself

```
show_current_user()
```

Discover other functions in the help of this R package or in the online documentation.

**WARNING**: This package is in alpha development stage (not even beta yet). Please be careful since many functions can be destructive. Please always examine the effect on a copy of your data or on a test project before proceeding with the true data. 

## Contributing

This package is in the early stage of its development. Your help is very welcome to improve it! The best way to do so is to fork the repository, edit the code, and send us a pull request.

Most object models and functions in the `R` directory are generated *programmatically* by parsing the API specification and writing the corresponding R code. The functions to do so are in `tools`. Edit those and run them to re-generate the functions in the `R` directory, then generate the documentation with `document()` and then commit.

If a problem comes from the API specification itself (unclear argument, missing default value, missing object definition, etc.), please report it directly to <https://github.com/ecotaxa/ecotaxa_back/issues>.

Thanks in advance for your help!
