# R package to access EcoTaxa's API

An Application Programming Interface is a set of functions that are exposed through the web to trigger actions in a web application. EcoTaxa now has an API and it can trigger *all* the actions that are doable through the web interface. It is documented online at <http://ecotaxa.obs-vlfr.fr/api/docs>. The same documentation is available from R but it may be more convenient to read it online to discover functions and see examples.

## Installation

The package is in development and not on CRAN. To install it, install the `devtools` package and then

```
devtools::install_github("ecotaxa/ecotaxarapi")
```

## Usage

The first step is to log in, since most functions require an EcoTaxa account. This log in action will generate a personal token which you can save so that it can then be used by all subsequent function calls (without having to log in again). This token is confidential and gives all the permissions that you have when you log in with your password on the web. Do not share it!

```
library("ecotaxarapi")
token <- login(LoginReq=LoginReq(password="my_super_password", username="my_login_email@somewhere.org"))
save_api_token(token)
```

NB: this action shows a common pattern in the API calls: the argument to the `login()` function is another function that defines an object of a given type. It is documented so that you can figure out its arguments (`?LoginReq`). It may seem convoluted but is standard practice to check the input arguments for each object. Those objects are often called `***Req` or `***Model`.

Then you are ready to make another api call. For example you can get information about yourself

```
show_current_user()
```

or update this information

```
me <- show_current_user()
update_user(
  user_id=me$id,
  UserModelWithRights(
    # provide id and email again because they are required arguments
    id=me$id,
    email=me$email,
    # change my name
    name="My new fancy name!"
  )
)
show_current_user()
```

## Contributing

This package is in alpha stage. You help is very welcome to improve it. The best way to do so is to fork the repository, edit the code, and send us a pull request.

Most object models and functions in the `R` directory are generated programmatically by parsing the API specification and writing the corresponding R code. The functions to do so are in `tools`. Edit those and run them to re-generate the functions in the `R` directory.

If a problem comes from the API specification itself (unclear argument, missing default value, missing object definition, etc.), please report it directly to <https://github.com/ecotaxa/ecotaxa_back/issues>.

Thanks in advance for your help!
