# Unattended-Access Proof of concept

This is a simple proof of concept for unattended authorisation/authentication.

## Contributing
Contributions to this project are welcome from anyone, providing that they conform to the [guidelines for contribution](https://github.com/NHSDigital/template-api/blob/master/CONTRIBUTING.md) and the [community code of conduct](https://github.com/NHSDigital/template-api/blob/master/CODE_OF_CONDUCT.md).

### Licensing
This code is dual licensed under the MIT license and the OGL (Open Government License). Any new work added to this repository must conform to the conditions of these licenses. In particular this means that this project may not depend on GPL-licensed or AGPL-licensed libraries, as these would violate the terms of those libraries' licenses.

The contents of this repository are protected by Crown Copyright (C).

## Development

### Requirements
* make
* nodejs + npm/yarn
* [poetry](https://github.com/python-poetry/poetry)

## Instructions
Run the commands below to install the necessary dependancies and generate the jwt token which will appear in your output window.

```
$ make install
python program.py
```
#### Call endpoint
To test if the token is valid run the below curl command and replace {token} with the jwt token. If the token is valid the response should return a status code of 200 and a message with the value "success!".

```
curl -i -H "Accept: application/json" -H "Authorization: Bearer {token}" https://internal-dev.api.service.nhs.uk/unattended-access-poc-AMB-117-add-unattended-poc/mockendpoint
```