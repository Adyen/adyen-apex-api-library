# Adyen Apex API Library

> ⚠ **This is a Beta release**

This repository contains the client and the models that are used for the requests/responses for Adyen's Checkout API. 
This library will be used in combination with other Salesforce managed packages from Adyen (e.g. Salesforce B2B Commerce). 

The library supports the following services:
 
* [Checkout API](https://docs.adyen.com/api-explorer/Checkout/64/overview) - Payments: Our latest integration for accepting online payments. Current supported version: **v64**

## Prerequisites
-   [Adyen test account](https://docs.adyen.com/get-started-with-adyen)
-   Access to your [Salesforce org](https://login.salesforce.com/).

## Installation
The package needs to be installed on your Salesforce org as explained on their [docs](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_dev2gp_install_pkg.htm)

## Using the library
After installing the package on your Salesforce org, other managed packages from Adyen will use this library as reference model. 
The requests/responses can be (de)serialized into the models and send to Adyen's API endpoints through the client. 

## Contributing
We encourage you to contribute to this repository, so everyone can benefit from new features, bug fixes, and any other improvements. 
Have a look at our [contributing guidelines](https://github.com/Adyen/.github/blob/master/CONTRIBUTING.md) to find out how to raise a pull request.

## Support
If you have a feature request, or spotted a bug or a technical problem, create a GitHub issue. For other questions, contact our [support team](https://support.adyen.com/hc/en-us/requests/new?ticket_form_id=360000705420).    

## License    
MIT license. For more information, see the LICENSE file.

## See also
* [Adyen docs](https://docs.adyen.com/)
* [API Explorer](https://docs.adyen.com/api-explorer/)

