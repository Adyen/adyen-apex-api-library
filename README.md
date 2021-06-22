# Adyen Apex API Library
  
This repository contains the client and the models that are used for the requests/responses for Adyen's Checkout API. 
This library will be used in combination with other Salesforce managed packages from Adyen (e.g. Salesforce B2B Commerce). 

The library supports the following services:
 
* [Checkout API](https://docs.adyen.com/api-explorer/#/CheckoutService/v64/overview) - Payments: Our latest integration for accepting online payments. Current supported version: **v64**

## Contributing
We strongly encourage you to contribute to our repository. Find out more in our [contribution guidelines](https://github.com/Adyen/.github/blob/master/CONTRIBUTING.md)

## Requirements
It is required to have access to your [Salesforce org](https://login.salesforce.com/).

## Installation
The package needs to be installed on your Salesforce org as explained on their [docs](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_dev2gp_install_pkg.htm)

## Usage
After installing the package on your Salesforce org, other managed packages from Adyen will use this library as reference model. 
The requests/responses can be (de)serialized into the models and send to Adyen's API endpoints through the client. 

## Support
If you have a feature request, or spotted a bug or a technical problem, create a GitHub issue. For other questions, contact our [support team](https://support.adyen.com/hc/en-us/requests/new?ticket_form_id=360000705420).    

## License    
MIT license. For more information, see the LICENSE file.

## See also
* [Adyen docs](https://docs.adyen.com/)
* [API Explorer](https://docs.adyen.com/api-explorer/)