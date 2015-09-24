## SC 7 Practice Example
You have been tasked with creating a system that manages used cellphone sales. Create a Rails application that manages cellphones in a used phone store. Write acceptance tests that guide development of the application to satisfy the following user stories:

###User Story
As a used cellphone salesperson
I want to record a cellphone manufacturer
So that I can keep track of the types of cellphones sold in my store

Acceptance Criteria:
- I must specify a manufacturer name and country.
- If I do not specify the required information, I am presented with errors.
- If I specify the required information, the manufacturer is recorded and I am redirected to the index of manufacturers

###User Story
As a used cellphone salesperson
I want to record a newly acquired cellphone
So that I can list it in my store

Acceptance Criteria:
- I must specify the cell phone manufacturer, year and battery life (an association between the phone and an existing manufacturer should be created).
- Only years from 2003 and above can be addedd.
- I can optionally specify a description of the phone.
- If I enter all of the required information in the required formats, the phone is recorded and I am presented with a notification of success.
- If I do not specify all of the required information in the required formats, the phone is not recorded and I am presented with errors.
- Upon successfully creating a phone, I am redirected back to the index of phones.


####Notes
- User authentication is NOT required
- Do not nest routes
- Make sure tests pass
- Make sure that your app is usable by providing links to navigate between the different pages.
- Make sure that your database has any necessary constraints.
- Make sure that your models contain any necessary validations and associations.
