# Pirsch Analytics [UNOFFICIAL]
**Custom Tag Template for server-side Google Tag Manager**

Send events from server-side GTM to Pirsch Analytics using the Pirsch Analytics API 

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/mbaersch/templates/pirsch-tag-server) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/pirsch-tag-server) ![License](https://img.shields.io/github/license/mbaersch/pirsch-tag-server)

---

## Usage
Install the tag template and add a new *Pirsch Analytics* tag. Check the URL for the API endpoint in case a newer version might be available - otherwise keep the standard URL. 

### Single Access Token
The [API requires](https://docs.pirsch.io/api-sdks/api/#getting-an-access-token) a token in order to send pageviews and events to your dashboard. In order to obtain a token, go to *Settings > Developer* and click *Add Client* to create a token. Pick *Access Token* as *type*, add a description and click *Create Client* to save and see your client secret. Copy this value and paste it in the *Single Access Token* field in the tag configuration. 1 

### Add Event Metadata
Pirsch can process additional [event metadata](https://docs.pirsch.io/api-sdks/api/#sending-an-event). Use the table to define keys and values for additional data you want to send. Keep in mind that sending personal data is not allowed! 

### Advanced Settings
This section contains additional options that allows enhanced data redaction. You can optionally send an empty referrer and delete any parameters from tracked urls. 

#### Overriding Page URLs
If you want to change URLs before they get sent, you can override the page path with a different value. This option also can be used for further data redaction or enrichment.

#### Change Event Names
Every event name can be translated for Pirsch using an optional override field. You can for example set the new event name with a lookup table. 