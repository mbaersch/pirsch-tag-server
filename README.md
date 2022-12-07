# Pirsch Analytics (pirsch-tag-server)
Pirsch Analytics - Custom Tag Template for Server-Side Google Tag Manager

## Usage
Install the tag template and add a new *Pirsch Analytics* tag. Check the URL for the API endpoint in case a newer version might be available - otherwise keep the standard URL. 

### Single Access Token
The [API requires](https://docs.pirsch.io/api-sdks/api/#getting-an-access-token) a token in order to send pageviews and events to your dashboard. In order to obtain a token, go to *Settings > Developer* and click *Add Client* to create a token. Pick *Access Token* as *type*, add a description and click *Create Client* to save and see your client secret. Copy this value and paste it in the *Single Access Token* field in the tag configuration. 1 

### Add Event Properties
Pirsch can process additional [event metadata](https://docs.pirsch.io/api-sdks/api/#sending-an-event). Use the table to define keys and values for additional data you want to send. Keep in mind that sending personal data is not allowed! 

### Advanced Settings
This section contains additional options that allows enhanced data redaction. You can optionally send an empty referrer and delete any parameters from tracked urls. 

#### Overriding Page Path
If you want to collect data from several sources in different paths of the same profile, you can override the page path with a different value. This option also can be used for further data redaction or enrichment.

### Change Event Names
Every event name can be translated for Pirsch using an optional override field. You can for example set the new event name with a lookup table. 