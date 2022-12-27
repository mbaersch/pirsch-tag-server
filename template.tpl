___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Pirsch Analytics",
  "brand": {
    "id": "mbaersch",
    "displayName": "mbaersch",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAIAAAD8GO2jAAADDklEQVR42rVWS0hqQRjOvBU91QyioGghSYtCQcRFi4rSnQUtch24zzaJUPtc2kpwk2EZJr0IKgrdZNQmRRchFElPi65at3dWHw7IuTp6j3r9F4d/5sz838z3v4ZTVVVVUkwpLap1CLesrCx9dnx8vKenh8/n393dvb6+ZjxdaSkIiMfj39/fmdZwqBTZbDaxWIxt9/f3S0tL8/Pzz8/Pf23jcAYGBkZGRhoaGm5ububm5vb29qgw9BsMDw9jJ6wAXiaTSSSS/f19JoZarZ6cnGxubq6rq8O3r6/v9PT07OwsTx9IpdLp6enq6moyrKysHB0dZZ6svLxcq9WCMbYAOHvKTFdXF4wSXSgU1tfXpyxobGzk8XhsAdLZBOTQ0JBAIID++PiY4hLIn4TkSRER0K1QKKDEYrHNzU3mIb6+vtbW1j4+PgoCwCVAFNHNZrPD4Xh5efn8/Hx6ekIUWa1W6q5f7AEgTU1NRIFpo9FosVhA/fX1dTQazbQlN4CUOPmdkOxbcgO4vLxMIa29vR2JIhKJFhcXj4+PCwKAV4+OjpLDzs5OBK5cLq+oqMDQ7XYXCnB7e4t6QA4+ODio0+mSqfcfKEIgzs7OImCgK5XKiYkJao1JF7ZhurGx4XQ6SxKBxN46qxugGsO0yWSCgqFGo6mtrWVPbDaA9/f3k5MTMONyuYh1sK9SqdIrVc4AdrsdFoPBICowcjU539LSgjLO3npGgPX1deo86mhO1rNRhMKJNsDlcn0+HwKUTFLLWT4A/f39er2e1HcU4ZmZmeXlZSQaMhnfnHxACdPW1laDwYCOz0kIYgY51dHRgV+RSITaF0toPSojQHd3N0o/cwY9sre3l+grKyvU5p7pYUEBoBaAmpoaoqyurp6fnxdEkd/vJ1HPFK/XSxS4ZGpq6uHhIX+Aw8PDra0t5pV3d3eRa8lhIBAYGxu7urpiA0B5F8G0x+NBwMBvFxcXCwsLaJBvb2/MNeFweGdnB68VdDR4CCu3t7dDoVA6AKfAxy+Cra2tDW3n4OCgKAD/lKK/rn8AwbhQcyLKTO8AAAAASUVORK5CYII\u003d"
  },
  "description": "Send pageviews or events to Pirsch (pirsch.io)",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "groupSettings",
    "displayName": "Pirsch Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "endpointUrl",
        "displayName": "Endpoint URL",
        "simpleValueType": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "defaultValue": "https://api.pirsch.io/api/v1",
        "help": "Enter API endpoint URL without trailing slash. Note: the path /hit or /event will be added to this URL according to the request type"
      },
      {
        "type": "TEXT",
        "name": "token",
        "displayName": "Single Access Token",
        "simpleValueType": true,
        "help": "Enter a not expiring \"Single Access Token\" for sending events and pageviews. See Pirsch documentation or README for this template on Github for more details",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "timeout",
        "displayName": "Timeout (ms)",
        "simpleValueType": true,
        "defaultValue": 1000,
        "valueValidators": [
          {
            "type": "POSITIVE_NUMBER"
          },
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "groupProperties",
    "displayName": "Event Metadata",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "PARAM_TABLE",
        "name": "propsTable",
        "displayName": "Add Custom Event Metadata",
        "paramTableColumns": [
          {
            "param": {
              "type": "TEXT",
              "name": "key",
              "simpleValueType": true
            },
            "isUnique": true
          },
          {
            "param": {
              "type": "TEXT",
              "name": "value",
              "displayName": "",
              "simpleValueType": true
            },
            "isUnique": false
          }
        ],
        "help": "Define additional data to send in case an event (not a page_view) is processed. Pageviews can not contain additional metadata."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "groupAdvanced",
    "displayName": "Advanced Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "deleteReferrer",
        "checkboxText": "Do Not Send Referrer",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "setUrl",
        "checkboxText": "Override Page URL",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "setUrlVar",
        "displayName": "Page URL",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setUrl",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "setEvent",
        "checkboxText": "Override Event Name",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "setEventVar",
        "displayName": "Event Name",
        "simpleValueType": true,
        "enablingConditions": [
          {
            "paramName": "setEvent",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

/**
 * @description Custom server-side Google Tag Manager Tag Template 
 * Send events to Pirsch Analytics
 * @version 1.0.1
 * @see {@link https://github.com/mbaersch|GitHub} for more info
 * @see {@link https://pirsch.io/|Pirsch Homepage}
 */

const getAllEventData = require('getAllEventData');
const sendHttpRequest = require('sendHttpRequest');
const getRemoteAddress = require('getRemoteAddress');
const getRequestHeader = require('getRequestHeader');
const makeInteger = require('makeInteger');
const JSON = require('JSON');

const eventData = getAllEventData();
let url = eventData.page_location;
if (data.setUrl === true && data.setUrlVar) url = data.setUrlVar;

if (url) {

  let serviceUrl = data.endpointUrl;
  const name = eventData.event_name || "";
  const ref = data.deleteReferrer === true ? "" : eventData.page_referrer || "";
  
  let pirschEvent = {
    url: url,
    ip: eventData.ip_override || getRemoteAddress(),
    user_agent: eventData.user_agent || getRequestHeader("user-agent"),
    accept_language: getRequestHeader("Accept-Language"),
    title: eventData.page_title,
    screen_width: makeInteger((eventData.screen_resolution || "1280x800").split('x')[0]) || 1280,
    screen_height: makeInteger((eventData.screen_resolution || "1280x800").split('x')[1]) || 800
  };
    
  if (ref !== "")
    pirschEvent.referrer = ref;
  
  //add event data?
  if (name !== "page_view") {
    pirschEvent.event_name = eventData.event_name;
    serviceUrl += "/event";
    //add props
    if (data.propsTable && data.propsTable.length > 0) {
      let meta = {};
      data.propsTable.forEach(x => { 
        if (x.value) meta[x.key] = x.value;
      });
      pirschEvent.event_meta = meta;
    }  
  } else
    serviceUrl += "/hit";
  
  sendHttpRequest(
    serviceUrl, (statusCode) => {
      if (statusCode >= 200 && statusCode < 300) data.gtmOnSuccess();
      else data.gtmOnFailure(); 
    }, 
    { 
      headers: {
       'Authorization': 'Bearer ' + data.token,
       'content-type': 'application/json' 
      }, 
      method: 'POST', 
      timeout: data.timeout||1000
    }, 
    JSON.stringify(pirschEvent)
  );

} else 
  data.gtmOnFailure();


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "remoteAddressAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 7.12.2022, 05:01:54
