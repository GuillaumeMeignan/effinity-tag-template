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
  "displayName": "Effinity Transaction Tag Template",
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "id",
    "displayName": "id : Identifiant du compte",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "monnaie",
    "displayName": "monnaie : Devise de la commande",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "montant",
    "displayName": "montant : Montant de la commade (décimal)",
    "simpleValueType": true,
    "help": "Montant de la commande hors taxes et hors frais de port.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "ref",
    "displayName": "ref : Référence unique de la commande",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "id_compteur",
    "displayName": "id_compteur : Identifiant de tracking",
    "simpleValueType": true,
    "help": "Identifiant unique de l’éditeur responsable de la transaction"
  },
  {
    "type": "TEXT",
    "name": "consent_performance",
    "displayName": "consent_performance : Consentement de l\u0027internaute aux cookies",
    "simpleValueType": true,
    "help": "1 si l’internaute a accepté le consentement aux cookies ; Sinon 0",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "payment",
    "displayName": "payment : Mode de règlement de la commande",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "newcustomer",
    "displayName": "newcustomer : Nouveau client ?",
    "simpleValueType": true,
    "help": "1 pour un nouveau client ; 0 pour un ancien client."
  },
  {
    "type": "TEXT",
    "name": "voucher",
    "displayName": "voucher : Code de réduction utilisé lors de la commande",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "date",
    "displayName": "date : Date de la transaction déclarée",
    "simpleValueType": true,
    "help": "yyyy-MM-dd ou yyyyMMddThhmmss (T n’est pas dynamique)"
  },
  {
    "type": "TEXT",
    "name": "effi_id",
    "displayName": "effi_id : Identifiant de tracking personnalisé",
    "simpleValueType": true,
    "help": "Premier paramètre utilisable, généré par les éditeurs et intégré à l’url"
  },
  {
    "type": "TEXT",
    "name": "effi_id2",
    "displayName": "effi_id2 : 2nd identifiant de tracking personnalisé",
    "simpleValueType": true,
    "help": "Deuxième paramètre utilisable, généré par les éditeurs et intégré à l’url"
  },
  {
    "type": "TEXT",
    "name": "prod_id",
    "displayName": "prod_id : Identifiant unique du produit",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "attrib",
    "displayName": "attrib : Attribution de la commande",
    "simpleValueType": true,
    "help": "0 : Effinity n\u0027est pas présent dans la chaîne de conversion ; 1: Effinity est présent mais n\u0027est pas LastClick ; 2 : Effinity est le levier LastClick"
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "refs",
    "displayName": "ref* : Paramètres additionnels",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Paramètres",
        "name": "key",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "ref2",
            "displayValue": "ref2"
          },
          {
            "value": "ref3",
            "displayValue": "ref3"
          },
          {
            "value": "ref4",
            "displayValue": "ref4"
          },
          {
            "value": "ref5",
            "displayValue": "ref5"
          },
          {
            "value": "ref6",
            "displayValue": "ref6"
          },
          {
            "value": "ref7",
            "displayValue": "ref7"
          },
          {
            "value": "ref8",
            "displayValue": "ref8"
          },
          {
            "value": "ref9",
            "displayValue": "ref9"
          },
          {
            "value": "ref10",
            "displayValue": "ref10"
          },
          {
            "value": "ref11",
            "displayValue": "ref11"
          },
          {
            "value": "ref12",
            "displayValue": "ref12"
          },
          {
            "value": "ref13",
            "displayValue": "ref13"
          },
          {
            "value": "ref14",
            "displayValue": "ref14"
          },
          {
            "value": "ref15",
            "displayValue": "ref15"
          },
          {
            "value": "ref16",
            "displayValue": "ref16"
          },
          {
            "value": "ref17",
            "displayValue": "ref17"
          },
          {
            "value": "ref18",
            "displayValue": "ref18"
          },
          {
            "value": "ref19",
            "displayValue": "ref19"
          },
          {
            "value": "ref20",
            "displayValue": "ref20"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Valeurs",
        "name": "value",
        "type": "TEXT"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

const sendHttpGet = require('sendHttpGet');

var url = 'https://track.effiliation.com/servlet/effi.revenuemobile?';

var effinityParameters = [
  'id',
  'monnaie',
  'montant',
  'ref',
  'id_compteur',
  'consent_performance',
  'payment',
  'newcustomer',
  'voucher',
  'date',
  'effi_id',
  'effi_id2',
  'prod_id',
  'attrib'
];

effinityParameters.forEach((parameter, index) => {
  const key = parameter;
  const value = data[key];
  
  if (value) {
    url = url + key + '=' + value + '&';
  }
});

if (data.refs.length) {
  data.refs.forEach((ref, index) => {
    const key = ref.key;
    const value = ref.value;

    if (value) {
      url = url + key + '=' + value + '&';
    }
  });
}

// Delete last & character
url = url.slice(0, -1);

sendHttpGet(url, {
  headers: {},
  timeout: 500,
});

data.gtmOnSuccess();


___SERVER_PERMISSIONS___

[
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
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 24/06/2022 14:19:41


