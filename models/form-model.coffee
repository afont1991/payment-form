'use strict'

mongoose = require 'mongoose'

Schema = mongoose.Schema

FormSchema = Schema

  template:
    type: String
    required: true

  company_id:
    type: String
    required: true

  company_name:
    type: String
    required: true

  stripe_info:
    type: [String]
    required: true

  timestamp:
    type: Date
    default: Date.now


module.exports = mongoose.model 'Form', FormSchema