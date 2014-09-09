'use strict'

_ = require 'lodash'
config = require('environmental-configuration')('./config')
mongoose = require 'mongoose'

exports.pay = (req, res, next) ->
  res.json "it worked"
### !=== Example below was used to send emails in another project ===! ###
# ====================================== #
#   obj =
#     to: req.body.to
#     cc: req.body.cc if req.body.cc
#     bcc: req.body.bcc if req.body.bcc
#     from: config.fromEmail
#     template: req.body.template
#     subject: req.body.subject
#     data: {}
#   if req.body.data
#     _.forIn req.body.data, (value, key) ->
#       obj.data[key] = value
#   emailClient.send obj, (err, response) ->
#     if err
#       resp =
#         status: 'Error'
#         message: response
#       res.json resp          
#     else
#       resp =
#         status: 'ok'
#         message: response
#       res.json resp
# else
#   resp =
#     status: 'error'
#     message: 'Please Format [to] as an array'
#   res.json resp
# ====================================== #

exports.view = (req, res, next) ->
  res.json 'it also worked'
  id = req.params.id
  ### !=== Example below was used to render emails ===! ###
  # ====================================== #
  # emailClient.render id, (err, response) ->
  #   if response is null or err
  #     resp =
  #       status: 'Error'
  #       message: 'Email ID incorrect'
  #     res.json resp         
  #   else
  #     resp =
  #       status: 'ok'
  #       message: response.html
  #     res.send response.html
  # ====================================== #





