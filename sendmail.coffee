nodemailer = require 'nodemailer'
{myEmail,service,host,port,secure,pass} = require './config.coffee'


class EMailer

  constructor: (funcOpts={}) ->
    {@myEmail=myEmail,@service=service,@host=host,@port=465,secure=true} = funcOpts


  # message is {from,to,subject,text}
  send: (message) ->
    transport = nodemailer.createTransport({@service,@host,@port,@secure,auth:{user:@myEmail,pass}})
    {subject,text} = message
    transport.sendMail message, (err)->
      if err?
        console.log({mail: subject, err})
        return
      else
        console.log({mail: subject, sent:'successfully'})








module.exports = EMailer