# 先將本文件另存為 message.coffee
# 然後修改下面郵件部分,console中,執行命令
# `coffee ./message.coffee`
EMailer = require './sendmail'

email = new EMailer()
#console.log({email})

# 只需修改以下內容即可發郵件. from 後面的發件郵箱需要跟config裡面使用的服務器屬於同一家,不然會有麻煩
email.send
  from: 'youname@163.com'
  to: 'address of receiver'  #such as 'sunmoonlotus@groups.163.com'
  subject: 'hello, mailinglist'
  text: 'this is a greeting from me'


