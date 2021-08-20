local function Gohelp(msg)
local text = msg.content_.text_

if text == 'تست' then
local Text = [[
🥀اطفي النور واستمتع بلعبه •
]]
keyboard = {} 
keyboard.inline_keyboard = {
{
{text = 'حسنا', callback_data="/may"},
},
}
local msg_id = msg.id_/2097152/0.5
https.request("https://api.telegram.org/bot"..token..'/sendPhoto?chat_id=' .. msg.chat_id_ .. '&photo=https://t.me/Qtdao/37&caption=' .. URL.escape(Text).."&reply_to_message_id="..msg_id.."&parse_mode=markdown&disable_web_page_preview=true&reply_markup="..JSON.encode(keyboard))
end
--------------------------------------------------------------------------------------------------------------
function tdcli_update_callback(data)  -- clback
if data.ID == "UpdateChannel" then 
if data.channel_.status_.ID == "ChatMemberStatusKicked" then 
bot_data:srem(ban_id..'Chek:Groups','-100'..data.channel_.id_)  
end
end
if data.ID == "UpdateNewCallbackQuery" then
local Chat_id = data.chat_id_
local Msg_id = data.message_id_
local msg_idd = Msg_id/2097152/0.5
local Text = data.payload_.data_
Ok_id  = Text:match("(%d+)")  
if Text == 'okCaptcha'..data.sender_user_id_ then  
DeleteMessage(Chat_id, {[0] = Msg_id}) 
return https.request("https://api.telegram.org/bot" .. token .. "/restrictChatMember?chat_id=" .. Chat_id .. "&user_id="..Ok_id .. "&can_send_messages=True&can_send_media_messages=True&can_send_other_messages=True&can_add_web_page_previews=True")
end
if Text == '/may' then
local Teext =[[
ᴘʀᴏɢʀᴀᴍᴍᴇʀ ᴘᴀɴᴅᴀ
 ᴛᴏ ᴄᴏᴍᴍụɴɪᴄᴀᴛᴇ ᴛᴏɢᴇᴛʜᴇʀ, 
ғᴏʟʟᴏᴡ ᴛʜᴇ ʙụᴛᴛᴏɴѕ ʟᴏᴡᴇʀ  
:- @QSban 𝅘𝅥𝅯
]]
keyboard = {} 
keyboard.inline_keyboard = {
{{text = 'Ᏼ Ꭺ Ν Ꭰ Ꭺ~"𖥕𝖋_𝖔𝖋𝖋🇬🇺',url="t.me/Q_0_ll"}},
{{text = '•الــقــنــوات♪', callback_data="/Ajobanf"},{text = '•الــبــارات♪', callback_data="/banfai"}},  
{{text = '•الــبــوتــات♪', callback_data="/gqjik"}},
}
return https.request("https://api.telegram.org/bot"..token..'/editMessagecaption?chat_id='..Chat_id..'&caption='..URL.escape(Teext)..'&message_id='..msg_idd..'&disable_web_page_preview=true&reply_markup='..JSON.encode(keyboard))  
end

end
if data.ID == "UpdateNewMessage" then  -- new msg
msg = data.message_
text = msg.content_.text_
end
return {
VENOM = Gohelp
}
