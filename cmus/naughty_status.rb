#!/usr/bin/env ruby
# encoding: UTF-8

# Hash contains:
#{
#    "status"=>"playing",
#    "file"=>"/my/music/path.mp3",
#    "artist"=>"Some Artist",
#    "album"=>"Some Album",
#    "tracknumber"=>"0",
#    "title"=>"Some song",
#    "date"=>"2000",
#    "duration"=>"288"
#}
i = Hash[ARGV.each_slice(2).to_a]

# process variables that need it
artist      = i['artist']
album       = i['album']
title       = i['title']
status      = i['status']
file        = i['file']
tracknumber = i['tracknumber']

if status == 'playing'
then
    notification_title = title || file
    notification_text = ""
    notification_text += "\\n" if artist and notification_text != ""
    notification_text += "by: #{artist}" if artist
    notification_text += "\\n" if album and notification_text != ""
    notification_text += "from: #{album}" if album
    notification_text += " / #{tracknumber}" if album and tracknumber
    notification_screen = 1

    naughty_command = %Q<naughty.notify({title="#{notification_title}", text="#{notification_text}", timeout=9, screen=#{notification_screen},>
    naughty_command += %Q<})>

    sleep(3)
    IO::popen('awesome-client -', 'w'){|io| io << naughty_command}

end
