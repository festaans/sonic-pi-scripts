#SonicPi script - Marble Machine

#Wintergatan - Marble Machine (music instrument using 2000 marbles)
#https://www.youtube.com/watch?v=IvUU8joBb1Q

#v0.0.1

#INSTRUMENTS
#vibraphone
define :egb do
  play 64 #, sustain: 0.2 #E
  play 67 #, sustain: 0.2 #G
  play 71 #, sustain: 0.2 #B
  sleep 0.2
end
define :gba do
  play 55 #, sustain: 0.2 #G
  play 59 #, sustain: 0.2 #B
  play 62 #, sustain: 0.2 #D
  sleep 0.2
end
define :bdfs do
  play 59 #, sustain: 0.2 #B
  play 62 #, sustain: 0.2 #D
  play 66 #, sustain: 0.2 #F#
  sleep 0.2
end
define :deg do
  play 62 #, sustain: 0.2 #D
  play 64 #, sustain: 0.2 #E
  play 66 #, sustain: 0.2 #G
  sleep 0.2
end
define :dfsa do
  play 62 #, sustain: 0.2 #D
  play 66 #, sustain: 0.2 #F#
  play 69 #, sustain: 0.2 #A
  sleep 0.2
end
define :aga do
  play 81 #, sustain: 0.2 #A
  sleep 0.2
  play 79 #, sustain: 0.2 #G
  sleep 0.2
  play 81 #, sustain: 0.2 #A
  sleep 0.2
end
define :vibraphone do
  play 88 #, sustain: 0.6 #E
  sleep 0.6
  egb
  play 83 #, sustain: 0.6 #B
  sleep 0.6
  egb
  aga #AGA
  egb
  play 83 #, sustain: 0.4 #B
  sleep(0.4)
  play 79 #, sustain: 0.2 #G
  sleep(0.2)
  play 81 #, sustain: 0.2 #A
  egb
  play 86 #, sustain: 0.2 #D6
  sleep 0.6
  play 74 #, sustain: 0.2 #D5
  gba
  play 83 #, sustain: 0.6 #B
  sleep(0.6)
  gba
  aga
  gba
  play 78 #, sustain: 0.4 #F#
  sleep 0.4
  play 79 #, sustain: 0.2 #G
  sleep 0.2
  play 81 #, sustain: 0.2 #A
  gba
  play 86 #, sustain: 0.6 #D
  sleep 0.6
  play 78 #, sustain: 0.4 #F#
  bdfs
  play 83 #, sustain: 0.4 #B
  sleep 0.6
  bdfs
  play 86 #, sustain: 0.2 #D
  sleep 0.2
  play 84 #, sustain: 0.2 #C
  sleep 0.2
  play 83 #, sustain: 0.2 #B
  sleep 0.2
  bdfs
  play 81 #, sustain: 0.2 #A
  sleep 0.4
  play 79 #, sustain: 0.2 #G
  sleep 0.2
  play 81 #, sustain: 0.2 #A
  bdfs
  play 76 #, sustain: 0.2 #E
  sleep 0.4
  play 72 #, sustain: 0.2 #C
  sleep 0.2
  play 76 #, sustain: 0.2 #E
  deg
  play 83 #, sustain: 0.6 #B
  sleep 0.2
  play 71 #, sustain: 0.6 #B
  sleep 0.2
  play 72 #, sustain: 0.2 #C
  sleep 0.2
  play 74 #, sustain: 0.2 #D
  deg
  play 86 #, sustain: 0.2 #D
  sleep 0.2
  play 84 #, sustain: 0.2 #C
  sleep 0.2
  play 83 #, sustain: 0.2 #B
  sleep 0.2
  dfsa
  play 81 #, sustain: 0.2 #A5
  sleep 0.4
  play 79 #, sustain: 0.2 #G5
  sleep 0.2
  play 81 #, sustain: 0.2 #A5
  dfsa
end
#snare
define :snare do
  sleep 0.6
  sample :drum_snare_hard, amp: 0.4
  sleep 0.2
end
#-------------------Song
in_thread do
  2.times do
    vibraphone
  end
end
##
#in_thread do
#  sleep 12.8
#  32.times do
#    snare
#  end
#end
#in_thread do
#  2.times do
#    sleep 12.8
#    sample :drum_splash_hard
#  end
#end
