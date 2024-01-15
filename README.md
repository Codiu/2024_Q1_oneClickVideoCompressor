oneClickConverter is made, because the videos I sent to Telegram on PC, are sent as is, without compression. I need quicker solution then HandBrake, so I made scripts, where I put all my knowledge of conversion, to combine speed/quality/size to output optimal results for each scenario.

To make it work, do the following:
  1. download HandBrakeCLI from Handbrake site https://handbrake.fr/downloads2.php
  2. put it in src folder

Ready to work. Put any video file in folder and run any preset

#1 HQ - for camera footage. Best quality and stereo sound
#2 compactor - video from desktop, or not important ones. Quick compression, lower quality, mono sound
#3 compactorIOS - same as #2, but for IOS. (#2 not working on Apple devices, due to AV1 codec is too modern)
