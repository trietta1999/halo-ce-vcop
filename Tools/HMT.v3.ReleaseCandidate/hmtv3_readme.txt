                 ÚÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÚ
                 :::                                        :::
                 ³³³   888    888 888b     d888 888888888   ³³³
                 ³³³   888    888 8888b   d8888    888      ³³³
                 ³³³   888    888 88888b.d88888    888      ³³³
                 ³³³   8888888888 888Y88888P888    888      ³³³
                 ³³³   888    888 888 Y888P 888    888      ³³³
                 ³³³   888    888 888  Y8P  888    888      ³³³
                 ³³³   888    888 888   "   888    888      ³³³
                 ³³³   888    888 888       888    888      ³³³
                 :::                                        :::
                 ÀÄÄÄÄÄÙÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÚÚÙ
                       __   __          _            ____
                       \ \ / /__ _ _ __(_)___ _ _   |__ /
                        \ V / -_) '_(_-< / _ \ ' \   |_ \
                         \_/\___|_| /__/_\___/_||_| |___/
        
                           . . By Monoxide and tjc . .


 ÚÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
 ÚÙ                          Halo Map Tools: Overview                        ÚÙ
 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÙ
 °³                                                                          °³
 °³ Halo Map Tools, currently at version 3.0, is a hacking tool for Bungie's °³
 °³ masterpiece first person shooter - Halo:Combat Evolved.  HMT currently   °³
 °³ supports all versions of the game.  These include:                       °³
 °³                                                                          °³
 °³ - Xbox, PC Retail, PC Beta, and PC Demo                                  °³
 °³                                                                          °³
 °³ HMT has grown from a simple sound injector to a very complex app that    °³
 °³ performs a wide variety of tasks.  In Version 3, I have teamed up with   °³
 °³ tjc, a very talented programmer and hacker, to provide more cutting edge °³
 °³ features.                                                                °³
 °³                                                                          °³
 °³ [Current Feature Set as of Version 3]                                    °³
 °³                                                                          °³
 °³ - Injection and Extraction of all Halo Resource Files                    °³
 °³   This includes compressed and uncompressed texures, ADPCM and OGG       °³
 °³   sound files, and *NEW* Models.                                         °³
 °³                                                                          °³
 °³ - *NEW* XML-plugin Based Tag Editor                                      °³
 °³   This allows for easily extensible editing of a wide variety of game    °³
 °³   resources (metadata)  The current plugin set supports editing of       °³
 °³   Vehicles, Projectiles, Bipeds, Damage, Game Globals, Physics, Camera   °³
 °³   Tracks, and Weapons.                                                   °³
 °³                                                                          °³
 °³ - Batch Resource Extraction of all resource files and metadata           °³
 °³                                                                          °³
 °³ - *NEW* Metadata Import/Export with automatic ident and reflexive        °³
 °³   offset correction.                                                     °³
 °³                                                                          °³
 °³ - Object Placement and Player Spawn editing                              °³
 °³   Allows modification of coordinates, rotation, and object types         °³
 °³                                                                          °³
 °³ - Easy Offset Swapping                                                   °³
 °³                                                                          °³
 °³ - Search Functions                                                       °³
 °³   Locate by Meta Offset, Locate By ID                                    °³
 °³                                                                          °³
 °³ - *NEW* Map Rebuilding                                                   °³
 °³   Allows you to rebuild a map from resource files, allowing for easy     °³
 °³   additions and deletions of resources from a file.  This can be used    °³
 °³   easily move things from single player maps to multiplayer maps         °³
 °³                                                                          °³
 ÚÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
 ÚÙ                           General Instructions                           ÚÙ
 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÙ
 °³                                                                          °³
 °³ Note - This app requires the .net framework.  It can be downloaded from  °³
 °³ Microsoft via Windows Update or directly from their website.             °³
 °³ http://msdn.microsoft.com/netframework/downloads/howtoget.aspx           °³
 °³                                                                          °³
 °³ HMT is fairly simple to use - just open a map and select a resource from °³
 °³ the resource browser.  If it has a dedicated plugin or an XML plugin, it °³
 °³ will load and you will be able to edit certain properties and/or extract °³
 °³ resources depending on the type of tag.                                  °³
 °³                                                                          °³
 °³ Map Rebuilding: This feature requires a little basic knowledge to use    °³
 °³ effectively.  Follow these steps in order to rebuild a map.              °³
 °³                                                                          °³
 °³ 1. Into it's own folder, batch extract the multiplayer map that you wish °³
 °³    to modify.                                                            °³
 °³ 2. Open the map that you which to extract resources from and choose      °³
 °³    "Extract Meta" after selecting the proper tag.  If you would like to  °³
 °³    automatically extract all dependencies as well, check the "Recursive" °³
 °³    box.  Choose a folder to extract the files to.                        °³
 °³ 3. Copy the extracted files/folders to the folder you extracted the      °³
 °³    multiplayer map to.  Overwrite any existing files.                    °³
 °³ 4. Choose "Rebuild Map" from the menu, and choose the Original Map (this °³
 °³    is the original multiplayer map that you batch extracted earlier)     °³
 °³    *Note that the original map MUST be in the same folder as the batch   °³
 °³    extracted files.                                                      °³
 °³ 5. Choose "yes" when prompted if you want to auto fill in the other      °³
 °³    filenames.                                                            °³
 °³ 6. Now add any new files you wnat to add to the rebuild to the list at   °³
 °³    the bottom.  For example, if you want to add the Sentinal Beam weapon °³
 °³    you would choose the Sentinal Beam.proj.meta file from the proper     °³
 °³    folder.  Note, that you only have to add the parent tag - any         °³
 °³    dependencies will be added automatically during the build.            °³
 °³ 7. Now, click Rebuild and wait for it to finish.  Once it has completed  °³
 °³    the rebuild, you will have a new map file in the folder named         °³
 °³    OriginalMapName.map.rebuild.map.                                      °³
 °³ 8. Copy this file to your Halo\MAPS\ folder, rename it to replace the    °³
 °³    appropriate map, and enjoy ;)                                         °³
 °³                                                                          °³
 °³ [Notice about bugs in certain plugins]                                   °³
 °³ tjc recently decided to leave the Halo Modding scene.  He is the         °³
 °³ author of the XML and Model plugins for HMT, and he has left them in an  °³
 °³ unfinished state.  Because of this, you will undoubtedly notice bugs     °³
 °³ with these plugins.  I plan on fixing these problems eventually, but     °³
 °³ rather than hold off on the release, I've decided to address the issues  °³
 °³ in a future release. They are still very usable, but you may find some   °³
 °³ annoynaces.  Please don't come crying or talking trash about the fact    °³
 °³ that these plugins have problems!  They will be fixed - do you really    °³
 °³ wanna wait and have nothing until then? :)                               °³
 °³                                                                          °³
 ÚÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
 ÚÙ                           Greetings and Thanks                           ÚÙ
 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÙ
 °³                                                                          °³
 °³ There have been a lot of people who have contributed to this project     °³
 °³ over time.  I'd like to give thanks to a few of them individually.       °³
 °³                                                                          °³
 °³ [Defenderz] Defenderz left Halo hacking shortly after I joined it but if °³
 °³ anyone deserves credit for being the "father of Halo hacking" it's him.  °³
 °³ A good portion of the most important discoveries were made by Defenderz, °³
 °³ and without him, we wouldn't be where we're at now.  Thanks man,         °³
 °³ wherever you are.                                                        °³
 °³                                                                          °³
 °³ [tjc] tjc had joined the HMT project recently to help provide more       °³
 °³ functionalilty.  Unfortunately, due to personal reasons, he has decided  °³
 °³ to leave the scene and will not be taking part in future HMT efforts.    °³
 °³ Thanks for your contributions tjc.. you will be missed by all of us...   °³
 °³                                                                          °³
 °³ [Iron_Forge] Map rebuilding would have never seen the light of day       °³
 °³ without the massive amount of help Iron_Forge gave me in the form of     °³
 °³ debugging, testing, and hardcore reverse-engineering.  There were many   °³
 °³ times that I was completely stuck and was only able to progress because  °³
 °³ of his help. He's also one of the few people in the scene that I really  °³
 °³ consider a friend, and he has provided me hours of good conversation     °³
 °³ throughout this project and has helped me to stay motivated.  So thanks  °³
 °³ Forge! ;oP                                                               °³
 °³                                                                          °³
 °³ [Grenadiac]  While gren hasn't actually contributed to HMT, his awesome  °³
 °³ app - SparkEdit - has really helped to expand the scene and has inspired °³
 °³ me to make Halo Map Tools the best that it can be.  Watch for future     °³
 °³ versions of SE, as it just keeps getting better and better.              °³
 °³                                                                          °³
 °³ There are many others who have contributed to the scene in one way or    °³
 °³ another.  Although I rarely see him these days I also wanna thank        °³
 °³ Pfhorslayer for bringing everyone together for this project and doing a  °³
 °³ ton of work that has helped all of us.                                   °³
 °³                                                                          °³
 °³ Also, thanks to the HMT Beta team.                                       °³
 °³ You guys were a huge help in getting things ready for release.           °³
 °³                                                                          °³
 °³ I hope everyone enjoys HMT.V3 and I can't wait to see some of the        °³
 °³ awesome new mods that are created using it.                              °³
 °³                                                                          °³
 °³ Have fun and read the manual before you ask questions!                   °³
 °³ -Monoxide                                                                °³
 °³                                                                          °³
 ÚÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
 ÚÙ  Send questions, comments, and bug reports to HaloMapTools@hotmail.com   ÚÙ
 ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙÙ