                 縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴코
                 :::                                        :::
                 납?   888    888 888b     d888 888888888   납?
                 납?   888    888 8888b   d8888    888      납?
                 납?   888    888 88888b.d88888    888      납?
                 납?   8888888888 888Y88888P888    888      납?
                 납?   888    888 888 Y888P 888    888      납?
                 납?   888    888 888  Y8P  888    888      납?
                 납?   888    888 888   "   888    888      납?
                 납?   888    888 888       888    888      납?
                 :::                                        :::
                 읕컴컴牡컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴코粕
                       __   __          _            ____
                       \ \ / /__ _ _ __(_)___ _ _   |__ /
                        \ V / -_) '_(_-< / _ \ ' \   |_ \
                         \_/\___|_| /__/_\___/_||_| |___/
        
                           . . By Monoxide and tjc . .


 縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
 粕                          Halo Map Tools: Overview                        粕
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴廟
 개                                                                          개
 개 Halo Map Tools, currently at version 3.0, is a hacking tool for Bungie's 개
 개 masterpiece first person shooter - Halo:Combat Evolved.  HMT currently   개
 개 supports all versions of the game.  These include:                       개
 개                                                                          개
 개 - Xbox, PC Retail, PC Beta, and PC Demo                                  개
 개                                                                          개
 개 HMT has grown from a simple sound injector to a very complex app that    개
 개 performs a wide variety of tasks.  In Version 3, I have teamed up with   개
 개 tjc, a very talented programmer and hacker, to provide more cutting edge 개
 개 features.                                                                개
 개                                                                          개
 개 [Current Feature Set as of Version 3]                                    개
 개                                                                          개
 개 - Injection and Extraction of all Halo Resource Files                    개
 개   This includes compressed and uncompressed texures, ADPCM and OGG       개
 개   sound files, and *NEW* Models.                                         개
 개                                                                          개
 개 - *NEW* XML-plugin Based Tag Editor                                      개
 개   This allows for easily extensible editing of a wide variety of game    개
 개   resources (metadata)  The current plugin set supports editing of       개
 개   Vehicles, Projectiles, Bipeds, Damage, Game Globals, Physics, Camera   개
 개   Tracks, and Weapons.                                                   개
 개                                                                          개
 개 - Batch Resource Extraction of all resource files and metadata           개
 개                                                                          개
 개 - *NEW* Metadata Import/Export with automatic ident and reflexive        개
 개   offset correction.                                                     개
 개                                                                          개
 개 - Object Placement and Player Spawn editing                              개
 개   Allows modification of coordinates, rotation, and object types         개
 개                                                                          개
 개 - Easy Offset Swapping                                                   개
 개                                                                          개
 개 - Search Functions                                                       개
 개   Locate by Meta Offset, Locate By ID                                    개
 개                                                                          개
 개 - *NEW* Map Rebuilding                                                   개
 개   Allows you to rebuild a map from resource files, allowing for easy     개
 개   additions and deletions of resources from a file.  This can be used    개
 개   easily move things from single player maps to multiplayer maps         개
 개                                                                          개
 縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
 粕                           General Instructions                           粕
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴廟
 개                                                                          개
 개 Note - This app requires the .net framework.  It can be downloaded from  개
 개 Microsoft via Windows Update or directly from their website.             개
 개 http://msdn.microsoft.com/netframework/downloads/howtoget.aspx           개
 개                                                                          개
 개 HMT is fairly simple to use - just open a map and select a resource from 개
 개 the resource browser.  If it has a dedicated plugin or an XML plugin, it 개
 개 will load and you will be able to edit certain properties and/or extract 개
 개 resources depending on the type of tag.                                  개
 개                                                                          개
 개 Map Rebuilding: This feature requires a little basic knowledge to use    개
 개 effectively.  Follow these steps in order to rebuild a map.              개
 개                                                                          개
 개 1. Into it's own folder, batch extract the multiplayer map that you wish 개
 개    to modify.                                                            개
 개 2. Open the map that you which to extract resources from and choose      개
 개    "Extract Meta" after selecting the proper tag.  If you would like to  개
 개    automatically extract all dependencies as well, check the "Recursive" 개
 개    box.  Choose a folder to extract the files to.                        개
 개 3. Copy the extracted files/folders to the folder you extracted the      개
 개    multiplayer map to.  Overwrite any existing files.                    개
 개 4. Choose "Rebuild Map" from the menu, and choose the Original Map (this 개
 개    is the original multiplayer map that you batch extracted earlier)     개
 개    *Note that the original map MUST be in the same folder as the batch   개
 개    extracted files.                                                      개
 개 5. Choose "yes" when prompted if you want to auto fill in the other      개
 개    filenames.                                                            개
 개 6. Now add any new files you wnat to add to the rebuild to the list at   개
 개    the bottom.  For example, if you want to add the Sentinal Beam weapon 개
 개    you would choose the Sentinal Beam.proj.meta file from the proper     개
 개    folder.  Note, that you only have to add the parent tag - any         개
 개    dependencies will be added automatically during the build.            개
 개 7. Now, click Rebuild and wait for it to finish.  Once it has completed  개
 개    the rebuild, you will have a new map file in the folder named         개
 개    OriginalMapName.map.rebuild.map.                                      개
 개 8. Copy this file to your Halo\MAPS\ folder, rename it to replace the    개
 개    appropriate map, and enjoy ;)                                         개
 개                                                                          개
 개 [Notice about bugs in certain plugins]                                   개
 개 tjc recently decided to leave the Halo Modding scene.  He is the         개
 개 author of the XML and Model plugins for HMT, and he has left them in an  개
 개 unfinished state.  Because of this, you will undoubtedly notice bugs     개
 개 with these plugins.  I plan on fixing these problems eventually, but     개
 개 rather than hold off on the release, I've decided to address the issues  개
 개 in a future release. They are still very usable, but you may find some   개
 개 annoynaces.  Please don't come crying or talking trash about the fact    개
 개 that these plugins have problems!  They will be fixed - do you really    개
 개 wanna wait and have nothing until then? :)                               개
 개                                                                          개
 縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
 粕                           Greetings and Thanks                           粕
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴廟
 개                                                                          개
 개 There have been a lot of people who have contributed to this project     개
 개 over time.  I'd like to give thanks to a few of them individually.       개
 개                                                                          개
 개 [Defenderz] Defenderz left Halo hacking shortly after I joined it but if 개
 개 anyone deserves credit for being the "father of Halo hacking" it's him.  개
 개 A good portion of the most important discoveries were made by Defenderz, 개
 개 and without him, we wouldn't be where we're at now.  Thanks man,         개
 개 wherever you are.                                                        개
 개                                                                          개
 개 [tjc] tjc had joined the HMT project recently to help provide more       개
 개 functionalilty.  Unfortunately, due to personal reasons, he has decided  개
 개 to leave the scene and will not be taking part in future HMT efforts.    개
 개 Thanks for your contributions tjc.. you will be missed by all of us...   개
 개                                                                          개
 개 [Iron_Forge] Map rebuilding would have never seen the light of day       개
 개 without the massive amount of help Iron_Forge gave me in the form of     개
 개 debugging, testing, and hardcore reverse-engineering.  There were many   개
 개 times that I was completely stuck and was only able to progress because  개
 개 of his help. He's also one of the few people in the scene that I really  개
 개 consider a friend, and he has provided me hours of good conversation     개
 개 throughout this project and has helped me to stay motivated.  So thanks  개
 개 Forge! ;oP                                                               개
 개                                                                          개
 개 [Grenadiac]  While gren hasn't actually contributed to HMT, his awesome  개
 개 app - SparkEdit - has really helped to expand the scene and has inspired 개
 개 me to make Halo Map Tools the best that it can be.  Watch for future     개
 개 versions of SE, as it just keeps getting better and better.              개
 개                                                                          개
 개 There are many others who have contributed to the scene in one way or    개
 개 another.  Although I rarely see him these days I also wanna thank        개
 개 Pfhorslayer for bringing everyone together for this project and doing a  개
 개 ton of work that has helped all of us.                                   개
 개                                                                          개
 개 Also, thanks to the HMT Beta team.                                       개
 개 You guys were a huge help in getting things ready for release.           개
 개                                                                          개
 개 I hope everyone enjoys HMT.V3 and I can't wait to see some of the        개
 개 awesome new mods that are created using it.                              개
 개                                                                          개
 개 Have fun and read the manual before you ask questions!                   개
 개 -Monoxide                                                                개
 개                                                                          개
 縛컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴커
 粕  Send questions, comments, and bug reports to HaloMapTools@hotmail.com   粕
 읕컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴廟