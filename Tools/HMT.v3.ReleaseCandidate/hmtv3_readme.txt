                 ����������������������������������������������
                 :::                                        :::
                 ���   888    888 888b     d888 888888888   ���
                 ���   888    888 8888b   d8888    888      ���
                 ���   888    888 88888b.d88888    888      ���
                 ���   8888888888 888Y88888P888    888      ���
                 ���   888    888 888 Y888P 888    888      ���
                 ���   888    888 888  Y8P  888    888      ���
                 ���   888    888 888   "   888    888      ���
                 ���   888    888 888       888    888      ���
                 :::                                        :::
                 ����������������������������������������������
                       __   __          _            ____
                       \ \ / /__ _ _ __(_)___ _ _   |__ /
                        \ V / -_) '_(_-< / _ \ ' \   |_ \
                         \_/\___|_| /__/_\___/_||_| |___/
        
                           . . By Monoxide and tjc . .


 ����������������������������������������������������������������������������Ŀ
 ��                          Halo Map Tools: Overview                        ��
 ������������������������������������������������������������������������������
 ��                                                                          ��
 �� Halo Map Tools, currently at version 3.0, is a hacking tool for Bungie's ��
 �� masterpiece first person shooter - Halo:Combat Evolved.  HMT currently   ��
 �� supports all versions of the game.  These include:                       ��
 ��                                                                          ��
 �� - Xbox, PC Retail, PC Beta, and PC Demo                                  ��
 ��                                                                          ��
 �� HMT has grown from a simple sound injector to a very complex app that    ��
 �� performs a wide variety of tasks.  In Version 3, I have teamed up with   ��
 �� tjc, a very talented programmer and hacker, to provide more cutting edge ��
 �� features.                                                                ��
 ��                                                                          ��
 �� [Current Feature Set as of Version 3]                                    ��
 ��                                                                          ��
 �� - Injection and Extraction of all Halo Resource Files                    ��
 ��   This includes compressed and uncompressed texures, ADPCM and OGG       ��
 ��   sound files, and *NEW* Models.                                         ��
 ��                                                                          ��
 �� - *NEW* XML-plugin Based Tag Editor                                      ��
 ��   This allows for easily extensible editing of a wide variety of game    ��
 ��   resources (metadata)  The current plugin set supports editing of       ��
 ��   Vehicles, Projectiles, Bipeds, Damage, Game Globals, Physics, Camera   ��
 ��   Tracks, and Weapons.                                                   ��
 ��                                                                          ��
 �� - Batch Resource Extraction of all resource files and metadata           ��
 ��                                                                          ��
 �� - *NEW* Metadata Import/Export with automatic ident and reflexive        ��
 ��   offset correction.                                                     ��
 ��                                                                          ��
 �� - Object Placement and Player Spawn editing                              ��
 ��   Allows modification of coordinates, rotation, and object types         ��
 ��                                                                          ��
 �� - Easy Offset Swapping                                                   ��
 ��                                                                          ��
 �� - Search Functions                                                       ��
 ��   Locate by Meta Offset, Locate By ID                                    ��
 ��                                                                          ��
 �� - *NEW* Map Rebuilding                                                   ��
 ��   Allows you to rebuild a map from resource files, allowing for easy     ��
 ��   additions and deletions of resources from a file.  This can be used    ��
 ��   easily move things from single player maps to multiplayer maps         ��
 ��                                                                          ��
 ����������������������������������������������������������������������������Ŀ
 ��                           General Instructions                           ��
 ������������������������������������������������������������������������������
 ��                                                                          ��
 �� Note - This app requires the .net framework.  It can be downloaded from  ��
 �� Microsoft via Windows Update or directly from their website.             ��
 �� http://msdn.microsoft.com/netframework/downloads/howtoget.aspx           ��
 ��                                                                          ��
 �� HMT is fairly simple to use - just open a map and select a resource from ��
 �� the resource browser.  If it has a dedicated plugin or an XML plugin, it ��
 �� will load and you will be able to edit certain properties and/or extract ��
 �� resources depending on the type of tag.                                  ��
 ��                                                                          ��
 �� Map Rebuilding: This feature requires a little basic knowledge to use    ��
 �� effectively.  Follow these steps in order to rebuild a map.              ��
 ��                                                                          ��
 �� 1. Into it's own folder, batch extract the multiplayer map that you wish ��
 ��    to modify.                                                            ��
 �� 2. Open the map that you which to extract resources from and choose      ��
 ��    "Extract Meta" after selecting the proper tag.  If you would like to  ��
 ��    automatically extract all dependencies as well, check the "Recursive" ��
 ��    box.  Choose a folder to extract the files to.                        ��
 �� 3. Copy the extracted files/folders to the folder you extracted the      ��
 ��    multiplayer map to.  Overwrite any existing files.                    ��
 �� 4. Choose "Rebuild Map" from the menu, and choose the Original Map (this ��
 ��    is the original multiplayer map that you batch extracted earlier)     ��
 ��    *Note that the original map MUST be in the same folder as the batch   ��
 ��    extracted files.                                                      ��
 �� 5. Choose "yes" when prompted if you want to auto fill in the other      ��
 ��    filenames.                                                            ��
 �� 6. Now add any new files you wnat to add to the rebuild to the list at   ��
 ��    the bottom.  For example, if you want to add the Sentinal Beam weapon ��
 ��    you would choose the Sentinal Beam.proj.meta file from the proper     ��
 ��    folder.  Note, that you only have to add the parent tag - any         ��
 ��    dependencies will be added automatically during the build.            ��
 �� 7. Now, click Rebuild and wait for it to finish.  Once it has completed  ��
 ��    the rebuild, you will have a new map file in the folder named         ��
 ��    OriginalMapName.map.rebuild.map.                                      ��
 �� 8. Copy this file to your Halo\MAPS\ folder, rename it to replace the    ��
 ��    appropriate map, and enjoy ;)                                         ��
 ��                                                                          ��
 �� [Notice about bugs in certain plugins]                                   ��
 �� tjc recently decided to leave the Halo Modding scene.  He is the         ��
 �� author of the XML and Model plugins for HMT, and he has left them in an  ��
 �� unfinished state.  Because of this, you will undoubtedly notice bugs     ��
 �� with these plugins.  I plan on fixing these problems eventually, but     ��
 �� rather than hold off on the release, I've decided to address the issues  ��
 �� in a future release. They are still very usable, but you may find some   ��
 �� annoynaces.  Please don't come crying or talking trash about the fact    ��
 �� that these plugins have problems!  They will be fixed - do you really    ��
 �� wanna wait and have nothing until then? :)                               ��
 ��                                                                          ��
 ����������������������������������������������������������������������������Ŀ
 ��                           Greetings and Thanks                           ��
 ������������������������������������������������������������������������������
 ��                                                                          ��
 �� There have been a lot of people who have contributed to this project     ��
 �� over time.  I'd like to give thanks to a few of them individually.       ��
 ��                                                                          ��
 �� [Defenderz] Defenderz left Halo hacking shortly after I joined it but if ��
 �� anyone deserves credit for being the "father of Halo hacking" it's him.  ��
 �� A good portion of the most important discoveries were made by Defenderz, ��
 �� and without him, we wouldn't be where we're at now.  Thanks man,         ��
 �� wherever you are.                                                        ��
 ��                                                                          ��
 �� [tjc] tjc had joined the HMT project recently to help provide more       ��
 �� functionalilty.  Unfortunately, due to personal reasons, he has decided  ��
 �� to leave the scene and will not be taking part in future HMT efforts.    ��
 �� Thanks for your contributions tjc.. you will be missed by all of us...   ��
 ��                                                                          ��
 �� [Iron_Forge] Map rebuilding would have never seen the light of day       ��
 �� without the massive amount of help Iron_Forge gave me in the form of     ��
 �� debugging, testing, and hardcore reverse-engineering.  There were many   ��
 �� times that I was completely stuck and was only able to progress because  ��
 �� of his help. He's also one of the few people in the scene that I really  ��
 �� consider a friend, and he has provided me hours of good conversation     ��
 �� throughout this project and has helped me to stay motivated.  So thanks  ��
 �� Forge! ;oP                                                               ��
 ��                                                                          ��
 �� [Grenadiac]  While gren hasn't actually contributed to HMT, his awesome  ��
 �� app - SparkEdit - has really helped to expand the scene and has inspired ��
 �� me to make Halo Map Tools the best that it can be.  Watch for future     ��
 �� versions of SE, as it just keeps getting better and better.              ��
 ��                                                                          ��
 �� There are many others who have contributed to the scene in one way or    ��
 �� another.  Although I rarely see him these days I also wanna thank        ��
 �� Pfhorslayer for bringing everyone together for this project and doing a  ��
 �� ton of work that has helped all of us.                                   ��
 ��                                                                          ��
 �� Also, thanks to the HMT Beta team.                                       ��
 �� You guys were a huge help in getting things ready for release.           ��
 ��                                                                          ��
 �� I hope everyone enjoys HMT.V3 and I can't wait to see some of the        ��
 �� awesome new mods that are created using it.                              ��
 ��                                                                          ��
 �� Have fun and read the manual before you ask questions!                   ��
 �� -Monoxide                                                                ��
 ��                                                                          ��
 ����������������������������������������������������������������������������Ŀ
 ��  Send questions, comments, and bug reports to HaloMapTools@hotmail.com   ��
 ������������������������������������������������������������������������������