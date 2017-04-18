
## Chapter 18: Upgrading and Export Project

You can get the sample `Chapter_18_export_sample.zip` in the lesson directory.

#### Upgrading:

One must follow the Solarus [migration guide](http://wiki.solarus-games.org/doku.php?id=migration_guide) to learn how to upgrade to a new version of Solarus. This book is for Solarus 1.5.x. It is possible that is book will be forked for 1.6+

#### Export Project:

Remember to make a backup of your game before exporting.

You need to copy the Solarus Engine into a folder of your choosing, copy your quest `data` folder into that folder, and delete files you do not need.

**Deleting Files**

Not all the  `.dll` files are needed when exporting your game. You can delete the Solarus editor files because some of them are quite large, but you might need them for the quest launcher or if for possible memory leaks happen.

|Delete Files & Folders| File Size|
|:---------------------|:---------|
|Folder assets         | 50+ MB   |
|Folder platforms      | 1.3 MB   |
|icudt52.dll           | 23.5 MB  |
|icuin52.dll           | 3.3 MB   |
|icuuc52.dll           | 2.0 MB   |
|Qt5Core.dll           | 4.8 MB   |
|Qt5Gui.dll            | 4.6 MB   |
|Qt5Widgets.dll        | 5.9 MB   |
|solarus_editor_fr.qm  | 100+ KB  | 
|solarus-quest-editor.exe| 4.3 MB |
|solarus.exe           | 450 + KB| 


|Files Needed|
|:---------|
|libsolarus-gui.dll   
|SDL2_image.dll
|libfreetype-6.dll   
|libstdc++-6.dll      
|SDL2_ttf.dll
|libgcc_s_dw2-1.dll  
|libvorbis.dll        
|libmodplug-1.dll    
|libvorbisfile.dll    
|solarus_fr.qm
|libogg.dll          
|libwinpthread-1.dll  
|solarus-run.exe
|libphysfs.dll       
|lua51.dll            
|wrap_oal.dll
|libpng16-16.dll     
|OpenAL32.dll         
|zlib1.dll
|libsolarus.dll      
|SDL2.dll

**Setting up Data**

The inside of your folder should look like this now.

![Chapter_18_images/Export_setup_basic_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/Export_setup_basic_1.png)

You can leave your `data` folder out like that or you can zip it `data.zip`. Do not encrypt it because it will not work when activating the `solarus-run.exe`. You can rename the zip to `data.solarus`.

If you use the Linux operating system, then there might be an issue when zipping the file. The game will not play and you will get an error.txt. 

The reason is that Linux creates certain attributes to files when they are created. I even tried using Microsoft Windows programs (7Zip) with Wine. 

I zipped it and renamed it in Windows and everything worked fine. It even worked in Linux using Wine!

**Packaging or Distributing**

You can zip the folder you made or use [Inno Setup](http://www.jrsoftware.org/isinfo.php). You must provide a link to the [Solarus Engine Source code](https://github.com/solarus-games/solarus) and your game code because any code made with GPL code becomes GPL. You might want to link to the [Solarus Website](http://www.solarus-games.org/) as well.

**Inno Setup**

**Step 1:**

Select create a new script and press OK.

![Chapter_18_images/inno_setup_1.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_1.png)

**Step 2:**

Press next.

![Chapter_18_images/inno_setup_2.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_2.png)

**Step 3:**

|Application Information| Description|
|:---------------------|:-----------|
|Application name| Name of your program.
|Application version| Current version of your project.
|Application publisher| Your company or business name.
|Application website|www.YourWebsite.com

![Chapter_18_images/inno_setup_3.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_3.png)

**Step 4:**

Add the folder destination and name of your folder.

![Chapter_18_images/inno_setup_4.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_4.png)

**Step 5:**

Main executable is `Solarus_run.exe`.

Other files are the `.dll` and `data` folder.

![Chapter_18_images/inno_setup_5.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_5.png)

![Chapter_18_images/inno_setup_6.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_6.png)

**Step 6:**

Add the name of your application start folder.

![Chapter_18_images/inno_setup_7.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_7.png)

**Step 7:**

Add your text information. 

- License
- Information before install
- Information after install

![Chapter_18_images/inno_setup_8.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_8.png)

**Step 8:**

Select the languages you want.

![Chapter_18_images/inno_setup_9.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_9.png)

**Step 9:**

|Compiler Settings|Description|
|:----------------|:----------|
|Filename output|The name of your installer file.
|Custom Icon| Custom icon image for your installer.
|Setup Password|Password for your installer.

![Chapter_18_images/inno_setup_10.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_10.png)

**Step 10:**

Next

![Chapter_18_images/inno_setup_11.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_11.png)

**Step 11:**

Next

![Chapter_18_images/inno_setup_12.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_12.png)

**Step 12:**

Yes or no for compiling your script. Remember to `File > save`.

![Chapter_18_images/inno_setup_13.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_13.png)

**Step 13:**

Edit the script if you want.

![Chapter_18_images/inno_setup_14.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_14.png)

**Step 14:**

You can always compile your script from `Build > Compile`.

![Chapter_18_images/inno_setup_15.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_15.png)

**Step 15:**

Your installer will show up in a folder called `output`.

![Chapter_18_images/inno_setup_16.png](https://github.com/Zefk/Solarus-ARPG-Game-Development-Book_2/raw/master/Lesson_images/Chapter_18_images/inno_setup_16.png)

