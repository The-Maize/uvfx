
##### About the recommended Prerequisite installs
The minimum prerequisites that are being installed are there to prevent a workstation and the artists/developer from having to seek out installations for the basic software, compilers, basic graphics libs like libffi or libpng.

During my time working on Linux i have constantly had to update this, find that package or figure out what is missing.

Now with some knowledge i am creating this so there is a minimum standard that goes into your system, There is further goals in the future to add more things how ever, this series of scripts is here to get you to the minimum level required to be at the VFX Platform recommended level. After that, you can update, run or use the majority of the industry software with out any errors. (Bugs may still occur how ever they will likely be due to the software developers)

This recommendation is to solve some future issues you may encounter such as compiling new plugins or running different scripts. its not just about the initial installation of the software and its minimum requirements. these scripts i am trying to factor in as many options i can with out bloating the system.

##### Recommended
At the least -

- python
- build-ess

These two scripts will give you the minimum to run and compile the next series of plugins, programs, run scripts and if need be to debug them.

The scripts are opensource and can be verified at will by anyone, there is no closed repositories, the software they fetch is authentic and unmodified (except where Maya is concerned See below for more details)

##### Modification Of Autodesk Maya
While this sounds like a bad thing it isnt. To those that dont know, all that happens in this process is this.

- wget -> Gets the real Autodesk Maya files and places them on the hard drive.

- alien -> Converts the RPM files (are used for installing Maya on RHEL, CentOS, Rocky etc) and turns them into .deb files as RPM's are not comaptible with ubuntu based systems

- Installs the .deb files (these are not modified beyond the conversion and you need a license to use them) to your system.

- Activates the licensing components
- Sets up the environment file for you, so it does not freeze on startup.
- Sets up the desktop file so you have a menu entry in your start bar if it does not do it for you.

##### Pixar
Pixar renderer is notoriously frustrating for new users to get working. How ever. once you know how to do it its easy, but i take that stress away by including it in this package.

##### Future inclusions of software, such as blender, houdini, Unreal Engine and more:
So these will definitely come.
I have been working on a few new tools that will make this super simple. however those are not open for viewing at the moment as i and building them as an actual program to set up these programs for beginners with a UI. Once i have a prototype, It will also be Open Source. Unreal is of particular interest to me as this is one of the few applications that claims linux compatibility, how ever while the engine works fine there are other hurdles with unreal engine that are not immediate to new users or even intermediate learners / users. but they do become apparant and i have some solutions. so to keep updated on the project. check the release notes or come here to see if any core functionality has changed. I am also building a wiki, there will be more instructions and help there.


##### Contact
#### How to contact me: - I can be found in the following place I frequent:
- Maize on Discord: https://discord.gg/7GwPhzsXgv (My personal discord - i am always here, how ever at this stage its pretty empty as i have just created it for the purpose of you all being able to get help, and discuss features changes and just general chatting)

- Maize on Mastodon: https://mastodon.social/invite/D4oj9QhT or if you are already a member @theMaize
- Maize on Youtube: @theMaizeOfficial
- Maize on Twitter: @OfficiallyMaize
