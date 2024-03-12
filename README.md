## UbuntuFX by NanoVFX - Maize

Once released the scripts will be available to clone, During development or patching the code that is currently being worked on is in a separate branch called DEV.
This branch can be found at this link : [Dev Branch](https://github.com/The-Maize/ubuntufx/tree/dev/)

All pull requests are checked before merged. Please DO NOT edit the README and expect the pull request to be fulfilled. We are not expressjs here XD.

Scripts to help with Ubuntu as a VFX / Game dev / animation / rendering / pipeline / film environment. Giving the general tool set you need for a complete easy run.

Welcome to the repository for scripts designed to assist in enabling the usage of various VFX, animation, film, game development, pipeline, and development tools on Ubuntu. This README will guide you through the contents of this repository and how to use the provided scripts effectively.

#### The PPA
These scripts work in conjunction with a PPA that has been set up to make it easier to find and source the software needed. 
PPA = coming soon

#### Introduction
This repository aims to streamline the setup process for Ubuntu users in the fields of VFX, animation, film, game development, pipeline, and software development by providing convenient scripts to install and configure essential tools and libraries. Whether you're a professional or a hobbyist, these scripts can help you quickly get up and running with the necessary software stack.

#### Supported Tools
Currently, the repository supports the installation and configuration of various tools including but not limited to:

System Development tools
Default tools setup for easier installation and running of the packages below.
- [x] Autodesk Maya - First order of business. 70%
- [ ] Blender - not implemented yet
- [ ] Unity - not implemented yet
- [ ] Unreal Engine - not implemented yet
- [ ] Foundry Nuke - not implemented yet
- [ ] Houdini - not implemented yet
- [ ] And many more will be supported

Support for more will be added, this is a work in progress.

Note: Not all scripts install, some are simply to help production workflows and to make things easier for the creator.

The general concept is this. I'm tired of being locked down to a single subset of Operating Systems that are "officially supported"

With these scripts, the support from the authoring companies of software are not isn't required. How ever. this is a personal project, and each system is different. expect bugs, i will update these as issues occur and I'm told about it.

#### Installation
To utilize the scripts in this repository, follow these steps: (these are sh scripts so to use them you must make them all executable.)

##### To make them executable if they haven't been already:
(new users can edit this in the right click menu under properties and permissions set executable)

Terminal method
```
chmod a+x /script/directory/scriptname
```

Clone the Repository: Clone this repository to your local machine using the following command:
##### Bash:

```
git clone https://github.com/your-username/your-repository.git
```

##### Navigate to the Repository: Change into the directory of the cloned repository:

"The year folder" is the year of the platform you wish to use, 2022, 2023, 2024 etc. The folders are named like this:
```
VFXP-2022
VFXP-2023
VFXP-2024
```
In most cases the latest is what you want, how ever in the upcoming releases there will be backwards compatibility and downgrading support if you require it for any reason. At this time, early Q1 2024 the most used version is the 2023. so this is the first edition to come out. followed by 2024 then backwards from there. This will allow me to serve the current then most recent, then work on other abstract or difficult problems earlier platforms and software have.

Bash
```
cd ubuntufx/Ubuntu/ENTER THE YEAR FOLDER HERE/scripts/
```
Execute the Desired Script: Run the script corresponding to the tool you want to install. For example:

Bash
```
sh ./main.sh
```

The script will guide you through the installation process, if any user input is required just follow on-screen instructions.

Enjoy: Once the script has completed, you should have the desired tool set installed and configured on your Ubuntu system.

#### Usage
Each script in this repository is designed to be straightforward and user-friendly. Simply execute the script for the tool to install, follow the prompts if required, and the script will handle the rest.

For more detailed usage instructions or troubleshooting, please refer to the documentation provided with each tool or send me a message

# ------------------------------------------------------------------------------------------------------------------------------ #

##### QOL Script and options
```
this script is here for extra software that can be added by you, the idea is that i give you the option to add software and repos. 
There will be a detailed ADD_EXTRA-README.md available for you to read that will detail exactly how to use it. 

The concept is to be able to reuse this configuration and make it extendable beyond the use these scripts are initially designed for.

```
# ------------------------------------------------------------------------------------------------------------------------------ #

#### Contributing
Contributions to this repository are welcome! If you have a script for a tool that is not yet supported or if you find a bug in an existing script, feel free to open a pull request or submit an issue.

#### License
This repository is licensed under the GPL License, which means you are free to use, modify, and distribute the code as you see fit. However, please note that some tools installed by these scripts may have their own licensing terms and conditions. Please review the licenses.
Will contain the license file as well as the script in the licenses folder if there is any changes.)

#### How to contact me: - I can be found in the following place I frequent:
- Maize on Discord: https://discord.gg/7GwPhzsXgv
| (My personal discord - i am always here, how ever at this stage its pretty empty as i have just created it for the purpose of you all being able to get help, and discuss features changes and just general chatting)

- Maize on Mastodon: https://mastodon.social/invite/D4oj9QhT or if you are already a member @theMaize
<<<<<<< HEAD
- Maize on YouTube: @theMaizeOfficial
- Maize on Twitter: @OfficiallyMaize
=======
- Maize on Youtube: @theMaizeOfficial
- Maize on Twitter: @OfficiallyMaize
>>>>>>> 5e5531a89c8053e6b0884b0c0d80dfc0a3cc81aa
