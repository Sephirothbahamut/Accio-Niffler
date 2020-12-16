# DOD

![](Pictures/Niffler_logo.png)

#### Team Accio Niffler
- Michael Marchesan - 945887

- Giuliana Muto - 961902

- Luca Di Gennaro - 961208


## The dark lady awakens

#### Purpose

The purpose of this document is to contain the major guidelines to follow while working on this project concerning the software to use, the formats and specifications for the files and the backup & versioning policies.

#### Creation Date

Since 18/10/2020

#### Current owner

Michael Marchesan

#### Last Modification

Last Modification: 02/12/2020

## Revision history

| **What**                                       | **When**   | **Who**  |
| ---------------------------------------------- | ---------- | -------- |
| Document created                               | 18/10/2020 | Michael  |
| Revision before first update                   | 09/11/2020 | Michael  |
| Redesign of the document                       | 18/11/2020 | Luca     |
| Directory Structure, File naming convention    | 19/11/2020 | Luca     |
| Data storage and access                        | 20/11/2020 | Giuliana |
| Data types and format                          | 21/11/2020 | Michael  |
| Document preparation                           | 22/11/2020 | Giuliana |
| Added export naming, completed some paragraphs | 02/12/2020 | Luca     |



# Software List

Here is a comprehensive list of software to be used in this project, along with their version on which they should be used to reduce the possibility of compatibility issues.

#### Asset Editing Software

- RPGMaker MV 1.5.0 
- Piskel 0.14.0
- Audacity 2.4.2 

#### Development Software
- RPGMaker MV 1.5 
  - Prototype
- Unity 2019.1.15f1 (Long Term Support) 
  - Release
- Notepad++ 7.9.1 
- Git 2.29.2.windows.2

#### Organization Software
- Notepad++ 7.9.1
- Typora 0.9.96 (beta)
- Paint.net 4.2.14
- Pandoc 2.11.1.1
- Microsoft Word 18.2008.12711.0
- Draw.io 13.9.9 

#### Environments
- Windows 10 Pro 2004

# Data Types and Format

#### Diagrams
##### .drawio
Save format for the draw.io software. It works as a source for diagrams, allowing for easy and quick edits when needed. Diagrams are then exported in the .png format
##### .png
The image exported from draw.io files to be inserted in the documentation.

#### Text
##### .md 
Pure markdown with no extensions for actual documentation.
##### .docx
Temporary files to make documentation more aesthetically pleasing and export to .pdf in case a paged version is required from outside the team. NOTE: the .docx document must NOT change the actual textual content of the document. All content changes must be present in the .md file.

#### Pictures
##### .piskel

Piskel project format that keeps all the editing information.

##### .pdn

Paint.net format that keeps all the editing information.

##### .jpg and .png (documentation)

Standard format for images with no constraints (for example for documentation pictures like characters' portrait, settings and so on...)

##### .png (game)

Exported image for game usage.

 - All images have a 32 bits color depth.
 - Background images: 1920\*1080
 - Tilesets: each tile is 64\*64 pixels.
 - Iconset: each tile is 64\*64 pixels.
 - Faceset: each tile is 256\*256. Each file must contain different facial expressions for the same character.
 - Character set: each tile is 64\*64 pixels. A character set must be 60 tiles wide and at most 4 tiles tall. 
   - Each 60 horizontally consecutive tiles form a contiguous walking animation, with the 2nd one representing the idle state. 
   - Each row represent an animation; non-rotating objects only have one row
   - Objects with an animation for each direction have 4 rows in the following order: right, up, left, down
	

#### Video
##### .mkv, .mp4

 - Resolution: 1920\*1080
 - FPS: 60
 - Audio Sample Rate: 48000 Hz
 - Audio Channels: Stereo

#### Audio
##### .ogg Vorbis Audio File

 - Audio Channels: Stereo
 - Sample Rate: 44100 Hz
 - Nominal Bitrate: 64 kbit/s

#### Game data

##### .rpgproject

- Main project file for RPG Maker MV software

##### .js

- For scripting purposes inside the RPG Maker MV software

##### .json

- For storing various asset information inside the RPG Maker MV software

# Data Storage and Access

The team works on the different project's versions through a public repository but with modification permission only for team members. The repository is on Git Hub at the link https://github.com/Sephirothbahamut/Accio-Niffler, owned by Michael Marchesan

Each role has specific privileges according to the following table: 

| **Role**     | **Privilege**             |
| ------------ | ------------------------- |
| Game Design  | read/write/comment/upload |
| Level Design | read/write/comment/upload |
| Programmer   | read/write/comment/upload |
| Artist       | read/comment/upload       |
| Composer     | read/comment/upload       |

## Backup

The backup is managed through the Git Hub repository. Each team member has an always up-to-date local copy of the repo on their computer, with all the previous revisions offered by the version control software Git.

It's sufficient to roll back to a previous release if anything fails, plus a parallel copy of the repo on each member's pc (3 + 1 hosted on GitHub) makes the project data extremely resilient to faults of any kind.

# Directory Structure
![](Pictures/Directory_structure_diagram.png)

- **Root**
    - **Documentation**: holds all the files related to the game documentation, such as the Data Organization Document and the Level Design Document. Contains the markdown sources of the documents as well as the following sub-directories:
        - **Pictures** : holds all the pictures used in the documents. Its sub-directories serve to sort them into semantically-related sub-categories 
            - ***Story***
            - ***Level***
            - ***Maps***
            - ***Locations***
            - ***Characters***
              - ***Circumplexes***
              - ***Relation Maps***
              - ***Portraits***
        - **Export**: holds all the files generated from the markdown source of the documents, such as .docx and .pdf files 
    - **Resources**: holds all the files related to the game digital prototype. Its sub-directories serve to sort them into functionally-related sub-categories 
      - ***Textures***
      - ***Sounds***
        - ***Music***
        - ***Effects***
      - ***Scripts***

# File Naming Convention
Generally, each file starts with capital letter; spaces are replaced by underscores.

The filename represents its content in roughly two parts:

- The first part represents **what is contained** in the file or what it refers to (for example: Albus\_Dumbledore represents an asset concerning the character Albus Dumbledore, Black\_Lake\_ represents an asset concerning the Black Lake setting and so on...). It is composed by **no more than 3 words**, separated by underscores.
- The second part represents what **type** of content the file belongs to (for example: \_texture, \_sound, \_map, \_circumplex ...). It must be composed by only **one word** and it must be the **final** one of the filename: for this reason, abbreviations are allowed (for example: relationship map can be shortened to \_relmap) 

List of types to identify files:

- \_source
- \_diagram
- \_flowchart
- \_template
- \_circumplex
- \_portrait
- \_relmap
- \_map
- \_picture
- \_document
- \_logo
- _sheet
- _icon
- _chart

Each diagram or flowchart must be **paired** with its source that generated it.

E.g.

- Albus\_circumplex.png represents the character circumplex of Albus Dumbledore
- Myrtle\_Ghost\_portrait.png represents a portrait image of Myrtle in her ghostly form
- Minerva\_after\_event\_relmap.png represents the relationship map of Minerva McGonagall after a traumatic event that happens through-out the story

Exported documents are exempt from this naming convention and will instead follow this one:

[Document Abbreviation]_[Name of the team]

For example the abbreviation of the export of the Data Organization Document (DOD) will be:

- DOD_AccioNiffler.docx
- DOD_AccioNiffler.pdf

