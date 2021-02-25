# easyreport

## Thinking:
With WA bots, information collection is easier than apps. But this increases the conversation needed to get all the data types needed about an 'incident' (civic issue for now, future expansion of definition is possible) - where it happened, when, who were involved, some evidence (media) etc.

## Question to ourselves:
How do we ease the information collection? How do we close the loop for the user who gave the information? How do we make this scalable across geographies, user groups, tech capabilities, devices? On what datatype can we rely on crowd triangulation of data, and where do we need accuracy?

## In phase 1:
Assumption - user can take photos of the 'incident' easily and submit online.
Knowledge - WA compresses images and media and removes all EXIF data. Sharing same as document might increase friction. Also, sharing as document allows only one document to be shared at a time, increasing friction to the user with multiple images.
So - 
We are experimenting if we can 
* get the user to submit images with location info to a dropbox link. 
* From this, we extract the GIS data and timestamp. 
* We use AI/ML to identify what civic issue is shown in the image. This allows for basic categorisation and cleaning of data on the fly (unknown images are marked as unknown). 
* All this will be put on the map using leaflet to close the loop for the user.

*If this experiment proves true (Hypothesis - submitting 'incidents' is super easy for the 'user', but equally useful for the 'system', aka us), we will move to planning a scalable system.*

### Gratitude to Rakshit and Pallavi.
