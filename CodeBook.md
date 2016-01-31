## Code book

The purpose of this code book is used to describe the data found at SimpleTable.txt. Information about the original data used for this project can be found at ./data/UCI HAT Dataset/README.txt. SimpleTable.txt contains 180 entries with 68 attributes. 
	Attribute
		Activity
			The activity mearsured for the entry.
			The value will be one of the following:
				"WALKING"
				"WALKING_UPSTAIRS"
				"WALKING_DOWNSTAIRS"
				"SITTING"
				"STANDING"
				"LAYING"
		Subject
			The subject measured for the entry.
			This value will be between 1 and 30 exclusive.
		66 other attributes
			All values are means of values collected for one or more entries with the same activity and subject.
			Read ./data/UCI HAT Dataset/features_info.txt for more infomation on theses attributes including units used and standard abbriviations used.