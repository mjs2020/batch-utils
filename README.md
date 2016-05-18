# batch-utils

A few batch files that have come in handy.

## collateCsv.bat

Collates all CSV files in its same folder into a single COLLATED.csv file. It also adds the name of the file as the first column of the output.

* Place it into a folder with some csv files
* Run it
* Get a single COLLATED.csv file as output (be careful, header lines will be repeated)

## collateCsvIncludingFilename.bat

Same as collateCsv.bat but includes the original csv name in the first column of the resulting file. It helps if you want to track for each row the original csv file.

## getDriveListCsv.bat

Asks for the drive for which you want to get a csv file for and then returns the contents of the drive (including subfolders) in a csv file named with the label of the indexed drive.

* Run it
* Select the drive you want to index (currently supports E: F: G: H: J:, you can tweak the code to support other letters or simply change the drive letter of the one you wish to index).
* Get the output csv file
