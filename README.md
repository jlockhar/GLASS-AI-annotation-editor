This app allows you to easily edit the classification output from GLASS-AI (https://github.com/jlockhar/GLASS-AI) by providing manual annotations from QuPath (https://qupath.github.io/).

The main purpose is to mark regions to be excluded from analysis (e.g., non-lung tissue, debris in image, etc.) and to incorporate manually segmented 'Grade 5' regions (which are not recognized by GLASS-AI).

In this example image, there is a large amount of lymphoid tissue on the left side of the slide and a small blood clot at the bottom left that we would like to exclude from the GLASS-AI results.

These regions have been manually annotated in QuPath as "Ignore*" (one of the default classes). 
![image](https://github.com/user-attachments/assets/25c7a34a-ac19-4032-bd49-52cc3117c9d1)

The annotations are then exported as a `.geojson` file using the 'Export as FeatureCollection' option.
![image](https://github.com/user-attachments/assets/61b5a761-cce5-413f-8296-f8675d0d2603)

In the GLASS-AI Annotation Editor App, we then select the image file, GLASS-AI output, and manual annotations.
- Multiple files can be selected to process in a batch. You can even import the logfile from a GLASS-AI run to automatically add files to the table, though you will need to add the annotation files manually.
  - If the files are not in locations specified in the log file (e.g., you analyzed them on a different computer), you can point to the correct directory by selecting the invalid cells in a column, right-clicking, and selecting 'Change Folder.'
  - If you select a single column of cells, you can try to populate the table with files matching the names of the filled-in cell(s) in each row by right-clicking and selecting 'Populate from Folder' to select the directory containing the missing files.
- Individual files in the table can be added or replaced by double-clicking the target cell.
- Right clicking in the table will bring up a context menu that can be used to clear multiple cells.
![image](https://github.com/user-attachments/assets/b6b713ef-7212-4af7-8e0d-90d28e795efe)

Once all of the files have been added, clicking the 'Run' button will overlay the manual annotations on the GLASS-AI output classifications, reanalyze the tumors in the image, and output the modified results.
![Annotation editor workflow](https://github.com/user-attachments/assets/5de4e7c2-b360-49c6-bfc7-442670feb738)

All of the options that can affect the tumor analysis in the GLASS-AI app are also available in this app's 'Tumor Analysis' tab.

If you want to use your own class names in QuPath, you can define the mapping to the GLASS-AI classes in the 'Annotation Mapping' tab.

Likewise, the colors used to represent each class in the output images can be changed in the 'Grade Map Colors' tab, while the scale of the output images can be set in the 'Output Image Scaling' tab.


