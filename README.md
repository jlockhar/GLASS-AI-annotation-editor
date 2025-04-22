This app allows you to easily edit the classification output from GLASS-AI (https://github.com/jlockhar/GLASS-AI) by providing manual annotations from QuPath (https://qupath.github.io/).

The main purpose is to mark regions to be excluded from analysis (e.g., non-lung tissue, debris in the image, etc.) and to incorporate manually segmented 'Grade 5' regions (which are not recognized by GLASS-AI).
<p align="center">
<img width="460" height="300" src="https://github.com/user-attachments/assets/e0b3affc-5e93-4eac-ab7c-0bfce9bb5926">
</p>


## Installation
Download and run the latest version of the GLASS-AI annotation editor installer for your operating system [here](https://moffitt.box.com/s/sjt4dz85ojwrskf0e8bxg00rcm98hn03). Installers are hosted on Box by Moffitt Cancer Center as the files are too large to upload to GitHub.

   - **Mac users: If you require an Intel version of the application, please open an issue on this repository, and I will compile one.**
   - **Mac users: If you get a 'GLASS-AI annotation editor....app can't be opened' or 'GLASS-AI annotation editor....app is damaged' error when trying to run the installer, it is being blocked by your security settings in MacOS. If you can't enable installation from third-party developers, you can remove the quarantine flag that MacOS adds to downloaded apps by running `xattr -c <path/to/GLASS-AI_annotation_editor_installer.app>` in Terminal before running the installer.**
   - Older versions of the GLASS-AI annotation editor can be found [here](https://moffitt.ent.box.com/folder/280947711873).
   - During startup, the GLASS-AI annotation editor will check for new versions of the app here on GitHub and let you know if an update is available.

Each installer will also install a copy of the MATLAB Runtime required to run the program without a pre-existing copy of MATLAB (and requisite toolboxes). **You do not need a MATLAB license to run the precompiled versions of the GLASS-AI annotation editor**.

You can also use the `GLASS_AI_annotation_editor.m` file in this repository if you have the required MATLAB version (r2024a). 

*Installation time should be < 5 minutes, but may take longer depending on download speeds between your computer and MATHWORKS. Any updates to app that do not require updating the MATLAB Runtime should install almost instantly.*

## Usage
In this example image, there is a large amount of lymphoid tissue on the left side of the slide and a small blood clot at the bottom left that we would like to exclude from the GLASS-AI results.

These regions have been manually annotated in QuPath as "Ignore*" (one of the default classes). 
![image](https://github.com/user-attachments/assets/25c7a34a-ac19-4032-bd49-52cc3117c9d1)

The annotations are then exported as a `.geojson` file using the 'Export as FeatureCollection' option.
![image](https://github.com/user-attachments/assets/61b5a761-cce5-413f-8296-f8675d0d2603)

In the GLASS-AI Annotation Editor App, we then select the image file, GLASS-AI output, and manual annotations.
- Multiple files can be selected to process in a batch. You can even import the logfile from a GLASS-AI run to automatically add files to the table, though you will need to add the annotation files manually.
  - If the files are not in locations specified in the log file (e.g., you analyzed them on a different computer), you can point to the correct directory by selecting the invalid cells in a column, right-clicking, and selecting `Change Folder`.
  - If you select a single column of cells, you can try to populate the table with files matching the names of the filled-in cell(s) in each row by right-clicking and selecting `Populate from Folder` to select the directory containing the missing files.
- Individual files in the table can be added or replaced by double-clicking the target cell.
- Right-clicking in the table will bring up a context menu that can be used to clear multiple cells.
![image](https://github.com/user-attachments/assets/b6b713ef-7212-4af7-8e0d-90d28e795efe)

Once all of the files have been added, clicking the `Run` button will overlay the manual annotations on the GLASS-AI output classifications, reanalyze the tumors in the image, and output the modified results.
![Annotation editor workflow](https://github.com/user-attachments/assets/5de4e7c2-b360-49c6-bfc7-442670feb738)

Tumor analysis options in the GLASS-AI app are also available in this app's 'Tumor Analysis' tab.
- If you import a GLASS-AI log file, these options will be automatically set to the same values used in the GLASS-AI run.

If you want to use your own class names in QuPath, you can define the mapping to the GLASS-AI classes in the 'Annotation Mapping' tab.
- By default, annotations are mapped as follows:
  - Grade 1: contains 'Grade 1'
  - Grade 2: contains 'Grade 2'
  - Grade 3: contains 'Grade 3'
  - Grade 4: contains 'Grade 4'
  - Grade 5: contains 'Grade 5'
  - Normal Alveoli: contains 'Alveoli'
  - Normal Airway: contains 'Airway'
  - Ignore: contains 'Ignore'
  

Likewise, the colors used to represent each class in the output images can be changed in the 'Grade Map Colors' tab, while the scale of the output images can be set in the 'Output Image Scaling' tab.
- If you import a GLASS-AI log file, these options will be automatically set to the same values used in the GLASS-AI run.


For troubleshooting advice, please reach out to us by (preferably) [opening a new issue on Github](https://github.com/jlockhar/GLASS-AI-annotation-editor/issues/new) or contacting the authors via the correspondence email included in the [GLASS-AI manuscript](https://doi.org/10.1038/s41698-023-00419-3).

## Related projects
* [**GLASS-AI**](https://github.com/jlockhar/GLASS-AI)
   * GLASS-AI provides automated analysis of lung adenocarcinomas in H&E-stained images.     
* [**GLASS-AI report generator**](https://github.com/jlockhar/GLASS-AI-ReportR)
	* GLASS-AI can help analyze large sets of images, but you'll still need to interpret the results from the output tables and images. This R notebook that analyzes and graphs the results from GLASS-AI in many different ways (e.g., tumor counts, total tumor area, the proportion of lung area occupied by tumors, and intratumor heterogeneity estimates). This file can also be used to perform some basic statistical comparisons between groups that you define.
* [**GLASS-AI manual annotation editor**](https://github.com/jlockhar/GLASS-AI-annotation-editor)
	* GLASS-AI is not infallible, but the primary issues we've observed arise from unknown/untrained features in the analyzed images. This MATLAB app allows you to incorporate manual annotations created in [QuPath](https://qupath.github.io/) into the annotations produced by GLASS-AI (for example, including 'Grade 5' LUAD tumor areas or excluding non-lung tissue).
* [**Stained-GLASS-AI**](https://github.com/jlockhar/Stained-GLASS-AI)
	* The high-resolution grading provided by GLASS-AI can empower molecular analyses of particular cell types, gene expression changes, or activation of signaling cascades marked by immunohistochemistry (IHC). By registering an IHC-stained slide with the one analyzed by GLASS-AI, cell annotations can be projected onto the tumor grade maps output by GLASS-AI. In addition, a peritumoral analysis module is included to assess changes in the recruitment of cells to regions surrounding tumors.

## License
**This software is for research use only — not for use in diagnostic procedures.** 

If you use this code for your research, please cite: Lockhart, J.H., Ackerman, H.D., Lee, K., *et al.* Grading of lung adenocarcinomas with simultaneous segmentation by artificial intelligence (GLASS-AI). *npj Precis. Onc.* 7, 68 (2023). [![DOI](https://zenodo.org/badge/DOI/10.1038/s41698-023-00419-3.svg)](https://doi.org/10.1038/s41698-023-00419-3)

This software is provided under an MIT license, reproduced below. [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

---

**GLASS-AI Annotation Editor Standalone App Use License**

Copyright (c) 2024 H. Lee Moffitt Cancer Center and Research Institute

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
