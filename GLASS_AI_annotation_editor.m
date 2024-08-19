classdef GLASS_AI_annotation_editor < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        CopytobaseButton                matlab.ui.control.Button
        SelectGLASSAILogFileButton      matlab.ui.control.Button
        UITable                         matlab.ui.control.Table
        UpdateAvailableButton           matlab.ui.control.Button
        AppLogo                         matlab.ui.control.Image
        VersionLabel                    matlab.ui.control.Label
        AppTitle                        matlab.ui.control.Label
        TabGroup                        matlab.ui.container.TabGroup
        TumorAnalysisTab                matlab.ui.container.Tab
        AssignmentmethodDropDown        matlab.ui.control.DropDown
        AssignmentmethodDropDownLabel   matlab.ui.control.Label
        TumorgradethresholdEditField    matlab.ui.control.NumericEditField
        TumorgradethresholdEditFieldLabel  matlab.ui.control.Label
        AssignoverallgradetoeachtumorCheckBox  matlab.ui.control.CheckBox
        SmoothingSizeSpinner            matlab.ui.control.Spinner
        SmoothingSizeSpinnerLabel       matlab.ui.control.Label
        SmoothingMethodDropDown         matlab.ui.control.DropDown
        SmoothingMethodDropDownLabel    matlab.ui.control.Label
        PatchtissuethresholdLabel       matlab.ui.control.Label
        PatchTissueThresholdInput       matlab.ui.control.NumericEditField
        TumormergeradiusmLabel          matlab.ui.control.Label
        TumorMergeRadiusInput           matlab.ui.control.NumericEditField
        TumorsizethresholdsqmLabel      matlab.ui.control.Label
        TumorSizeThresholdInput         matlab.ui.control.NumericEditField
        AnnotationMappingTab            matlab.ui.container.Tab
        IgnoreMatchingDropDown          matlab.ui.control.DropDown
        IgnoreMatchingValue             matlab.ui.control.EditField
        IgnoreAnnotationMappingLabel    matlab.ui.control.Label
        AirwayMatchingDropDown          matlab.ui.control.DropDown
        AirwayMatchingValue             matlab.ui.control.EditField
        AirwayAnnotationMappingLabel    matlab.ui.control.Label
        AlveoliMatchingDropDown         matlab.ui.control.DropDown
        AlveoliMatchingValue            matlab.ui.control.EditField
        AlveoliAnnotationMappingLabel   matlab.ui.control.Label
        Grade5MatchingDropDown          matlab.ui.control.DropDown
        Grade5MatchingValue             matlab.ui.control.EditField
        Grade5AnnotationMappingLabel    matlab.ui.control.Label
        Grade4MatchingDropDown          matlab.ui.control.DropDown
        Grade4MatchingValue             matlab.ui.control.EditField
        Grade4AnnotationMappingLabel    matlab.ui.control.Label
        Grade3MatchingValue             matlab.ui.control.EditField
        Grade3MatchingDropDown          matlab.ui.control.DropDown
        Grade3AnnotationMappingLabel    matlab.ui.control.Label
        Grade2MatchingValue             matlab.ui.control.EditField
        Grade2MatchingDropDown          matlab.ui.control.DropDown
        Grade2AnnotationMappingLabel    matlab.ui.control.Label
        Grade1MatchingDropDown          matlab.ui.control.DropDown
        Grade1MatchingValue             matlab.ui.control.EditField
        Grade1AnnotationMappingLabel    matlab.ui.control.Label
        GradeMapColorsTab               matlab.ui.container.Tab
        Grade5ColorEditField_B          matlab.ui.control.NumericEditField
        Grade5ColorEditField_G          matlab.ui.control.NumericEditField
        Grade5ColorEditField_R          matlab.ui.control.NumericEditField
        Grade5ColorEditFieldLabel       matlab.ui.control.Label
        Grade5Lamp                      matlab.ui.control.Lamp
        SkippedPatchColorEditField_B    matlab.ui.control.NumericEditField
        SkippedPatchColorEditField_G    matlab.ui.control.NumericEditField
        SkippedPatchColorEditField_R    matlab.ui.control.NumericEditField
        SkippedPatchColorEditFieldLabel  matlab.ui.control.Label
        BackgroundColorEditField_B      matlab.ui.control.NumericEditField
        BackgroundColorEditField_G      matlab.ui.control.NumericEditField
        BackgroundColorEditField_R      matlab.ui.control.NumericEditField
        BackgroudColorEditFieldLabel    matlab.ui.control.Label
        Grade4ColorEditField_B          matlab.ui.control.NumericEditField
        Grade4ColorEditField_G          matlab.ui.control.NumericEditField
        Grade4ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_6  matlab.ui.control.Label
        Grade3ColorEditField_B          matlab.ui.control.NumericEditField
        Grade3ColorEditField_G          matlab.ui.control.NumericEditField
        Grade3ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_5  matlab.ui.control.Label
        NormalAlveoliColorEditField_B   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditField_G   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditField_R   matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_4  matlab.ui.control.Label
        NormalAirwayColorEditField_B    matlab.ui.control.NumericEditField
        NormalAirwayColorEditField_G    matlab.ui.control.NumericEditField
        NormalAirwayColorEditField_R    matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_3  matlab.ui.control.Label
        Grade1ColorEditField_B          matlab.ui.control.NumericEditField
        Grade1ColorEditField_G          matlab.ui.control.NumericEditField
        Grade1ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel_2  matlab.ui.control.Label
        Grade2ColorEditField_B          matlab.ui.control.NumericEditField
        Grade2ColorEditField_G          matlab.ui.control.NumericEditField
        Grade2ColorEditField_R          matlab.ui.control.NumericEditField
        NormalAlveoliColorEditFieldLabel  matlab.ui.control.Label
        SkippedPatchLamp                matlab.ui.control.Lamp
        BackgroundLamp                  matlab.ui.control.Lamp
        Grade4Lamp                      matlab.ui.control.Lamp
        Grade3Lamp                      matlab.ui.control.Lamp
        Grade2Lamp                      matlab.ui.control.Lamp
        Grade1Lamp                      matlab.ui.control.Lamp
        NormalAirwayLamp                matlab.ui.control.Lamp
        NormlaAlveoliLamp               matlab.ui.control.Lamp
        BLabel                          matlab.ui.control.Label
        GLabel                          matlab.ui.control.Label
        RLabel                          matlab.ui.control.Label
        CLASSLabel                      matlab.ui.control.Label
        OutputImageScalingTab           matlab.ui.container.Tab
        NormalizedImageOutputCheckBox   matlab.ui.control.CheckBox
        ConfidenceMapPaletteDropDown    matlab.ui.control.DropDown
        ConfidenceMappaletteDropDownLabel  matlab.ui.control.Label
        ConfidenceMapCheckBox           matlab.ui.control.CheckBox
        ConfidenceMapScalingSlider      matlab.ui.control.Slider
        ConfidenceMapScalingSliderLabel  matlab.ui.control.Label
        SegmentationImageCheckBox       matlab.ui.control.CheckBox
        StainNormalizedImageScalingSlider  matlab.ui.control.Slider
        StainNormalizedImageScalingSliderLabel  matlab.ui.control.Label
        SegmentationScalingSlider       matlab.ui.control.Slider
        SegmentationScalingSliderLabel  matlab.ui.control.Label
        GradeMapScalingSlider           matlab.ui.control.Slider
        GradeMapScalingSliderLabel      matlab.ui.control.Label
        LinksTab                        matlab.ui.container.Tab
        Hyperlink_4                     matlab.ui.control.Hyperlink
        Hyperlink_3                     matlab.ui.control.Hyperlink
        Hyperlink_2                     matlab.ui.control.Hyperlink
        Hyperlink                       matlab.ui.control.Hyperlink
        RunButton                       matlab.ui.control.Button
        SelectGLASSAIclassificationsButton  matlab.ui.control.Button
        SelectmanualannotationsButton   matlab.ui.control.Button
        SelectimagesButton              matlab.ui.control.Button
        UITableContextMenu              matlab.ui.container.ContextMenu
        UnselectMenu                    matlab.ui.container.Menu
        ClearMenu                       matlab.ui.container.Menu
        ClearColumns                    matlab.ui.container.Menu
        ClearInvalidFiles               matlab.ui.container.Menu
        ChangeFolderMenu                matlab.ui.container.Menu
        PopulatefromFolderMenu          matlab.ui.container.Menu
        ClearRows                       matlab.ui.container.Menu
        ClearSelection                  matlab.ui.container.Menu
    end


    properties (Access = private)
        % App info %
        GLASSAI_EDITOR_APP_VERSION = '1.0'
        
        % Folder navigation %
        RESOURCE_DIR_PATH
        START_DIR %only used in non-deployed environment
        LAST_SELECTED_DIR

        % Input files %
        IMAGE_FILE_NAME %just need to get image dimensions
        IMAGE_FILE_PATH %just need to get image dimensions
        IMAGE_NAME %without file extension
        MANUAL_ANNOTATION_FILE_NAME
        MANUAL_ANNOTATION_FILE_PATH
        AI_CLASSIFICATION_FILE_NAME 
        AI_CLASSIFICATION_FILE_PATH %output files will be placed here too
        GLASS_AI_LOGFILE_NAME %optional for faster importing and setup
        GLASS_AI_LOGFILE_PATH %optional for faster importing and setup

        % Analysis parameters %
        TUMOR_SIZE_THRESHOLD % Store size threshold for individual tumor segmentation
        IMAGE_RESOLUTION % Store image microns/pixel resolution (unused)
        TUMOR_MERGE_RADIUS % Store value for smoothing radius in microns
        OUTPUT_GRADE_IMAGE_SCALE % scaling applied to grade map output image
        MAKE_SEGMENTATION_IMAGE % Generate labeled tumor segmentation image
        OUTPUT_SEGMENTATION_IMAGE_SCALE % scaling applied to segmentation output image
        OUTPUT_NORMALIZED_IMAGE_SCALE % scaling applied to stain normalized output image
        SMOOTH_METHOD % Select filter used for classification smoothing
        SMOOTH_SIZE =[100 100]% Define filter size in pixels for classificiation smooting
        NORMAL_ALVEOLI_COLOR % color of normal alveoli in grade map
        NORMAL_AIRWAY_COLOR % color of normal airway in grade map
        GRADE_1_COLOR % color of Grade 1 LUAD in grade map [r g b]
        GRADE_2_COLOR % color of Grade 2 LUAD in grade map [r g b]
        GRADE_3_COLOR % color of Grade 3 LUAD in grade map [r g b]
        GRADE_4_COLOR % color of Grade 4 LUAD in grade map [r g b]
        GRADE_5_COLOR % color of Grade 5 LUAD in grade map [r g b]
        BACKGROUND_COLOR % color background in grade map [r g b]
        SKIPPED_PATCH_COLOR % color of skipped patches in grade map  [r g b]
        ASSIGN_OVERALL_GRADES % Assign overall grades to each tumor
        ASSIGN_GRADES_METHOD % Method to use for overall tumor grade assignment
        ASSIGN_GRADES_THRESHOLD % Percentage of tumor area required for grade assignment

        % Annotation mapping to classification score %
        GRADE1_SEARCH_VALUE
        GRADE1_SEARCH_METHOD
        GRADE2_SEARCH_VALUE
        GRADE2_SEARCH_METHOD
        GRADE3_SEARCH_VALUE
        GRADE3_SEARCH_METHOD
        GRADE4_SEARCH_VALUE
        GRADE4_SEARCH_METHOD
        GRADE5_SEARCH_VALUE
        GRADE5_SEARCH_METHOD
        ALVEOLI_SEARCH_VALUE
        ALVEOLI_SEARCH_METHOD
        AIRWAY_SEARCH_VALUE
        AIRWAY_SEARCH_METHOD
        IGNORE_SEARCH_VALUE
        IGNORE_SEARCH_METHOD
        

        % Flags %
        APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE = []
        APPLY_FOR_ALL_INPUT_FILES = []% Flag to apply replace existing decision for all files being analyzed
        ALL_FILES_VALIDATED = false

    end % properties

    methods (Access = private)

        function main(app)
            % define styles used to highlight cells to indicate status
            running_style = uistyle("BackgroundColor",[0.3010 0.7450 0.9330]);
            finished_style = uistyle("BackgroundColor",[0.4660 0.6740 0.1880]);

            %iterate over rows in UITable
            for input_file = 1:size(app.UITable.Data,1)
                %% prep for analysis of current image
                % assign files to properties for analysis
                app.IMAGE_FILE_NAME = app.UITable.Data{input_file,1};
                app.IMAGE_FILE_PATH = app.UITable.Data{input_file,4};
                [~, app.IMAGE_NAME, ~] = fileparts(app.IMAGE_FILE_NAME);
                app.MANUAL_ANNOTATION_FILE_NAME = app.UITable.Data{input_file,3};
                app.MANUAL_ANNOTATION_FILE_PATH = app.UITable.Data{input_file,6};
                app.AI_CLASSIFICATION_FILE_NAME = app.UITable.Data{input_file,2};
                app.AI_CLASSIFICATION_FILE_PATH = app.UITable.Data{input_file,5};

                % reset overwrite flags if requested
                if app.APPLY_FOR_ALL_INPUT_FILES
                    %leave APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE as is
                else %set/reset to empty string
                    app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE = "";
                end

                % mark current row in UITable as in progress
                addStyle(app.UITable,running_style,"row",input_file)
                drawnow

                clc; %clear command line to see steps in non-deployed environment

                %% get image dimensions from input image
                imageInfo = getimagedimensions(app);
                sprintf("Got image info")

                %% adjust classifications using manual annotations
                [~,app.IMAGE_NAME,~]=fileparts(app.IMAGE_FILE_NAME);
                classifications_adjusted = adjustannotationsfromQuPath(app,imageInfo);
                sprintf("Adjusted annotations from QuPath geojson")

                %% save adjusted classificiations
                % rename for consistency with raw GLASS-AI output
                classifications = classifications_adjusted;
                % save to MATFILE
                classificationsAdjustedFilePath = fullfile(app.AI_CLASSIFICATION_FILE_PATH,sprintf("%s_classes_adjusted.mat",app.IMAGE_NAME));
                [classificationsAdjustedFilePath, app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE] = promptreplacexistingfile(app,classificationsAdjustedFilePath,app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE,".mat","_new.mat");
                save(classificationsAdjustedFilePath,'classifications','-v7.3');
                clear classifications %remove duplicated variable from memory
                sprintf("Saved adjusted classifications")

                %% create new tumor grade map
                tumorGradeImage = createtumorgradeimage(app,classifications_adjusted);
                sprintf("Made adjusted tumor grade map")
                tumorGradeImage = imresize(tumorGradeImage,app.OUTPUT_GRADE_IMAGE_SCALE,'nearest');

                % save new tumor grade map to as a .tif
                tumorGradeImageFilePath = fullfile(app.AI_CLASSIFICATION_FILE_PATH,strcat(app.IMAGE_NAME,"_grades_adjusted.tif"));
                [tumorGradeImageFilePath, app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE] = promptreplacexistingfile(app,tumorGradeImageFilePath,app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE,".tif","_new.tif");

                %- use writetiff for large images, imwrite for smaller images
                if (imageInfo.Height * imageInfo.Width) > 40000000
                    writetiff(app,tumorGradeImage,tumorGradeImageFilePath);
                else
                    imwrite(tumorGradeImage,tumorGradeImageFilePath,'tif','Compression','lzw');
                end
                clear tumorGradeImage %free up memory
                sprintf("Saved adjusted tumor grade map")

                %% analyze tumors in image
                % segment tumors
                segmentedTumorMask = segmentindividualtumors(app,classifications_adjusted);
                sprintf("Segmented individual tumors")

                %- TODO: add option to output tumor segmentation map overlaid
                %-       on the input image.

                % analyze individual tumors
                individualTumorStats = individualtumoranalysis(app,classifications_adjusted,segmentedTumorMask);
                sprintf("Analyzed individual tumors")

                % save individual tumor stats to .xlsx file
                individualTumorStatsFilePath = fullfile(app.AI_CLASSIFICATION_FILE_PATH,strcat(app.IMAGE_NAME, "_adjusted.xlsx"));
                [individualTumorStatsFilePath, app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE] = promptreplacexistingfile(app,individualTumorStatsFilePath,app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE,".xlsx","_new.xlsx");
                writetable(individualTumorStats,individualTumorStatsFilePath);

                % analyze tumors at image level
                imageTumorStats = imageleveltumoranalysis(app,classifications_adjusted,individualTumorStats);

                % append image-level tumor stats to 'Whole Slide Summary_adjusted.xlsx'
                %- TODO: add option to define where the image level stats get
                %-       saved
                imageTumorStatsFilePath = fullfile(app.AI_CLASSIFICATION_FILE_PATH,"Whole Slide Summary_adjusted.xlsx");
                writetable(imageTumorStats,imageTumorStatsFilePath,'WriteMode','append','Sheet',1);

                %% create new overall tumor grade mask
                overallTumorGradeMask = makeoveralltumorgrademask(app,classifications_adjusted,segmentedTumorMask,individualTumorStats);
                sprintf("Made adjusted overall tumor grade classifications")

                % save new overall tumor grade mask to MATFILE
                overallTumorGradeMaskFilePath=fullfile(app.AI_CLASSIFICATION_FILE_PATH, strcat(app.IMAGE_NAME,'_overall_tumor_grades_adjusted.mat'));
                [overallTumorGradeMaskFilePath, app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE] = promptreplacexistingfile(app,overallTumorGradeMaskFilePath,app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE,".mat","_new.mat");
                save(overallTumorGradeMaskFilePath,'overallTumorGradeMask', '-v7.3');
                sprintf("Saved adjusted overall tumor grade classifications")

                %% make new overall tumor grade map
                overallTumorGradeImage = createtumorgradeimage(app,overallTumorGradeMask);
                clear overallTumorGradeMask; % clear overallTumorGradeMask matrix from memory
                overallTumorGradeImage = imresize(overallTumorGradeImage,app.OUTPUT_GRADE_IMAGE_SCALE,'nearest');
                sprintf("Made adjusted overall tumor grade map")

                % save overall tumor grade map
                overallTumorGradeImageOutputFilePath = fullfile(app.AI_CLASSIFICATION_FILE_PATH,strcat(app.IMAGE_NAME+"_overall_grades_adjusted.tif"));
                [overallTumorGradeImageOutputFilePath, app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE] = promptreplacexistingfile(app,overallTumorGradeImageOutputFilePath,app.APPLY_FOR_ALL_OUTPUTS_FOR_CURRENT_IMAGE,".tif","_new.tif");

                %- use writetiff for large images, imwrite for smaller images
                if (imageInfo.Height * imageInfo.Width) > 40000000
                    writetiff(app,overallTumorGradeImage,overallTumorGradeImageOutputFilePath);
                else
                    imwrite(overallTumorGradeImage,overallTumorGradeImageOutputFilePath,'tif','Compression','lzw');
                end %

                sprintf("Saved adjusted overall tumor grade map")

                
                %mark current row in UITable as finished
                addStyle(app.UITable,finished_style,"row",input_file)
                drawnow
            end % for input_file = 1:size(app.UITable.Data,1)

            % alert the user that the analysis is complete
            uialert(app.UIFigure,"Processing complete","DONE",'Icon',"success")

        end %function main
        

        function versioncheck(app)
            % Check for updated version of the standalone app on Github.
            %- Look in the raw code of the main branch for the version
            %- property. Extract using regexexp and compare to version
            %- property in this application

            try 
                if strfind(app.GLASSAI_EDITOR_APP_VERSION,"dev")
                    % do nothing
                else
                    %% check app version on Github
                    % fetch current version of the app code from GitHub
                    gitData = webread("https://raw.githubusercontent.com/jlockhar/GLASS-AI-annotation-editor/main/GLASS_AI_annotation_editor.m");
                    % extract version property and parse into major minor patch
                    versionPattern = regexpPattern("(?<=GLASSAI_EDITOR_APP_VERSION \= \')([0-9\.]+)(?=\')");
                    gitVersion = string(extract(gitData,versionPattern));
                    % put GitHub version in app version tooltip
                    app.VersionLabel.Tooltip = sprintf("%s: %s\n","Current GLASS-AI annotation editor app version on GitHub",gitVersion);
                    % parse major.minor.patch version from GitHub version
                    gitVersionMajor = extract(gitVersion,regexpPattern("(?<=^)[0-9]+(?=\.)"));
                    gitVersionMinor = extract(gitVersion,regexpPattern("(?<=^[0-9]+\.)[0-9]+(?=\.)"));
                    gitVersionPatch = extract(gitVersion,regexpPattern("(?<=^[0-9]+\.[0-9]+\.)[0-9]+(?=$)"));

                    %% check version of the local app
                    % parse major.minor.patch version from local app
                    appVersionMajor = extract(app.GLASSAI_EDITOR_APP_VERSION,regexpPattern("(?<=^)[0-9]+(?=\.)"));
                    appVersionMinor = extract(app.GLASSAI_EDITOR_APP_VERSION,regexpPattern("(?<=^[0-9]+\.)[0-9]+(?=\.)"));
                    appVersionPatch = extract(app.GLASSAI_EDITOR_APP_VERSION,regexpPattern("(?<=^[0-9]+\.[0-9]+\.)[0-9]+(?=$)"));

                    %% compare version and prompt for update
                    % compare version numbers
                    majorUpdateAvailable = str2double(appVersionMajor) < str2double(gitVersionMajor);
                    minorUpdateAvailable = ~majorUpdateAvailable & str2double(appVersionMinor) < str2double(gitVersionMinor);
                    patchUpdateAvailable = ~majorUpdateAvailable & ~minorUpdateAvailable & str2double(appVersionPatch) < str2double(gitVersionPatch);

                    % prompt user to update the app if local version is behind GitHub
                    if majorUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [1 0 0];
                        app.UpdateAvailableButton.Tooltip = sprintf("A major version update (%s) is available for the GLASS-AI annotation editor! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                    elseif minorUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [1 1 0];
                        app.UpdateAvailableButton.Tooltip = sprintf("A minor version update (%s) is available for the GLASS-AI annotation editor! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                    elseif patchUpdateAvailable
                        app.UpdateAvailableButton.BackgroundColor = [0 1 1];
                        app.UpdateAvailableButton.Tooltip = sprintf("A patch update (%s) is available for the GLASS-AI annotation editor! Click to get the installer for the latest version.",gitVersion);
                        app.UpdateAvailableButton.Visible = "on";
                        app.UpdateAvailableButton.Enable = "on";
                    else %app.GLASSAI_EDITOR_APP_VERSION == gitVersion
                        %don't do anything if this is the latest version
                    end
                end %if strfind(app.GLASSAI_EDITOR_APP_VERSION,"dev")
            catch ME
                app.VersionLabel.Tooltip = "Could not check app version on GitHub";
                % report error in non-deployed environment
                sprintf("Could not check app version against GitHub:\n %s\n",ME.message)
            end %try
        end %End function: versioncheck

        function image_info = getimagedimensions(app)
            % get the dimensions and relative scale of input image. Scale
            % is calculated relative to the expected 20x magnfication

            mag = 20;

            %This function requires the Image Processing Toolbox to handle .svs files

            [~,~,extension] = fileparts(app.IMAGE_FILE_NAME);

            % get info from .svs file
            if extension == ".svs"
                % read file header and return images sizes and resolution
                I1info=imfinfo(fullfile(app.IMAGE_FILE_PATH,app.IMAGE_FILE_NAME));
                imageNo=size(I1info,1); %number of images in svs file
                imageInfo=zeros(imageNo,5); %initialize imageInfo to zeros

                % iterate over images in svs file
                for i=1:imageNo

                    % get image size
                    imageInfo(i,1)=I1info(i).Width;
                    imageInfo(i,2)=I1info(i).Height;
                    imageInfo(i,3)=i;

                    % get image magnification and resolutions
                    try
                        imageDescription=I1info(i).ImageDescription;
                        C=strsplit(imageDescription,'|');
                        C2=C(contains(C,'MPP')); % microns per pixel
                        if(~isempty(C2))
                            C3=strsplit(C2{1},'=');
                            imageInfo(i,4)=str2double(C3{2});
                        else
                            imageInfo(i,4)=NaN;
                        end

                        C2=C(contains(C,'AppMag')); %magnification
                        if(~isempty(C2))
                            C3=strsplit(C2{1},'=');
                            imageMagnification=str2double(C3{2});
                            imageInfo(i,5)=imageMagnification;
                        else
                            imageInfo(i,5)=NaN;
                        end

                    catch
                        imageInfo(i,4)=NaN;
                        imageInfo(i,5)=NaN;
                    end %try
                end % for: iterate over images in svs file

                imageInfo = sortrows(imageInfo);

                % find the images of target magnifcation
                pos = find(imageInfo(:,5) == mag);
                if ~isempty(pos)
                    % find the largest image with matching magnfication
                    pos = max(pos(:,1));
                    % get image dimensions and scale
                    image_info.Width = imageInfo(pos,1);
                    image_info.Height = imageInfo(pos,2);
                    image_info.Scale = 1; %relative scale = 1
                else %if no images with target magnfication look for scaled matches

                    %find images with with higher magnification
                    pos = find(mod(imageInfo(:,5),mag)==0);
                    max_width = imageInfo(max(pos(:,1)),1); %width of largest image
                    max_mag = imageInfo(max(pos(:,1)),5); %mag of largest image

                    %calculate magnification of images
                    image_scales = ((imageInfo(:,1)/max_width))*max_mag;

                    %find images with magnfications matching mag arg
                    pos  = find(image_scales(:,1) == mag);

                    % get image dimensions and scale
                    if ~isempty(pos)
                        image_info.Width = imageInfo(pos(1),1);
                        image_info.Height = imageInfo(pos(1),2);
                        image_info.Scale = mag/max_mag; %relative scale to largest image
                    else
                        error('Could not find images with 20x magnification in the svs file!');
                    end
                end

            else %if not an .svs file
                warning('Input file is not a .svs; unable to determine magnfication. Defaulting to relative scale of 1.')
                imageInfo = imfinfo(fullfile(app.IMAGE_FILE_PATH,app.IMAGE_FILE_NAME));
                image_info.Width = imageInfo.Width;
                image_info.Height = imageInfo.Height;
                image_info.Scale = 1; %relative scale = 1
            end
        end % End function: getimageinfo


        function segmentedTumorMask = segmentindividualtumors(app, segmentedTumorMask)
            % create a binary image mask of tumors after filling holes,
            % merging nearby tumor pixels, and filtering out small tumors
            
            % calculate morhpometric parameters
            PIXEL_AREA = 0.5022^2;%presumed since this is what GLASS-AI expects
            MERGE_RADIUS = ceil(app.TUMOR_MERGE_RADIUS/0.5022); % convert microns to pixels
            SIZE_THRESHOLD = ceil(app.TUMOR_SIZE_THRESHOLD/PIXEL_AREA); % convert sq. microns to pixels

            % make a mask of tumor pixels
            segmentedTumorMask = segmentedTumorMask==1|segmentedTumorMask==2|segmentedTumorMask==3|segmentedTumorMask==4|segmentedTumorMask==8;

            % merge nearby tumors by morphometric closing
            segmentedTumorMask = imfill(segmentedTumorMask,'holes'); % fill exisiting holes
            segmentedTumorMask = imclose(segmentedTumorMask,strel('disk',MERGE_RADIUS));
            segmentedTumorMask = imfill(segmentedTumorMask,'holes'); % fill new holes

            % filter small tumors be morphometric opening
            segmentedTumorMask = bwareaopen(segmentedTumorMask,SIZE_THRESHOLD,8);

        end % End function: segmentindividualtumors

        function individualTumorStats = individualtumoranalysis(app,classifications,segmentedTumorMask)
            % calculate stats for individual tumors in image

            PIXEL_AREA = 0.5022^2;%presumed since this is what GLASS-AI expects

            % get indices for pixels of each grade
            indicesG1 = find(classifications==1);
            indicesG2 = find(classifications==2);
            indicesG3 = find(classifications==3);
            indicesG4 = find(classifications==4);
            indicesG5 = find(classifications==8); %grade 5 stored as 8
            clear classifications %free up some memory

            % get tumor centroids for labeling
            tumorCC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
            s = regionprops(tumorCC,'Centroid'); % Get centroid coordinates for tumor labels
            tumorCentroids = cat(1,s.Centroid); % Convert centroid coordinates to [x y] matrix
            clear segmentedTumorMask

            % individual tumor table
            %- define column names and data types
            individualTumorTableCols = {
                %column name            %data type
                'image_id'              'string'
                'tumor_id'              'double'
                'tumor_grade'           'double'
                'grade_assign_method'   'string'
                'g1_percentage'         'double'
                'g2_percentage'         'double'
                'g3_percentage'         'double'
                'g4_percentage'         'double'
                'g5_percentage'         'double'
                'g1_area'               'double'
                'g2_area'               'double'
                'g3_area'               'double'
                'g4_area'               'double'
                'g5_area'               'double'
                'total_tumor_area'      'double'
                'centroid_x'            'double'
                'centroid_y'            'double'
                }'; %transpose to horizontal cell array before assignment
            %- initialize table
            individualTumorTableColsCount = size(individualTumorTableCols,2);

            %% analyze individual tumors
            %- skip if no tumors were found in slide
            if ~isempty(tumorCentroids)

                % get segmented tumor count
                totalTumorCountInSlide = length(tumorCentroids(:,1));

                % intialize individual tumors table for slide
                individualTumorStats = table( ...
                    'Size',[totalTumorCountInSlide individualTumorTableColsCount],...
                    'VariableNames',individualTumorTableCols(1,:),...
                    'VariableTypes',individualTumorTableCols(2,:));

                % analyze each segmented tumor in image
                for iTumor = 1:totalTumorCountInSlide
                    % get indices of pixels in tumor
                    tumorIndices=tumorCC.PixelIdxList{iTumor};

                    % Calculate area of each grade in individual tumor
                    tumorG1Area = nnz(ismember(tumorIndices,indicesG1))*PIXEL_AREA;
                    tumorG2Area = nnz(ismember(tumorIndices,indicesG2))*PIXEL_AREA;
                    tumorG3Area = nnz(ismember(tumorIndices,indicesG3))*PIXEL_AREA;
                    tumorG4Area = nnz(ismember(tumorIndices,indicesG4))*PIXEL_AREA;
                    tumorG5Area = nnz(ismember(tumorIndices,indicesG5))*PIXEL_AREA;

                    % Sum area of all grades in individual tumor
                    tumorTotalArea = tumorG1Area + tumorG2Area + tumorG3Area + tumorG4Area + tumorG5Area;

                    % Calculate proportion of each grade in tumor
                    tumorG1Percent = (double(tumorG1Area)/tumorTotalArea);
                    tumorG2Percent = (double(tumorG2Area)/tumorTotalArea);
                    tumorG3Percent = (double(tumorG3Area)/tumorTotalArea);
                    tumorG4Percent = (double(tumorG4Area)/tumorTotalArea);
                    tumorG5Percent = (double(tumorG5Area)/tumorTotalArea);

                    % Assign overall grade to tumor
                    if app.ASSIGN_OVERALL_GRADES
                        switch app.ASSIGN_GRADES_METHOD
                            case "majority"
                                [~,tumorGrade] = max([tumorG1Percent tumorG2Percent tumorG3Percent tumorG4Percent tumorG5Percent]);
                            case "highest"
                                if tumorG5Percent >= app.ASSIGN_GRADES_THRESHOLD
                                    tumorGrade = 5;
                                elseif tumorG4Percent >= app.ASSIGN_GRADES_THRESHOLD
                                    tumorGrade = 4;
                                elseif tumorG3Percent >= app.ASSIGN_GRADES_THRESHOLD
                                    tumorGrade = 3;
                                elseif tumorG2Percent >= app.ASSIGN_GRADES_THRESHOLD
                                    tumorGrade = 2;
                                elseif tumorG1Percent >= app.ASSIGN_GRADES_THRESHOLD
                                    tumorGrade = 1;
                                end
                            otherwise
                                tumorGrade = 0;
                        end % End SWITCH: app.ASSIGN_GRADES_METHOD
                    else
                        tumorGrade = 0;
                    end % End IF: app.ASSIGN_OVERALL_GRADES

                    % add individual tumor stats to table
                    individualTumorStats(iTumor,:) = {
                        %variable                               %column name            %data type
                        [app.IMAGE_NAME '_adjusted'],...        'image_id'              'string'
                        iTumor,...                              'tumor_id'              'double'
                        tumorGrade,...                          'tumor_grade'           'double'
                        app.ASSIGN_GRADES_METHOD,...            'grade_assign_method'   'string'
                        tumorG1Percent,...                      'g1_percentage'         'double'
                        tumorG2Percent,...                      'g2_percentage'         'double'
                        tumorG3Percent,...                      'g3_percentage'         'double'
                        tumorG4Percent,...                      'g4_percentage'         'double'
                        tumorG5Percent,...                      'g5_percentage'         'double'
                        tumorG1Area,...                         'g1_area'               'double'
                        tumorG2Area,...                         'g2_area'               'double'
                        tumorG3Area,...                         'g3_area'               'double'
                        tumorG4Area,...                         'g4_area'               'double'
                        tumorG5Area,...                         'g5_area'               'double'
                        tumorTotalArea,...                      'total_tumor_area'      'double'
                        tumorCentroids(iTumor,1),...            'centroid_x'            'double'
                        tumorCentroids(iTumor,2),...            'centroid_y'            'double'
                        };
                end % if individual tumors in slide

            else %no tumors found in slide
                % output empty individual tumors table
                individualTumorStats = table( ...
                    'Size',[0 individualTumorTableColsCount],...
                    'VariableNames',individualTumorTableCols(1,:),...
                    'VariableTypes',individualTumorTableCols(2,:));
            end %if ~isempty(tumorCentroids)
            sprintf("%s - %s\n",string(datetime),"Calculated individual tumor stats")
        end % End function: individualtumoranalysis

        function imageTumorStatsTable = imageleveltumoranalysis(app, classifications, individualTumorStats)
            % calculate stats for tumor and tissue areas in whole image
          
            PIXEL_AREA = 0.5022^2;%presumed since this is what GLASS-AI expects

            % change skipped pixels to background
            classifications(classifications==0) = 7;

            % calculate total tissue area in slide
            imageTotalTissueArea = nnz(classifications~=7)*PIXEL_AREA;

            % calculate tumor counts
            imageTotalTumorCount = height(individualTumorStats);

            % calculate the number of tumors of each grade if requested
            %- grade assignment method defined by user
            if app.ASSIGN_OVERALL_GRADES == true
                imageG1TumorCount = nnz(individualTumorStats.tumor_grade==1);
                imageG2TumorCount = nnz(individualTumorStats.tumor_grade==2);
                imageG3TumorCount = nnz(individualTumorStats.tumor_grade==3);
                imageG4TumorCount = nnz(individualTumorStats.tumor_grade==4);
                imageG5TumorCount = nnz(individualTumorStats.tumor_grade==5);
            else
                imageG1TumorCount = NaN;
                imageG2TumorCount = NaN;
                imageG3TumorCount = NaN;
                imageG4TumorCount = NaN;
                imageG5TumorCount = NaN;
            end % if app.ASSIGN_OVERALL_GRADES == true

            % calculate total area of each grade in the image
            imageG1Area = nnz(classifications==1)*PIXEL_AREA;
            imageG2Area = nnz(classifications==2)*PIXEL_AREA;
            imageG3Area = nnz(classifications==3)*PIXEL_AREA;
            imageG4Area = nnz(classifications==4)*PIXEL_AREA;
            imageG5Area = nnz(classifications==8)*PIXEL_AREA; %grade 5 stored as 8 in classifications

            % calculate total tumor area in slide
            imageTotalTumorArea = imageG1Area+imageG2Area+imageG3Area+imageG4Area+imageG5Area;

            % Define tables to save stats
            % Whole slide summary table
            %- define column names and data types
            imageTumorStatsTableCols = { 
                %column name                    data type
                'image_id'                      'string'
                'number_of_tumors'              'double'
                'g1_tumor_count'                'double'
                'g2_tumor_count'                'double'
                'g3_tumor_count'                'double'
                'g4_tumor_count'                'double'
                'g5_tumor_count'                'double'
                'grade_assign_method'           'string'
                'g1_percentage_in_image'        'double'
                'g2_percentage_in_image'        'double'
                'g3_percentage_in_image'        'double'
                'g4_percentage_in_image'        'double'
                'g5_percentage_in_image'        'double'
                'g1_area_in_image'              'double'
                'g2_area_in_image'              'double'
                'g3_area_in_image'              'double'
                'g4_area_in_image'              'double'
                'g5_area_in_image'              'double'
                'total_tumor_area_in_image'     'double'
                'total_tissue_area_in_image'    'double'
                }';%transpose to horizontal cell array before assignment

            %- intialize table
            imageTumorStatsTable = table( ...
                'Size',[1 size(imageTumorStatsTableCols,2)],...
                'VariableNames',imageTumorStatsTableCols(1,:), ...
                'VariableTypes',imageTumorStatsTableCols(2,:));


            % put whole slide stats into table
            imageTumorStatsTable(1,:) = {
                %variable                               column name                 data type
                [app.IMAGE_NAME '_adjusted'],...        'image_id'                  'string'
                imageTotalTumorCount,...                'number_of_tumors'          'double'
                imageG1TumorCount,...                   'g1_tumor_count'            'double'
                imageG2TumorCount,...                   'g2_tumor_count'            'double'
                imageG3TumorCount,...                   'g3_tumor_count'            'double'
                imageG4TumorCount,...                   'g4_tumor_count'            'double'
                imageG5TumorCount,...                   'g5_tumor_count'            'double'
                app.ASSIGN_GRADES_METHOD,...            'grade_assign_method'       'string'
                (imageG1Area / imageTotalTumorArea),... 'g1_percentage_in_image'    'double'
                (imageG2Area / imageTotalTumorArea),... 'g2_percentage_in_image'    'double'
                (imageG3Area / imageTotalTumorArea),... 'g3_percentage_in_image'    'double'
                (imageG4Area / imageTotalTumorArea),... 'g4_percentage_in_image'    'double'
                (imageG5Area / imageTotalTumorArea),... 'g5_percentage_in_image'    'double'
                imageG1Area,...                         'g1_area_in_image'          'double'
                imageG2Area,...                         'g2_area_in_image'          'double'
                imageG3Area,...                         'g3_area_in_image'          'double'
                imageG4Area,...                         'g4_area_in_image'          'double'
                imageG5Area,...                         'g5_area_in_image'          'double'
                imageTotalTumorArea,...                 'total_tumor_area_in_image' 'double'
                imageTotalTissueArea,...                'total_tissue_area_in_image''double'
                };

            sprintf("%s - %s\n",string(datetime),"Calculated image-level stats")
        end % End function: imageleveltumoranalysis


        function tumorIdLabelMask = maketumorlabelmask(~, segmentedTumorMask)
            % make a mask of each segmented tumor that stores the ID of the
            % tumor as the pixel intensity.

            % initialize labeled tumor image
            %- use uint16 data type to fit ≥ 256 individual tumors
            tumorIdLabelMask = zeros(size(segmentedTumorMask),"uint16");

            % get tumor centroids for labeling
            tumorCC = bwconncomp(segmentedTumorMask,8); % Segment individual tumors
            tumorRegionProps = regionprops(tumorCC,'Centroid'); % Get centroid coordinates for tumor labels
            tumorCentroids = cat(1,tumorRegionProps.Centroid); % Convert centroid coordinates to [x y] matrix

            if ~isempty(tumorCentroids)
                % get segmented tumor count
                totalTumorCountInSlide = length(tumorCentroids(:,1));

                % analyze each segmented tumor in image
                for iTumor=1:totalTumorCountInSlide
                    % get indices of pixels in tumor
                    classificationIndices=tumorCC.PixelIdxList{iTumor};

                    % add tumor to labeled tumor mask
                    %- use tumor ID as pixel intensity
                    tumorIdLabelMask(classificationIndices) = iTumor;
                end % for Tumor=1:totalTumorCountInSlide
            else % no tumors found in slide
                return
            end % end if ~isempty(tumorCentroids)
        end % End function: maketumorlabelmask

        function tumorOverallGradeMask = makeoveralltumorgrademask(~,tumorOverallGradeMask,segmentedTumorMask,individualTumorStats)
            % mask individual tumors with overall grade as pixel intensity

            % get list of pixels for each tumor in segmentedTumorMask
            tumorCC = bwconncomp(segmentedTumorMask,8);

            % iterate over segmented tumors
            if tumorCC.NumObjects > 0
                for iTumor = 1:tumorCC.NumObjects
                    % get indices of pixels in tumors
                    pixelIndices=tumorCC.PixelIdxList{iTumor};

                    % add tumor grade to grade mask
                    tumor_grade = individualTumorStats.tumor_grade(iTumor);
                    % change grade 5 to 8 for consistency with
                    % classifications
                    if tumor_grade == 5 
                        tumor_grade = 8;
                    end

                    %set pixels values equal to tumor_grade
                    tumorOverallGradeMask(pixelIndices) = tumor_grade;
                end % for iTumor = 1:tumorCC.NumObjects
            else %no tumors found in image
                sprintf("%s - %s: %s\n",string(datetime),"OVERALL GRADING", "No tumors found in image.")
            end %if tumorCC.NumObjects > 0
        end %function makeoveralltumorgrademask

        function annotation_mask = adjustannotationsfromQuPath(app,image_info)
            % convert annotations generated in QuPath into polygons
            % consistent with the scoring conventions used in the GLASS-AI
            % classification MATFILE

            % read in annotation file
            annotations_json = jsondecode(fileread(fullfile(app.MANUAL_ANNOTATION_FILE_PATH,app.MANUAL_ANNOTATION_FILE_NAME)));

            % get the number of annotations in annotation file
            annotation_object_count = numel(annotations_json.features);

            % inititalize storage variables
            grades = string(zeros(1,annotation_object_count)); %store annotation name
            annotation_polys = cell(annotation_object_count,1); %store annotation mask

            % iterate over each annotation in annotation file
            for annotation_object = 1:annotation_object_count
                % get annotation name
                grades(annotation_object) = convertCharsToStrings(annotations_json.features(annotation_object).properties.classification.name);
                
                % check if annotation is a simple or complex shape
                %- simple shapes (no holes) coordinates are doubles
                %- complex shapes (with holes) coordinates are cells
                %- TODO: add support for multipolygon (discontinous shapes)                
                if class(annotations_json.features(annotation_object).geometry.coordinates) == "double"
                    % annotation is a simple shape
                    % get vertices for annotation
                    xVerts = annotations_json.features(annotation_object).geometry.coordinates(:,:,1);
                    yVerts = annotations_json.features(annotation_object).geometry.coordinates(:,:,2);

                    % rescale coordinates if using scaled image
                    xVerts = xVerts * image_info.Scale;
                    yVerts = yVerts * image_info.Scale;
                    
                    % store coordinates for annotation in a cell
                    XY = {[xVerts(:), yVerts(:)]};
                    annotation_polys(annotation_object) = XY;
                
                elseif class(annotations_json.features(annotation_object).geometry.coordinates) == "cell"
                    % annotation is a complex shape

                    % concat the shapes together
                    %- holes in complex shapes are generated when
                    %- converted to polygons
                    XY = vertcat(annotations_json.features(annotation_object).geometry.coordinates{:});
                    %rescale coordinates if using scaled image
                    XY = XY * image_info.Scale;
                    
                    % store coordinates for annotation in a cell
                    annotation_polys(annotation_object) = {XY};
                end % if class(annotations_json.features(annotation_object).geometry.coordinates) == "double"
            end % for annotation_object = 1:annotation_object_count

            % make polygons for each class
            G1_annotation_polys = annotation_polys(feval(app.GRADE1_SEARCH_METHOD,grades,app.GRADE1_SEARCH_VALUE));
            G2_annotation_polys = annotation_polys(feval(app.GRADE2_SEARCH_METHOD,grades,app.GRADE2_SEARCH_VALUE));
            G3_annotation_polys = annotation_polys(feval(app.GRADE3_SEARCH_METHOD,grades,app.GRADE3_SEARCH_VALUE));
            G4_annotation_polys = annotation_polys(feval(app.GRADE4_SEARCH_METHOD,grades,app.GRADE4_SEARCH_VALUE));
            G5_annotation_polys = annotation_polys(feval(app.GRADE5_SEARCH_METHOD,grades,app.GRADE5_SEARCH_VALUE));
            NormAlv_annotation_polys = annotation_polys(feval(app.ALVEOLI_SEARCH_METHOD,grades,app.ALVEOLI_SEARCH_VALUE));
            NormAir_annotation_polys = annotation_polys(feval(app.AIRWAY_SEARCH_METHOD,grades,app.AIRWAY_SEARCH_VALUE));
            Ignore_annotation_polys = annotation_polys(feval(app.IGNORE_SEARCH_METHOD,grades,app.IGNORE_SEARCH_VALUE));
            
            % load GLASS-AI annotations
            if(isfile(fullfile(app.AI_CLASSIFICATION_FILE_PATH,app.AI_CLASSIFICATION_FILE_NAME)))
                tmpC  = struct2cell(load(fullfile(app.AI_CLASSIFICATION_FILE_PATH,app.AI_CLASSIFICATION_FILE_NAME)));
                annotation_mask = tmpC{1};
                % store background pixel indices to restore later
                background_mask = annotation_mask == 7;
            else
                annotation_mask = zeros(image_info.Height, image_info.Width,'uint8')+7;
                background_mask = [];
            end % if(isfile(fullfile(app.AI_CLASSIFICATION_FILE_PATH,app.AI_CLASSIFICATION_FILE_NAME)))

            % make masks from polys
            %- normal tissue masks
            NormAlv_mask = mpoly2mask(NormAlv_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(NormAlv_mask) = 5;
            clear NormAlv_mask
            NormAir_mask = mpoly2mask(NormAir_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(NormAir_mask) = 6;
            clear NormAir_mask
            %- tumor masks
            G1_mask = mpoly2mask(G1_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(G1_mask) = 1;
            clear G1_mask
            G2_mask = mpoly2mask(G2_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(G2_mask) = 2;
            clear G2_mask
            G3_mask = mpoly2mask(G3_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(G3_mask) = 3;
            clear G3_mask
            G4_mask = mpoly2mask(G4_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(G4_mask) = 4;
            clear G4_mask
            G5_mask = mpoly2mask(G5_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(G5_mask) = 8;
            clear G5_mask
            %- ignore mask
            ignore_mask = mpoly2mask(Ignore_annotation_polys,[image_info.Height, image_info.Width]);
            annotation_mask(ignore_mask) = 0;
            clear ignore_mask
            
            %fill background annotations back in
            annotation_mask(background_mask) = 7;
            clear background_mask
        end % function adjustannotationsfromQuPath

        function gradeImage = createtumorgradeimage(app,classifications)
            % make tumor grade image from classifications

            %initialize gradeImage RGB arrays
            [classificationsWidth,classificationsHeight] = size(classifications);
            ch1 = zeros(classificationsWidth,classificationsHeight, 'uint8');
            ch2 = zeros(classificationsWidth,classificationsHeight, 'uint8');
            ch3 = zeros(classificationsWidth,classificationsHeight, 'uint8');

            % Skipped Patches/Ignored regions
            Inds = classifications==0;
            ch1(Inds) = app.SKIPPED_PATCH_COLOR(1);
            ch2(Inds) = app.SKIPPED_PATCH_COLOR(2);
            ch3(Inds) = app.SKIPPED_PATCH_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored skipped pixels")

            % Grade 1
            Inds = classifications==1;
            ch1(Inds) = app.GRADE_1_COLOR(1);
            ch2(Inds) = app.GRADE_1_COLOR(2);
            ch3(Inds) = app.GRADE_1_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 1 pixels")

            %Grade 2
            Inds = classifications==2;
            ch1(Inds) = app.GRADE_2_COLOR(1);
            ch2(Inds) = app.GRADE_2_COLOR(2);
            ch3(Inds) = app.GRADE_2_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 2 pixels")

            % Grade 3
            Inds = classifications==3;
            ch1(Inds) = app.GRADE_3_COLOR(1);
            ch2(Inds) = app.GRADE_3_COLOR(2);
            ch3(Inds) = app.GRADE_3_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 3 pixels")

            % Grade 4
            Inds = classifications==4;
            ch1(Inds) = app.GRADE_4_COLOR(1);
            ch2(Inds) = app.GRADE_4_COLOR(2);
            ch3(Inds) = app.GRADE_4_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 4 pixels")

            % Grade 5
            Inds = classifications==8;
            ch1(Inds) = app.GRADE_5_COLOR(1);
            ch2(Inds) = app.GRADE_5_COLOR(2);
            ch3(Inds) = app.GRADE_5_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Grade 5 pixels")

            % Alveoli
            Inds = classifications==5;
            ch1(Inds) = app.NORMAL_ALVEOLI_COLOR(1);
            ch2(Inds) = app.NORMAL_ALVEOLI_COLOR(2);
            ch3(Inds) = app.NORMAL_ALVEOLI_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Alveoli pixels")

            % Airways
            Inds = classifications==6;
            ch1(Inds) = app.NORMAL_AIRWAY_COLOR(1);
            ch2(Inds) = app.NORMAL_AIRWAY_COLOR(2);
            ch3(Inds) = app.NORMAL_AIRWAY_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored Airway pixels")

            % Background/void
            Inds = classifications==7;
            ch1(Inds) = app.BACKGROUND_COLOR(1);
            ch2(Inds) = app.BACKGROUND_COLOR(2);
            ch3(Inds) = app.BACKGROUND_COLOR(3);
            sprintf("%s - %s\n", string(datetime),"GRADE IMAGE: Colored background pixels")

            % merge channels to create RGB image
            gradeImage = cat(3,ch1,ch2,ch3);

        end %end function: createtumorgradeimage

        function  writetiff(~,Image,filename)
            %write tiff files with metadata

            bt = Tiff(filename,'w8');
            tags.ImageLength         = size(Image,1);
            tags.ImageWidth          = size(Image,2);
            tags.Photometric         = Tiff.Photometric.RGB;
            tags.BitsPerSample       = 8;
            tags.SamplesPerPixel     = size(Image,3);
            tags.TileWidth           = 128;
            tags.TileLength          = 128;
            tags.Compression         = Tiff.Compression.JPEG;
            tags.PlanarConfiguration = Tiff.PlanarConfiguration.Chunky;
            tags.Software            = 'MATLAB/GLASS-AI_annotation_editor';

            setTag(bt, tags);
            write(bt, Image);
            close(bt);
        end %function writetiff

        function [fullFilePath, applyToAllFiles] = promptreplacexistingfile(app,fullFilePath,applyToAllFiles,oldEnd,newEnd)
            % ask user what to do with files that already exists. Chosen
            % option can be applied to all files for current image being
            % analyzed or all images in the analysis run.

            %check if file exists, if so prompt for action
            if isfile(fullFilePath)
                % set values if requested to apply to all files for input
                % image
                if applyToAllFiles == "overwrite"
                    replaceFile = 'Yes to all';
                elseif applyToAllFiles == "keep"
                    replaceFile = 'No to all';
                else %ask user what to do
                    promptMessage = sprintf("%s already exits.\n Overwrite existing file?",fullFilePath);
                    replaceFile = uiconfirm(app.UIFigure,promptMessage,"Replace file?", ...
                        "Options",["Yes to all","Yes","No","No to all"], ...
                        "DefaultOption",2);
                    replaceFile = string(replaceFile);
                end
                % ask user if they want to apply their choice for all input
                % files if they haven't already said yes
                if size(app.UITable.Data,1) > 1 & isempty(app.APPLY_FOR_ALL_INPUT_FILES)
                    promptMessage = sprintf("Apply choice (%s) to all images to be analyzed?",replaceFile);
                    applyForAllInputs = uiconfirm(app.UIFigure,promptMessage,"Perform for all images?", ...
                        "Options",["Yes","No"], ...
                        "DefaultOption",1);
                    if matches(applyForAllInputs,"Yes")
                        app.APPLY_FOR_ALL_INPUT_FILES = true;
                    end
                end

                %apply choice to file
                switch replaceFile
                    case "Yes"
                        delete(fullFilePath)
                        applyToAllFiles = "";
                    case "Yes to all"
                        delete(fullFilePath)
                        applyToAllFiles = "overwrite";
                    case "No to all"
                        fullFilePath = replace(fullFilePath,oldEnd,newEnd);
                        applyToAllFiles = "keep";
                    case "No"
                        %append new to the end of the file name before .ext
                        fullFilePath = replace(fullFilePath,oldEnd,newEnd);
                        applyToAllFiles = "";
                end %switch replaceFile
            end % if isfile(fullFilePath)
        end % function promptreplaceexistingfile
        
        function interpretlogfile(app,logfile_path)
            %use information from GLASS-AI logfile to set options and try
            %to find files.
            
            % read and parse logfile to struct
            log_struct = parseGLASSAIlogfile(logfile_path);

            %% set gui elements to values from logfile
            % empty patch skipping (not used in this app)
            app.PatchTissueThresholdInput.Value = log_struct.RunParameters.PatchSkipThreshold;
            % feature smoothing
            app.SmoothingMethodDropDown.Value = log_struct.RunParameters.SmoothingMethod;
            app.SmoothingSizeSpinner.Value = log_struct.RunParameters.SmoothingDiameter;
            % tumor size thresholding
            app.TumorSizeThresholdInput.Value = log_struct.RunParameters.TumorSizeThreshold;
            app.TumorMergeRadiusInput.Value = log_struct.RunParameters.TumorMergeDistance;
            % overall tumor grade assignment
            app.AssignoverallgradetoeachtumorCheckBox.Value = log_struct.RunParameters.AssignOverallGrades;
            app.AssignmentmethodDropDown.Value = log_struct.RunParameters.OverallGradeMethod;
            app.TumorgradethresholdEditField.Value = log_struct.RunParameters.OverallGradeThreshold;

            % grade map colors
            %- grade1
            app.Grade1ColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.Grade1Color(1);
            app.Grade1ColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.Grade1Color(2);
            app.Grade1ColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.Grade1Color(3);
            %- grade2
            app.Grade2ColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.Grade2Color(1);
            app.Grade2ColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.Grade2Color(2);
            app.Grade2ColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.Grade2Color(3);
            %- grade3
            app.Grade3ColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.Grade3Color(1);
            app.Grade3ColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.Grade3Color(2);
            app.Grade3ColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.Grade3Color(3);
            %- grade4
            app.Grade4ColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.Grade4Color(1);
            app.Grade4ColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.Grade4Color(2);
            app.Grade4ColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.Grade4Color(3);
            %- alveoli
            app.NormalAlveoliColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.AlveoliColor(1);
            app.NormalAlveoliColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.AlveoliColor(2);
            app.NormalAlveoliColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.AlveoliColor(3);
            %- airway
            app.NormalAirwayColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.AirwayColor(1);
            app.NormalAirwayColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.AirwayColor(2);
            app.NormalAirwayColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.AirwayColor(3);
            %- background
            app.BackgroundColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.BackgroundColor(1);
            app.BackgroundColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.BackgroundColor(2);
            app.BackgroundColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.BackgroundColor(3);
            %- skipped patches / ignore regions
            app.SkippedPatchColorEditField_R.Value = log_struct.RunParameters.Outputs.GradeMap.SkippedColor(1);
            app.SkippedPatchColorEditField_G.Value = log_struct.RunParameters.Outputs.GradeMap.SkippedColor(2);
            app.SkippedPatchColorEditField_B.Value = log_struct.RunParameters.Outputs.GradeMap.SkippedColor(3);

            % output images/scales
            %- grade map
            app.GradeMapScalingSlider.Value = log_struct.RunParameters.Outputs.GradeMap.Scale*100;
            
            %- segmentation image
            try
                if not(matches(class(log_struct.RunParameters.Outputs.SegmentationImage.SaveImage), 'logical'))
                error("Unexpected class for log_struct.RunParameters.Outputs.SegmentationImage.SaveImage")
                end
            catch
                sprintf("WARNING:log_struct.RunParameters.Outputs.SegmentationImage.SaveImage was not a logical value. It was instead a %s.\nWARNING: Defaulting to false.\n",class(log_struct.RunParameters.Outputs.SegmentationImage.SaveImage))
                log_struct.RunParameters.Outputs.SegmentationImage.SaveImage = false;
            end % try
            app.SegmentationImageCheckBox.Value = log_struct.RunParameters.Outputs.SegmentationImage.SaveImage;
            app.SegmentationScalingSlider.Value = log_struct.RunParameters.Outputs.SegmentationImage.Scale*100;
            
            %- normalized image (not used in this app)
            try
                if not(matches(class(log_struct.RunParameters.Outputs.NormalizedImage.SaveImage), 'logical'))
                    error("Unexpected class for log_struct.RunParameters.Outputs.NormalizedImage.SaveImage")
                end % if not(matches(class(log_struct.RunParameters.Outputs.NormalizedImage.SaveImage), 'logical'))
            catch
                sprintf("WARNING:log_struct.RunParameters.Outputs.NormalizedImage.SaveImage was not a logical value. It was instead a %s.\nWARNING: Defaulting to false.\n",class(log_struct.RunParameters.Outputs.NormalizedImage.SaveImage))
                log_struct.RunParameters.Outputs.NormalizedImage.SaveImage = false;
            end % try
            app.NormalizedImageOutputCheckBox.Value = log_struct.RunParameters.Outputs.NormalizedImage.SaveImage;
            app.StainNormalizedImageScalingSlider.Value = log_struct.RunParameters.Outputs.NormalizedImage.Scale*100;

            %- confidence map (not used in this app)
            try
                if not(matches(class(log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage), 'logical'))
                    error("Unexpected class for log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage")
                end %  if not(matches(class(log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage), 'logical'))
            catch
                sprintf("WARNING:log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage was not a logical value. It was instead a %s.\nWARNING: Defaulting to false.\n",class(log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage))
                log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage = false;
            end % try

            app.ConfidenceMapCheckBox.Value = log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage;
            app.ConfidenceMapScalingSlider.Value = log_struct.RunParameters.Outputs.ConfidenceMap.Scale*100;
            %-- check that color map is an option, default to 'hot'
            color_maps = {'hot','gray','bone','turbo','cool'};
            try
                if not(matches(class(log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap),"char"))
                    error("Unexpected class for log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap")
                end % if not(matches(class(log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap),"char"))

                if not(matches(log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap,color_maps))
                    sprintf("WARNING:log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap was not an expected value. It was instead a %s.\nWARNING: Defaulting to 'hot'.\n",log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap)
                    log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap = 'hot';
                end %  if not(matches(log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap,color_maps))
            catch
                sprintf("WARNING:log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap was not a character value. It was instead a %s.\nWARNING: Defaulting to 'hot'.\n",class(log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap))
                log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap = 'hot';
            end % try
            app.ConfidenceMapPaletteDropDown.Value = log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap;
            
            %% get input images and output classifications from logfile
            %- log_struct keeps each analyzed image as individual field
            %- pull field names to then iterate through.
            fns = fieldnames(log_struct.AnalyzedImages);
            % iterate over each image in log_struct
            table_row = 0;
            for analyzed_image_ind = 1:length(fns)
                % get standardized file path to input image
                [image_file_path,image_file_name,image_file_ext] = fileparts(strrep(char(log_struct.AnalyzedImages.(fns{analyzed_image_ind}).FilePath),'\','/'));
                image_file_name = [image_file_name image_file_ext];
                % get standardized file path to output classfication MATFILE
                [classification_file_path, classification_file_name, classification_file_ext] = fileparts(strrep(char(log_struct.AnalyzedImages.(fns{analyzed_image_ind}).OutputFiles.ClassificationsMATFILE),'\','/'));
                classification_file_name = [classification_file_name classification_file_ext];
                
                % only keep info from images that were completely analyzed
                if log_struct.AnalyzedImages.(fns{analyzed_image_ind}).AnalysisStatus == "Completed"
                    table_row = table_row + 1;
                    app.UITable.Data{table_row,1} = image_file_name;
                    app.UITable.Data{table_row,2} = classification_file_name;

                    app.UITable.Data{table_row,4} = image_file_path;
                    app.UITable.Data{table_row,5} = classification_file_path;
                end
            end % for analyzed_image_ind = 1:length(fns) 
            validateUITable(app)

        end %function: interpretlogfile
        
        function validateUITable(app)
            % check paths in UITable to make sure they can be found

            % define styles used to flag cells
            nonexistent_file_style = uistyle("Icon","warning");
            empty_style = uistyle("Icon","none");
            validated_style = uistyle("Icon","none");

            % assume all files are valid until checking
            app.ALL_FILES_VALIDATED = true;

            % tidy up the table by removing empty rows
            pruneemptyrows(app)

            % validate file paths
            for table_row = 1:size(app.UITable.Data,1)
                for table_column = 1:3
                    % make sure files exist at the paths
                    if not(isempty(app.UITable.Data{table_row,table_column}))
                        if not(isfile(fullfile(app.UITable.Data{table_row,table_column+3},app.UITable.Data{table_row,table_column})))
                            % mark file as invalid
                            addStyle(app.UITable,nonexistent_file_style,"cell",[table_row,table_column])
                            app.ALL_FILES_VALIDATED = false;
                        else
                            % mark file as valid (remove invalid icon)
                            addStyle(app.UITable,validated_style,"cell",[table_row,table_column])
                        end
                    else %empty cell
                        addStyle(app.UITable,empty_style,"cell",[table_row,table_column])
                    end % if not(isempty(app.UITable.Data{table_row,table_column}))
                end % table_column = 1:3
            end % for table_row = 1:size(app.UITable.Data,1)

            % enable 'Run' button if all files are validated
            if app.ALL_FILES_VALIDATED
                app.RunButton.Enable = 'on';
            else
                app.RunButton.Enable = 'off';
            end

            % refresh GUI
            drawnow

        end %function validateUITable

        function pruneemptyrows(app)
            % find empty rows in UITable and remove them.

            % intialize vector of rows to 1
            %- presume row is empty
            empty_rows = true(size(app.UITable.Data,1),1);
            
            % iterate over table rows
            for table_row = 1:size(app.UITable.Data,1)
                % check if any columns are not empty
                for table_col = 1:size(app.UITable.Data,2)

                    if not(isempty(app.UITable.Data{table_row,table_col}))
                        % mark row as not empty
                        empty_rows(table_row) = false;
                    end % if not(isempty(app.UITable.Data{table_row,table_col}))

                end % for table_col = 1:size(app.UITable.Data,2)
            end % for table_row = 1:size(app.UITable.Data,1)

            drawnow
            % delete empty rows
            app.UITable.Data(empty_rows,:) = [];

        end %function pruneemptyrows
        
        function addafterlastemptycell(app,file_name,file_path,name_column_index,path_column_index)
            % add file name and paths after the last empty column in
            % UITable. Works for single or multiselect.

            if matches(class(file_name), 'char') %one file selected
                if size(app.UITable.Data,1) == 0 %table is empty
                    next_uitable_row = 1;
                else %add after the last full cell
                    last_full_cell = find(not(cellfun(@isempty,app.UITable.Data(:,name_column_index))),1,'last');

                    if isempty(last_full_cell) %no filled cells in column
                        next_uitable_row = 1; %add to first row
                    else
                        next_uitable_row = last_full_cell+1;
                    end % if isempty(last_full_cell)

                end % if size(app.UITable.Data,1) == 0

                app.UITable.Data{next_uitable_row,name_column_index} = file_name;
                app.UITable.Data{next_uitable_row,path_column_index} = file_path;

            elseif matches(class(file_name), 'cell') %multiselect
                if size(app.UITable.Data,1) == 0  %table is empty
                    next_uitable_row = 1;
                else %add after the last full cell
                    last_full_cell = find(not(cellfun(@isempty,app.UITable.Data(:,name_column_index))),1,'last');

                    if isempty(last_full_cell) %all cells in column are empty
                        next_uitable_row = 1; % add to first row
                    else
                        next_uitable_row = last_full_cell+1; %add after last full cell
                    end % if isempty(last_full_cell)

                end % if size(app.UITable.Data,1) == 0

                %get indices for the rows to be added to the table
                target_rows = next_uitable_row:next_uitable_row+length(file_name);

                for selected_image = 1:length(file_name)
                    app.UITable.Data{target_rows(selected_image),name_column_index} = file_name{selected_image};
                    app.UITable.Data{target_rows(selected_image),path_column_index} = file_path;
                end % for selected_image = 1:length(file_name)

            else
                error("Selection was not a char or cell data type.")
            end % if matches(class(file_name), 'char')
            
        end % function addafterlastemptycell
    end %methods: Functions

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            %get starting directory to recall during development
            if not(isdeployed)
                % change directory to where .mlapp or .m file is located
                cd(replace(mfilename('fullpath'),mfilename()+textBoundary('end'),''))
                app.START_DIR = pwd;
                %reveal copy to base button for debugging
                app.CopytobaseButton.Visible = 'on';
                app.CopytobaseButton.Enable = 'on';
            end % if not(isdeployed)

            app.VersionLabel.Text = sprintf("version %s",app.GLASSAI_EDITOR_APP_VERSION);

            %locate 'Resources' folder
            if isdeployed 
                if ismac
                    % default ctf is within app contents, keep only path
                    % before GLASS-AI_annotation_editor.app
                    app.RESOURCE_DIR_PATH = fullfile(extractBefore(ctfroot,"GLASS_AI_annotation_editor.app"),"Resources");
                elseif ispc
                    %ctfroot is created in a temp folder. "Files required 
                    %for your application to run" are copied into a temp
                    %directory with the name of the application 
                    % (i.e., GLASS_AI_annotation_editor) when it is launched.
                    app.RESOURCE_DIR_PATH = fullfile(ctfroot,"GLASS_AI_annotation_editor","Resources");
                end
            else
                app.RESOURCE_DIR_PATH = fullfile(pwd,"Resources");
            end % if isdeployed 

            %validate RESOURCE_DIR_PATH by changing UI images
            %change window icon to GLASS-AI
            app.UIFigure.Icon = fullfile(app.RESOURCE_DIR_PATH,"UI Files","GLASS-AI editor icon_48.png");
            %add GLASS-AI logo to UI
            app.AppLogo.ImageSource = fullfile(app.RESOURCE_DIR_PATH,"UI Files","GLASS-AI editor icon.png");
            
            % change directory to user folder to make finding input/output
            % directories easier
            if ismac
                cd('~');
                % change directory to desktop
                try
                    cd('Desktop');
                catch
                    % remain in user folder if no Desktop folder
                end
            elseif ispc
                user = getenv('USERPROFILE');
                cd(fullfile(user));
                % change directory to desktop
                try
                    cd('Desktop');
                catch
                    % remain in user folder if no Desktop folder
                end
            end % if ismac

            app.LAST_SELECTED_DIR = pwd;

            %check for app updates
            versioncheck(app)
        end

        % Button pushed function: SelectimagesButton
        function SelectImageButtonPushed(app, event)
            % prompt user to select input images
            [new_file_name, new_file_path] = uigetfile({'*.svs;*.tif;*.tiff;*.jpg;*.jpeg;*.png','Image Files (*.svs,*.tif,*.tiff,*.jpg,*.jpeg,*.png)'},'Select input image(s)',app.LAST_SELECTED_DIR,MultiSelect='on');
            
            if isequal(new_file_name, 0) % user canceled selection
                return
            else %add files to UITable
                addafterlastemptycell(app,new_file_name,new_file_path,1,4)

                % remember this directory for next dialog
                app.LAST_SELECTED_DIR = new_file_path;

                % validate UITable
                validateUITable(app)
            end % if isequal(new_file_name, 0)    
        end

        % Button pushed function: SelectGLASSAIclassificationsButton
        function SelectGLASSAIClassificationButtonPushed(app, event)
            % prompt user to select GLASS-AI classification files
            [new_file_name, new_file_path] = uigetfile({'*classes.mat'},'Select GLASS-AI classification file',app.LAST_SELECTED_DIR,MultiSelect='on');

            if isequal(new_file_name, 0) % user canceled selection
                return
            else %add files to UITable
                addafterlastemptycell(app,new_file_name,new_file_path,2,5)

                % remember this directory for next dialog
                app.LAST_SELECTED_DIR = new_file_path;

                % validate UITable
                validateUITable(app)
            end % if isequal(new_file_name, 0)   
        end

        % Button pushed function: SelectmanualannotationsButton
        function SelectManualAnnotationsButtonPushed(app, event)
            % prompt user to select manual annotation files
            [new_file_name, new_file_path] = uigetfile({'*.geojson'},'Select manual annotation file',app.LAST_SELECTED_DIR,MultiSelect='on');

            if isequal(new_file_name, 0) % user canceled selection
                return
            else %add files to UITable
                addafterlastemptycell(app,new_file_name,new_file_path,3,6)

                % remember this directory for next dialog
                app.LAST_SELECTED_DIR = new_file_path;

                % validate UITable
                validateUITable(app)
            end % if isequal(new_file_name, 0)   
        end

        % Button pushed function: SelectGLASSAILogFileButton
        function SelectGLASSAILogFileButtonPushed(app, event)
            old_file_name = app.GLASS_AI_LOGFILE_NAME;
            old_file_path = app.GLASS_AI_LOGFILE_PATH;
            [app.GLASS_AI_LOGFILE_NAME, app.GLASS_AI_LOGFILE_PATH] = uigetfile( ...
                {'GLASS-AI_log_*.txt','GLASS-AI log files (.txt)';'*.txt','All text files (.txt)'},'Select GLASS-AI log file',app.LAST_SELECTED_DIR);
            if isequal(app.GLASS_AI_LOGFILE_NAME, 0)
                app.GLASS_AI_LOGFILE_NAME = old_file_name;
                app.GLASS_AI_LOGFILE_PATH = old_file_path;
                return
            else
                %quickly validate logfile is from GLASS-AI
                fid = fopen(fullfile(app.GLASS_AI_LOGFILE_PATH,app.GLASS_AI_LOGFILE_NAME),'r');
                numLines = 10;
                your_text = cell(numLines,1);
                for ii = 1:numLines
                    your_text(ii) = {fgetl(fid)};
                end
                fclose(fid);
                is_valid = startsWith(your_text(1),"App is deployed") &...
                    startsWith(your_text(2),"System type") &...
                    startsWith(your_text(3),"Can use GPU");
                
                if is_valid
                    app.LAST_SELECTED_DIR = app.GLASS_AI_LOGFILE_PATH;
                    interpretlogfile(app, fullfile(app.GLASS_AI_LOGFILE_PATH,app.GLASS_AI_LOGFILE_NAME));
                end
            end
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            % run annotation adjusment on files in UITable

            % disable run button
            app.RunButton.Enable = "off";
            app.RunButton.Text = "Running";
            drawnow
            
            %% store analysis parameters for run
            % Tumor Analysis tab
            app.SMOOTH_METHOD = char(app.SmoothingMethodDropDown.Value);
            app.SMOOTH_SIZE = [app.SmoothingSizeSpinner.Value app.SmoothingSizeSpinner.Value];
            app.TUMOR_SIZE_THRESHOLD = app.TumorSizeThresholdInput.Value;
            app.TUMOR_MERGE_RADIUS = app.TumorMergeRadiusInput.Value;
            app.ASSIGN_OVERALL_GRADES = app.AssignoverallgradetoeachtumorCheckBox.Value;
            if app.ASSIGN_OVERALL_GRADES == 1
                app.ASSIGN_GRADES_METHOD = app.AssignmentmethodDropDown.Value;
                if app.ASSIGN_GRADES_METHOD == "highest"
                    app.ASSIGN_GRADES_THRESHOLD = (app.TumorgradethresholdEditField.Value)/100;
                end
            else
                app.ASSIGN_GRADES_METHOD = "none";
            end
          

            % Annotation Mapping tab
            app.GRADE1_SEARCH_VALUE = app.Grade1MatchingValue.Value;
            app.GRADE1_SEARCH_METHOD = app.Grade1MatchingDropDown.Value;
            app.GRADE2_SEARCH_VALUE = app.Grade2MatchingValue.Value;
            app.GRADE2_SEARCH_METHOD = app.Grade2MatchingDropDown.Value;
            app.GRADE3_SEARCH_VALUE = app.Grade3MatchingValue.Value;
            app.GRADE3_SEARCH_METHOD = app.Grade3MatchingDropDown.Value;
            app.GRADE4_SEARCH_VALUE = app.Grade4MatchingValue.Value;
            app.GRADE4_SEARCH_METHOD = app.Grade4MatchingDropDown.Value;
            app.GRADE5_SEARCH_VALUE = app.Grade5MatchingValue.Value;
            app.GRADE5_SEARCH_METHOD = app.Grade5MatchingDropDown.Value;
            app.ALVEOLI_SEARCH_VALUE = app.AlveoliMatchingValue.Value;
            app.ALVEOLI_SEARCH_METHOD = app.AlveoliMatchingDropDown.Value;
            app.AIRWAY_SEARCH_VALUE = app.AirwayMatchingValue.Value;
            app.AIRWAY_SEARCH_METHOD = app.AirwayMatchingDropDown.Value;
            app.IGNORE_SEARCH_VALUE = app.IgnoreMatchingValue.Value;
            app.IGNORE_SEARCH_METHOD = app.IgnoreMatchingDropDown.Value;
        
            % Grade Map Colors tab
            app.NORMAL_ALVEOLI_COLOR = [app.NormalAlveoliColorEditField_R.Value, app.NormalAlveoliColorEditField_G.Value, app.NormalAlveoliColorEditField_B.Value];
            app.NORMAL_AIRWAY_COLOR = [app.NormalAirwayColorEditField_R.Value, app.NormalAirwayColorEditField_G.Value, app.NormalAirwayColorEditField_B.Value];
            app.GRADE_1_COLOR = [app.Grade1ColorEditField_R.Value, app.Grade1ColorEditField_G.Value, app.Grade1ColorEditField_B.Value];
            app.GRADE_2_COLOR = [app.Grade2ColorEditField_R.Value, app.Grade2ColorEditField_G.Value, app.Grade2ColorEditField_B.Value];
            app.GRADE_3_COLOR = [app.Grade3ColorEditField_R.Value, app.Grade3ColorEditField_G.Value, app.Grade3ColorEditField_B.Value];
            app.GRADE_4_COLOR = [app.Grade4ColorEditField_R.Value, app.Grade4ColorEditField_G.Value, app.Grade4ColorEditField_B.Value];
            app.GRADE_5_COLOR = [app.Grade5ColorEditField_R.Value, app.Grade5ColorEditField_G.Value, app.Grade5ColorEditField_B.Value];
            app.BACKGROUND_COLOR = [app.BackgroundColorEditField_R.Value, app.BackgroundColorEditField_G.Value, app.BackgroundColorEditField_B.Value];
            app.SKIPPED_PATCH_COLOR = [app.SkippedPatchColorEditField_R.Value, app.SkippedPatchColorEditField_G.Value, app.SkippedPatchColorEditField_B.Value];

            %Output Image Scaling tab
            app.OUTPUT_GRADE_IMAGE_SCALE = app.GradeMapScalingSlider.Value/100;
            app.MAKE_SEGMENTATION_IMAGE = string([app.SegmentationImageCheckBox.Value]);
            app.OUTPUT_SEGMENTATION_IMAGE_SCALE = app.SegmentationScalingSlider.Value/100;

            %Call main function
            main(app)

            % renable 'Run' button
            app.RunButton.Enable = 'on';
            app.RunButton.Text = "Run";
            drawnow
        end

        % Button pushed function: CopytobaseButton
        function CopytobaseButtonPushed(app, event)
            % copy app to base workspace for debugging
            %- closing app window destroys data in the base variable too
            if not(isdeployed)
                assignin("base","app",app)
            end
        end

        % Double-clicked callback: UITable
        function UITableDoubleClicked(app, event)
            % on double click, prompt user to select file to fill cell

            %get index of double-clicked cell
            %- clicking outside of cells in table returns []
            displayRow = event.InteractionInformation.DisplayRow;
            displayColumn = event.InteractionInformation.DisplayColumn;
            
            if isequal(displayColumn,[]) %do nothing if clicked outside of cells
                return
            else
                %change file selection based on selected column
                %- only allow users to select 1 file to place in cell
                switch displayColumn 
                    case 1 %image files
                        [new_file_name, new_file_path] = uigetfile({'*.svs;*.tif;*.tiff;*.jpg;*.jpeg;*.png','Image Files (*.svs,*.tif,*.tiff,*.jpg,*.jpeg,*.png)'},'Select input image',app.LAST_SELECTED_DIR,MultiSelect='off');
                        if isequal(new_file_name, 0) %user canced selection
                            %do nothing
                        else
                            % add file name to cell and path to
                            % coresponding cell
                            app.UITable.Data{displayRow,1} = new_file_name;
                            app.UITable.Data{displayRow,4} = new_file_path;
                            % remember directory
                            app.LAST_SELECTED_DIR = new_file_path;
                        end % if isequal(new_file_name, 0)
                    case 2 % GLASS-AI classification files
                        [new_file_name, new_file_path] = uigetfile({'*classes.mat'},'Select GLASS-AI classification file',app.LAST_SELECTED_DIR);
                        if isequal(new_file_name, 0) %user canced selection
                            %do nothing
                        else
                            % add file name to cell and path to
                            % coresponding cell
                            app.UITable.Data{displayRow,2} = new_file_name;
                            app.UITable.Data{displayRow,5} = new_file_path;
                            % remember directory
                            app.LAST_SELECTED_DIR = new_file_path;
                        end % if isequal(new_file_name, 0)
                    case 3 % manual annotation files
                        [new_file_name, new_file_path] = uigetfile({'*.geojson'},'Select manual annotation file',app.LAST_SELECTED_DIR);
                        if isequal(new_file_name, 0) %user canced selection
                            %do nothing
                        else
                            % add file name to cell and path to
                            % coresponding cell
                            app.UITable.Data{displayRow,3} = new_file_name;
                            app.UITable.Data{displayRow,6} = new_file_path;
                            % remember directory
                            app.LAST_SELECTED_DIR = new_file_path;
                        end % if isequal(new_file_name, 0)
                end % switch displayColumn 
                % validate input files
                validateUITable(app)
            end % if isequal(displayColumn,[])
        end

        % Selection changed function: UITable
        function UITableSelectionChanged(app, event)
            selection = app.UITable.Selection;
            
            %enable single column context menu items if only one column
            %is selected
            if not(isempty(selection)) & size(unique(selection(:,2))) == 1
                app.ChangeFolderMenu.Enable = 'on';
                app.PopulatefromFolderMenu.Enable = 'on';
            else
                app.ChangeFolderMenu.Enable = 'off';
                app.PopulatefromFolderMenu.Enable = 'off';
            end % if not(isempty(selection)) & size(unique(selection(:,2))) == 1

        end

        % Menu selected function: UnselectMenu
        function UnselectMenuSelected(app, event)
            %unselect cells in UITable

            % setting app.UITable.Selection = [] leaves a border around
            % last selected cell. This method works better.
            app.UITable.SelectionType = 'row';
            pause(0.1);
            app.UITable.SelectionType = 'cell';
        end

        % Menu selected function: ClearSelection
        function ClearSelectionMenuSelected(app, event)
            % clear the contents of currently selected cell(s) and the
            % corresponding cell(s) in the corresponding path columns


            if isempty(app.UITable.Selection)
                return
            end

            indices = app.UITable.Selection;


            for selected_cell = 1:size(indices,1)
                selected_row = indices(selected_cell,1);
                selected_col = indices(selected_cell,2);

                app.UITable.Data{selected_row, selected_col} = []; %clear cell
                app.UITable.Data{selected_row, selected_col+3} = [];%clear path column too

            end % for selected_cell = 1:size(indices,1)
            
            % validate input files
            validateUITable(app)
        end

        % Menu selected function: ClearRows
        function ClearRowsMenuSelected(app, event)
            % clear contents of currently selected row(s). This actually
            % deletes the entire row from the UITable.

            if isempty(app.UITable.Selection)
                return
            end


            indices = app.UITable.Selection;

            
            % remove any 'duplicate' rows caused by the selection spanning
            % multiple columns in the same row
            %- This also sorts the row indices into ascending order
            selected_rows = unique(indices(:,1));
            % flip to delete from bottom up
            selected_rows = flip(selected_rows);

            for selected_row = selected_rows
                app.UITable.Data(selected_row,:) = []; %clear row
            end % for selected_row = 1:size(selected_rows)

            % validate input files
            validateUITable(app) 
        end

        % Menu selected function: ClearColumns
        function ClearColumnsMenuSelected(app, event)
            % clear contents of the currently selected column(s).


            if isempty(app.UITable.Selection)
                return
            end

            % remove any 'duplicate' columns caused by the selection spanning
            % multiple rows in the same column
            selected_columns = unique(app.UITable.Selection(:,2));

            %remove icons from cleared cells
            cleared_style = uistyle("Icon","none");

            % must individually clear the contents of each cell in column
            % or the entire column gets deleted from the table
            for selected_col = selected_columns
                for table_row = 1:size(app.UITable.Data,1)
                    app.UITable.Data{table_row,selected_col} = []; %clear cell
                    app.UITable.Data{table_row,selected_col+3} = []; %clear path column too

                    %remove icons from cleared cells
                    addStyle(app.UITable,cleared_style,"cell",[table_row selected_col])

                end % for table_row = 1:size(app.UITable.Data,1)
            end % for selected_col = 1:size(selected_columns,1)

            % validate input files
            validateUITable(app)
        end

        % Menu selected function: ClearInvalidFiles
        function ClearInvalidFilesSelected(app, event)
           % clear all of the cells in the UITable that do not have valid
           % file paths.

           if isempty(app.UITable.Data)
                return
           end

           table_rows = size(app.UITable.Data,1);
           table_cols = 3; %only need to look at first 3 columns
            
           %remove icons from cleared cells
           cleared_style = uistyle("Icon","none");

           for table_row = 1:table_rows
               for table_col = 1:table_cols
                   try
                       if not(isfile(app.UITable.Data{table_row,table_col+3}))
                            app.UITable.Data{table_row,table_col} = []; %clear cell
                            app.UITable.Data{table_row,table_col+3} = []; %clear path cell too
                            
                            %remove icon used to mark invalid cells
                            addStyle(app.UITable,cleared_style,"cell",[table_row table_col])
                       end % if not(isfile(app.UITable.Data{table_row,table_col+3}))
                   catch
                       continue
                   end % try
               end % for table_col = 1:table_cols
           end % for table_row = 1:table_rows

           % validate input files
           validateUITable(app)
        end

        % Menu selected function: ChangeFolderMenu
        function ChangeFolderMenuSelected(app, event)
            % replace the path in the corresponding column of the selected
            % cell(s)

            selected_column = unique(app.UITable.Selection(:,2));
            selected_rows = app.UITable.Selection(:,1);

            %prompt user to select containing directory
            column_file_type = ['image files', 'GLASS-AI classifications','manual annotations'];
            prompt_message = ['Select directory containing ' column_file_type(selected_column)];
            new_directory = uigetdir(app.LAST_SELECTED_DIR, prompt_message);

            % change directory for selected cells
            for table_row = 1:size(selected_rows,1)
                % skip empty cells
                if isempty(app.UITable.Data{selected_rows(table_row),selected_column})
                    continue
                else
                    app.UITable.Data{selected_rows(table_row),selected_column+3} = new_directory;
                end % if isempty(app.UITable.Data{selected_rows(table_row),selected_column})
            end % for table_row = 1:size(selected_rows,1)

            % validate input files
            validateUITable(app)
        end

        % Menu selected function: PopulatefromFolderMenu
        function PopulatefromFolderMenuSelected(app, event)
            % look in selected directory for files that match the exisiting
            % files in the selected row(s).
            
            selected_column = unique(app.UITable.Selection(:,2));
            selected_rows = app.UITable.Selection(:,1);

            %prompt user to select containing directory
            column_file_type = ['image files', 'GLASS-AI classifications','manual annotations'];
            prompt_message = ['Select directory containing ' column_file_type(selected_column)];
            new_directory = uigetdir(app.LAST_SELECTED_DIR, prompt_message);

            for table_row = 1:size(selected_rows,1)
                % get names by stripping file extensions
                %- name precedence: image, classification, annotatation
                %- input image
                if not(isempty(app.UITable.Data{selected_rows(table_row),1}))
                    [~,image_name,~] = fileparts(app.UITable.Data{selected_rows(table_row),1});
                else
                    image_name = '';
                end
                %- GLASS-AI classifications
                if not(isempty(app.UITable.Data{selected_rows(table_row),2}))
                    [~,classifications_name,~] = fileparts(app.UITable.Data{selected_rows(table_row),2});
                else
                    classifications_name = '';
                end
                %- manual annotations
                if not(isempty(app.UITable.Data{selected_rows(table_row),3}))
                    [~,annotations_name,~] = fileparts(app.UITable.Data{selected_rows(table_row),3});
                else
                    annotations_name = '';
                end

                % look for files based on selected column
                %- use switch to append different file extensions based on
                %- selected column
                switch selected_column
                    case 1 %get image files
                        % define name to search
                        if not(isempty(classifications_name))
                            search_name = classifications_name;
                        elseif not(isempty(annotations_name))
                            search_name = annotations_name;
                        end % if not(isempty(classifications_name))

                        %define image type search priority
                        image_type_search_order = {'.svs' '.tif' '.tif' '.jpeg' '.jpg' '.png'};
                        
                        %check for images matching search_name
                        for image_type = 1:size(image_type_search_order,1)
                            search_file = [search_name image_type_search_order{image_type}];

                            found_file = isfile(fullfile(new_directory,search_file));

                            if found_file
                                app.UITable.Data{selected_rows(table_row),selected_column} = search_file;
                                app.UITable.Data{selected_rows(table_row),selected_column+3} = new_directory;
                                break %no need to check other image types if found
                            else
                                continue
                            end % if found_file
                        end % for image_type = 1:size(image_type_search_order,1)

                    case 2 %get GLASS-AI classification files
                        %define name to search
                        if not(isempty(image_name))
                            search_name = image_name;
                        elseif not(isempty(annotations_name))
                            search_name = annotations_name;
                        end % if not(isempty(image_name))

                        search_file = [search_name '_classes.mat'];
                        found_file = isfile(fullfile(new_directory,search_file));
                        if found_file
                            app.UITable.Data{selected_rows(table_row),selected_column} = search_file;
                            app.UITable.Data{selected_rows(table_row),selected_column+3} = new_directory;
                        else
                            continue
                        end % if found_file

                    case 3 %get manual annotation files
                        %define name to search
                        if not(isempty(image_name))
                            search_name = image_name;
                        elseif not(isempty(classifications_name))
                            search_name = classifications_name;
                        end % if not(isempty(image_name))

                        search_file = [search_name '.geojson'];
                        found_file = isfile(fullfile(new_directory,search_file));
                        if found_file
                            app.UITable.Data{selected_rows(table_row),selected_column} = search_file;
                            app.UITable.Data{selected_rows(table_row),selected_column+3} = new_directory;
                        else
                            continue
                        end % if found_file
                
                end % switch selected_column

            end % for table_row = 1:size(selected_rows,1)
            
            % validate input files
            validateUITable(app)
        end

        % Close request function: UIFigure
        function UIFigureCloseRequest(app, event)
            % return to invoking directory in dev environment on app close
            if not(isdeployed)
                cd(app.START_DIR)
            end

            delete(app)
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 784 419];
            app.UIFigure.Name = 'MATLAB App';
            app.UIFigure.CloseRequestFcn = createCallbackFcn(app, @UIFigureCloseRequest, true);

            % Create SelectimagesButton
            app.SelectimagesButton = uibutton(app.UIFigure, 'push');
            app.SelectimagesButton.ButtonPushedFcn = createCallbackFcn(app, @SelectImageButtonPushed, true);
            app.SelectimagesButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.SelectimagesButton.Position = [343 302 100 38];
            app.SelectimagesButton.Text = {'Select '; 'image(s)'};

            % Create SelectmanualannotationsButton
            app.SelectmanualannotationsButton = uibutton(app.UIFigure, 'push');
            app.SelectmanualannotationsButton.ButtonPushedFcn = createCallbackFcn(app, @SelectManualAnnotationsButtonPushed, true);
            app.SelectmanualannotationsButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.SelectmanualannotationsButton.Position = [651 302 100 38];
            app.SelectmanualannotationsButton.Text = {'Select manual'; 'annotation(s)'};

            % Create SelectGLASSAIclassificationsButton
            app.SelectGLASSAIclassificationsButton = uibutton(app.UIFigure, 'push');
            app.SelectGLASSAIclassificationsButton.ButtonPushedFcn = createCallbackFcn(app, @SelectGLASSAIClassificationButtonPushed, true);
            app.SelectGLASSAIclassificationsButton.Tooltip = {'Select the directory that contains your images for analysis. All SVS and TIFF images in the selected directory will be displayed in File Name Table below for selection.'};
            app.SelectGLASSAIclassificationsButton.Position = [479 302 131 38];
            app.SelectGLASSAIclassificationsButton.Text = {'Select GLASS-AI'; 'classification(s)'};

            % Create RunButton
            app.RunButton = uibutton(app.UIFigure, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.FontSize = 18;
            app.RunButton.FontWeight = 'bold';
            app.RunButton.Enable = 'off';
            app.RunButton.Tooltip = {'All files must be validated before the analysis can be run.'};
            app.RunButton.Position = [116 336 113 31];
            app.RunButton.Text = 'Run';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [12 12 306 278];

            % Create TumorAnalysisTab
            app.TumorAnalysisTab = uitab(app.TabGroup);
            app.TumorAnalysisTab.Title = 'Tumor Analysis';
            app.TumorAnalysisTab.BackgroundColor = [0.902 0.902 0.902];

            % Create TumorSizeThresholdInput
            app.TumorSizeThresholdInput = uieditfield(app.TumorAnalysisTab, 'numeric');
            app.TumorSizeThresholdInput.Limits = [0 Inf];
            app.TumorSizeThresholdInput.RoundFractionalValues = 'on';
            app.TumorSizeThresholdInput.ValueDisplayFormat = '%.0f';
            app.TumorSizeThresholdInput.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map or output tables.'};
            app.TumorSizeThresholdInput.Position = [225 143 71 22];
            app.TumorSizeThresholdInput.Value = 500;

            % Create TumorsizethresholdsqmLabel
            app.TumorsizethresholdsqmLabel = uilabel(app.TumorAnalysisTab);
            app.TumorsizethresholdsqmLabel.HorizontalAlignment = 'right';
            app.TumorsizethresholdsqmLabel.Tooltip = {'Tumor with areas smaller than this size will be excluded from analyses and will not be shown on the tumor segmentation map.'};
            app.TumorsizethresholdsqmLabel.Position = [59 143 163 22];
            app.TumorsizethresholdsqmLabel.Text = 'Tumor size threshold (sq. µm)';

            % Create TumorMergeRadiusInput
            app.TumorMergeRadiusInput = uieditfield(app.TumorAnalysisTab, 'numeric');
            app.TumorMergeRadiusInput.Limits = [0 Inf];
            app.TumorMergeRadiusInput.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumorMergeRadiusInput.Position = [226 116 71 22];
            app.TumorMergeRadiusInput.Value = 5;

            % Create TumormergeradiusmLabel
            app.TumormergeradiusmLabel = uilabel(app.TumorAnalysisTab);
            app.TumormergeradiusmLabel.HorizontalAlignment = 'right';
            app.TumormergeradiusmLabel.Tooltip = {'Tumors that are within this distance of each other will be combined during analysis.'};
            app.TumormergeradiusmLabel.Position = [83 117 139 22];
            app.TumormergeradiusmLabel.Text = 'Tumor merge radius (µm)';

            % Create PatchTissueThresholdInput
            app.PatchTissueThresholdInput = uieditfield(app.TumorAnalysisTab, 'numeric');
            app.PatchTissueThresholdInput.Limits = [0 100];
            app.PatchTissueThresholdInput.Enable = 'off';
            app.PatchTissueThresholdInput.Tooltip = {'Image patches (224x224 pixels) with less than this percent of tissue will be skipped. This significantly improves analysis time. Skipped patches will be colored black in the output grade map (color can be changed in the Grade Map Colors tab). '};
            app.PatchTissueThresholdInput.Position = [225 224 71 22];

            % Create PatchtissuethresholdLabel
            app.PatchtissuethresholdLabel = uilabel(app.TumorAnalysisTab);
            app.PatchtissuethresholdLabel.HorizontalAlignment = 'right';
            app.PatchtissuethresholdLabel.Enable = 'off';
            app.PatchtissuethresholdLabel.Tooltip = {'Image patches (224x224 pixels) with less than this percent of tissue will be skipped. This significantly improves analysis time. Skipped patches will be colored black in the output grade map (color can be changed in the Grade Map Colors tab). '};
            app.PatchtissuethresholdLabel.Position = [76 224 146 22];
            app.PatchtissuethresholdLabel.Text = 'Patch tissue threshold (%)';

            % Create SmoothingMethodDropDownLabel
            app.SmoothingMethodDropDownLabel = uilabel(app.TumorAnalysisTab);
            app.SmoothingMethodDropDownLabel.HorizontalAlignment = 'right';
            app.SmoothingMethodDropDownLabel.Tooltip = {''};
            app.SmoothingMethodDropDownLabel.Position = [113 197 109 22];
            app.SmoothingMethodDropDownLabel.Text = 'Smoothing Method';

            % Create SmoothingMethodDropDown
            app.SmoothingMethodDropDown = uidropdown(app.TumorAnalysisTab);
            app.SmoothingMethodDropDown.Items = {'None', 'Mode', 'Hamming window (tumor only)', 'Median', 'Bilateral (slow)'};
            app.SmoothingMethodDropDown.ItemsData = {'smoothing_none', 'smoothing_mode', 'smoothing_hamming', 'smoothing_median', 'smoothing_bilateral', '', ''};
            app.SmoothingMethodDropDown.Tooltip = {'Select a method for the smoothing kernel applied after grading. "Mode" is strongly recommended over other methods, as they are prone to creating artifacts from interpolating classes between regions of different classes.'; 'Default = "Mode"'};
            app.SmoothingMethodDropDown.Position = [225 197 72 22];
            app.SmoothingMethodDropDown.Value = 'smoothing_none';

            % Create SmoothingSizeSpinnerLabel
            app.SmoothingSizeSpinnerLabel = uilabel(app.TumorAnalysisTab);
            app.SmoothingSizeSpinnerLabel.HorizontalAlignment = 'right';
            app.SmoothingSizeSpinnerLabel.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinnerLabel.Position = [129 170 90 22];
            app.SmoothingSizeSpinnerLabel.Text = 'Smoothing Size';

            % Create SmoothingSizeSpinner
            app.SmoothingSizeSpinner = uispinner(app.TumorAnalysisTab);
            app.SmoothingSizeSpinner.Limits = [16 256];
            app.SmoothingSizeSpinner.RoundFractionalValues = 'on';
            app.SmoothingSizeSpinner.ValueDisplayFormat = '%.0f';
            app.SmoothingSizeSpinner.Tooltip = {'Defines the diameter of the smoothing kernel. Smaller numbers reduce the effect of the smoothing.'};
            app.SmoothingSizeSpinner.Position = [226 170 73 22];
            app.SmoothingSizeSpinner.Value = 160;

            % Create AssignoverallgradetoeachtumorCheckBox
            app.AssignoverallgradetoeachtumorCheckBox = uicheckbox(app.TumorAnalysisTab);
            app.AssignoverallgradetoeachtumorCheckBox.Tooltip = {'When checked, individual tumors in images will be assigned an overall grade using the method chosen below. A map of these tumor grades will be output alongside the normal tumor grade map. Individual umor grades will be recorded in output spreadsheets.'};
            app.AssignoverallgradetoeachtumorCheckBox.Text = 'Assign overall grade to each tumor';
            app.AssignoverallgradetoeachtumorCheckBox.Position = [87 90 210 22];
            app.AssignoverallgradetoeachtumorCheckBox.Value = true;

            % Create TumorgradethresholdEditFieldLabel
            app.TumorgradethresholdEditFieldLabel = uilabel(app.TumorAnalysisTab);
            app.TumorgradethresholdEditFieldLabel.HorizontalAlignment = 'right';
            app.TumorgradethresholdEditFieldLabel.Position = [69 38 148 22];
            app.TumorgradethresholdEditFieldLabel.Text = 'Tumor grade threshold (%)';

            % Create TumorgradethresholdEditField
            app.TumorgradethresholdEditField = uieditfield(app.TumorAnalysisTab, 'numeric');
            app.TumorgradethresholdEditField.Limits = [0 25];
            app.TumorgradethresholdEditField.Tooltip = {'Define threshold of tumor area used when assigning overall tumor grades using "Highest, above threshold" method. Default value is 10.'};
            app.TumorgradethresholdEditField.Position = [226 38 70 22];
            app.TumorgradethresholdEditField.Value = 10;

            % Create AssignmentmethodDropDownLabel
            app.AssignmentmethodDropDownLabel = uilabel(app.TumorAnalysisTab);
            app.AssignmentmethodDropDownLabel.HorizontalAlignment = 'right';
            app.AssignmentmethodDropDownLabel.Position = [8 64 113 22];
            app.AssignmentmethodDropDownLabel.Text = 'Assignment method';

            % Create AssignmentmethodDropDown
            app.AssignmentmethodDropDown = uidropdown(app.TumorAnalysisTab);
            app.AssignmentmethodDropDown.Items = {'Highest, above threshold', 'Most prevalent'};
            app.AssignmentmethodDropDown.ItemsData = {'highest', 'majority'};
            app.AssignmentmethodDropDown.Tooltip = {'Select method to assign overall grade to individual tumors.'; 'Default setting is to use the highest tumor grade present that comprises ≥10% of the tumor''s area. This is based on current reccomendations for clinical grading of human lung adenocarcinoma.'};
            app.AssignmentmethodDropDown.Position = [129 64 168 22];
            app.AssignmentmethodDropDown.Value = 'highest';

            % Create AnnotationMappingTab
            app.AnnotationMappingTab = uitab(app.TabGroup);
            app.AnnotationMappingTab.Title = 'Annotation Mapping';

            % Create Grade1AnnotationMappingLabel
            app.Grade1AnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.Grade1AnnotationMappingLabel.HorizontalAlignment = 'right';
            app.Grade1AnnotationMappingLabel.Position = [7 212 86 22];
            app.Grade1AnnotationMappingLabel.Text = 'Grade 1 LUAD:';

            % Create Grade1MatchingValue
            app.Grade1MatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.Grade1MatchingValue.Position = [200 212 100 22];
            app.Grade1MatchingValue.Value = 'Grade 1';

            % Create Grade1MatchingDropDown
            app.Grade1MatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.Grade1MatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.Grade1MatchingDropDown.Position = [104 212 91 22];
            app.Grade1MatchingDropDown.Value = 'contains';

            % Create Grade2AnnotationMappingLabel
            app.Grade2AnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.Grade2AnnotationMappingLabel.HorizontalAlignment = 'right';
            app.Grade2AnnotationMappingLabel.Position = [8 184 86 22];
            app.Grade2AnnotationMappingLabel.Text = 'Grade 2 LUAD:';

            % Create Grade2MatchingDropDown
            app.Grade2MatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.Grade2MatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.Grade2MatchingDropDown.Position = [105 184 91 22];
            app.Grade2MatchingDropDown.Value = 'contains';

            % Create Grade2MatchingValue
            app.Grade2MatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.Grade2MatchingValue.Position = [200 184 100 22];
            app.Grade2MatchingValue.Value = 'Grade 2';

            % Create Grade3AnnotationMappingLabel
            app.Grade3AnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.Grade3AnnotationMappingLabel.HorizontalAlignment = 'right';
            app.Grade3AnnotationMappingLabel.Position = [11 156 86 22];
            app.Grade3AnnotationMappingLabel.Text = 'Grade 3 LUAD:';

            % Create Grade3MatchingDropDown
            app.Grade3MatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.Grade3MatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.Grade3MatchingDropDown.Position = [104 156 91 22];
            app.Grade3MatchingDropDown.Value = 'contains';

            % Create Grade3MatchingValue
            app.Grade3MatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.Grade3MatchingValue.Position = [200 156 100 22];
            app.Grade3MatchingValue.Value = 'Grade 3';

            % Create Grade4AnnotationMappingLabel
            app.Grade4AnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.Grade4AnnotationMappingLabel.HorizontalAlignment = 'right';
            app.Grade4AnnotationMappingLabel.Position = [10 128 86 22];
            app.Grade4AnnotationMappingLabel.Text = 'Grade 4 LUAD:';

            % Create Grade4MatchingValue
            app.Grade4MatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.Grade4MatchingValue.Position = [200 128 100 22];
            app.Grade4MatchingValue.Value = 'Grade 4';

            % Create Grade4MatchingDropDown
            app.Grade4MatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.Grade4MatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.Grade4MatchingDropDown.Position = [104 128 91 22];
            app.Grade4MatchingDropDown.Value = 'contains';

            % Create Grade5AnnotationMappingLabel
            app.Grade5AnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.Grade5AnnotationMappingLabel.HorizontalAlignment = 'right';
            app.Grade5AnnotationMappingLabel.Position = [10 100 86 22];
            app.Grade5AnnotationMappingLabel.Text = 'Grade 5 LUAD:';

            % Create Grade5MatchingValue
            app.Grade5MatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.Grade5MatchingValue.Position = [200 100 100 22];
            app.Grade5MatchingValue.Value = 'Grade 5';

            % Create Grade5MatchingDropDown
            app.Grade5MatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.Grade5MatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.Grade5MatchingDropDown.Position = [104 100 91 22];
            app.Grade5MatchingDropDown.Value = 'contains';

            % Create AlveoliAnnotationMappingLabel
            app.AlveoliAnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.AlveoliAnnotationMappingLabel.HorizontalAlignment = 'right';
            app.AlveoliAnnotationMappingLabel.Position = [53 72 43 22];
            app.AlveoliAnnotationMappingLabel.Text = 'Alveoli:';

            % Create AlveoliMatchingValue
            app.AlveoliMatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.AlveoliMatchingValue.Position = [200 72 100 22];
            app.AlveoliMatchingValue.Value = 'Alveoli';

            % Create AlveoliMatchingDropDown
            app.AlveoliMatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.AlveoliMatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.AlveoliMatchingDropDown.Position = [104 72 91 22];
            app.AlveoliMatchingDropDown.Value = 'contains';

            % Create AirwayAnnotationMappingLabel
            app.AirwayAnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.AirwayAnnotationMappingLabel.HorizontalAlignment = 'right';
            app.AirwayAnnotationMappingLabel.Position = [52 44 44 22];
            app.AirwayAnnotationMappingLabel.Text = 'Airway:';

            % Create AirwayMatchingValue
            app.AirwayMatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.AirwayMatchingValue.Position = [200 44 100 22];
            app.AirwayMatchingValue.Value = 'Airway';

            % Create AirwayMatchingDropDown
            app.AirwayMatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.AirwayMatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.AirwayMatchingDropDown.Position = [104 44 91 22];
            app.AirwayMatchingDropDown.Value = 'contains';

            % Create IgnoreAnnotationMappingLabel
            app.IgnoreAnnotationMappingLabel = uilabel(app.AnnotationMappingTab);
            app.IgnoreAnnotationMappingLabel.HorizontalAlignment = 'right';
            app.IgnoreAnnotationMappingLabel.Position = [57 17 39 22];
            app.IgnoreAnnotationMappingLabel.Text = 'Ignore';

            % Create IgnoreMatchingValue
            app.IgnoreMatchingValue = uieditfield(app.AnnotationMappingTab, 'text');
            app.IgnoreMatchingValue.Position = [200 17 100 22];
            app.IgnoreMatchingValue.Value = 'Ignore';

            % Create IgnoreMatchingDropDown
            app.IgnoreMatchingDropDown = uidropdown(app.AnnotationMappingTab);
            app.IgnoreMatchingDropDown.Items = {'contains', 'equals', 'starts with', 'ends with', 'regex'};
            app.IgnoreMatchingDropDown.Position = [104 17 91 22];
            app.IgnoreMatchingDropDown.Value = 'contains';

            % Create GradeMapColorsTab
            app.GradeMapColorsTab = uitab(app.TabGroup);
            app.GradeMapColorsTab.Title = 'Grade Map Colors';

            % Create CLASSLabel
            app.CLASSLabel = uilabel(app.GradeMapColorsTab);
            app.CLASSLabel.HorizontalAlignment = 'center';
            app.CLASSLabel.FontWeight = 'bold';
            app.CLASSLabel.Position = [11 224 109 22];
            app.CLASSLabel.Text = 'CLASS';

            % Create RLabel
            app.RLabel = uilabel(app.GradeMapColorsTab);
            app.RLabel.HorizontalAlignment = 'center';
            app.RLabel.FontWeight = 'bold';
            app.RLabel.Position = [138 224 35 22];
            app.RLabel.Text = 'R';

            % Create GLabel
            app.GLabel = uilabel(app.GradeMapColorsTab);
            app.GLabel.HorizontalAlignment = 'center';
            app.GLabel.FontWeight = 'bold';
            app.GLabel.Position = [183 224 35 22];
            app.GLabel.Text = 'G';

            % Create BLabel
            app.BLabel = uilabel(app.GradeMapColorsTab);
            app.BLabel.HorizontalAlignment = 'center';
            app.BLabel.FontWeight = 'bold';
            app.BLabel.Position = [228 224 35 22];
            app.BLabel.Text = 'B';

            % Create NormlaAlveoliLamp
            app.NormlaAlveoliLamp = uilamp(app.GradeMapColorsTab);
            app.NormlaAlveoliLamp.Position = [276 206 20 20];
            app.NormlaAlveoliLamp.Color = [0 1 1];

            % Create NormalAirwayLamp
            app.NormalAirwayLamp = uilamp(app.GradeMapColorsTab);
            app.NormalAirwayLamp.Position = [276 182 20 20];
            app.NormalAirwayLamp.Color = [1 0 1];

            % Create Grade1Lamp
            app.Grade1Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade1Lamp.Position = [276 158 20 20];

            % Create Grade2Lamp
            app.Grade2Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade2Lamp.Position = [276 134 20 20];
            app.Grade2Lamp.Color = [0 0 1];

            % Create Grade3Lamp
            app.Grade3Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade3Lamp.Position = [276 110 20 20];
            app.Grade3Lamp.Color = [1 1 0];

            % Create Grade4Lamp
            app.Grade4Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade4Lamp.Position = [276 84 20 20];
            app.Grade4Lamp.Color = [1 0 0];

            % Create BackgroundLamp
            app.BackgroundLamp = uilamp(app.GradeMapColorsTab);
            app.BackgroundLamp.Position = [276 33 20 20];
            app.BackgroundLamp.Color = [1 1 1];

            % Create SkippedPatchLamp
            app.SkippedPatchLamp = uilamp(app.GradeMapColorsTab);
            app.SkippedPatchLamp.Position = [276 9 20 20];
            app.SkippedPatchLamp.Color = [0 0 0];

            % Create NormalAlveoliColorEditFieldLabel
            app.NormalAlveoliColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel.Position = [5 133 116 22];
            app.NormalAlveoliColorEditFieldLabel.Text = 'Grade 2 LUAD Color';

            % Create Grade2ColorEditField_R
            app.Grade2ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_R.Limits = [0 255];
            app.Grade2ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_R.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_R.Position = [136 132 39 22];

            % Create Grade2ColorEditField_G
            app.Grade2ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_G.Limits = [0 255];
            app.Grade2ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_G.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_G.Position = [181 132 39 22];

            % Create Grade2ColorEditField_B
            app.Grade2ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade2ColorEditField_B.Limits = [0 255];
            app.Grade2ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade2ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade2ColorEditField_B.Tooltip = {'Define color for "Grade 2 LUAD" pixels on output grade map.'};
            app.Grade2ColorEditField_B.Position = [226 132 39 22];
            app.Grade2ColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel_2
            app.NormalAlveoliColorEditFieldLabel_2 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_2.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_2.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_2.Position = [5 157 116 22];
            app.NormalAlveoliColorEditFieldLabel_2.Text = 'Grade 1 LUAD Color';

            % Create Grade1ColorEditField_R
            app.Grade1ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_R.Limits = [0 255];
            app.Grade1ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_R.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_R.Position = [136 157 39 22];

            % Create Grade1ColorEditField_G
            app.Grade1ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_G.Limits = [0 255];
            app.Grade1ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_G.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_G.Position = [181 157 39 22];
            app.Grade1ColorEditField_G.Value = 255;

            % Create Grade1ColorEditField_B
            app.Grade1ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade1ColorEditField_B.Limits = [0 255];
            app.Grade1ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade1ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade1ColorEditField_B.Tooltip = {'Define color for "Grade 1 LUAD" pixels on output grade map.'};
            app.Grade1ColorEditField_B.Position = [226 157 39 22];

            % Create NormalAlveoliColorEditFieldLabel_3
            app.NormalAlveoliColorEditFieldLabel_3 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_3.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_3.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_3.Position = [5 181 116 22];
            app.NormalAlveoliColorEditFieldLabel_3.Text = 'Normal Airway Color';

            % Create NormalAirwayColorEditField_R
            app.NormalAirwayColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_R.Limits = [0 255];
            app.NormalAirwayColorEditField_R.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_R.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_R.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_R.Position = [136 181 39 22];
            app.NormalAirwayColorEditField_R.Value = 255;

            % Create NormalAirwayColorEditField_G
            app.NormalAirwayColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_G.Limits = [0 255];
            app.NormalAirwayColorEditField_G.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_G.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_G.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_G.Position = [181 181 39 22];

            % Create NormalAirwayColorEditField_B
            app.NormalAirwayColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAirwayColorEditField_B.Limits = [0 255];
            app.NormalAirwayColorEditField_B.RoundFractionalValues = 'on';
            app.NormalAirwayColorEditField_B.ValueDisplayFormat = '%.0f';
            app.NormalAirwayColorEditField_B.Tooltip = {'Define color for "Normal Airway" pixels on output grade map.'};
            app.NormalAirwayColorEditField_B.Position = [226 181 39 22];
            app.NormalAirwayColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel_4
            app.NormalAlveoliColorEditFieldLabel_4 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_4.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_4.Tooltip = {'Define color for "Normal Avleoli" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_4.Position = [6 205 115 22];
            app.NormalAlveoliColorEditFieldLabel_4.Text = 'Normal Alveoli Color';

            % Create NormalAlveoliColorEditField_R
            app.NormalAlveoliColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_R.Limits = [0 255];
            app.NormalAlveoliColorEditField_R.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_R.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_R.Position = [136 205 39 22];

            % Create NormalAlveoliColorEditField_G
            app.NormalAlveoliColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_G.Limits = [0 255];
            app.NormalAlveoliColorEditField_G.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_G.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_G.Position = [181 205 39 22];
            app.NormalAlveoliColorEditField_G.Value = 255;

            % Create NormalAlveoliColorEditField_B
            app.NormalAlveoliColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.NormalAlveoliColorEditField_B.Limits = [0 255];
            app.NormalAlveoliColorEditField_B.RoundFractionalValues = 'on';
            app.NormalAlveoliColorEditField_B.ValueDisplayFormat = '%.0f';
            app.NormalAlveoliColorEditField_B.Position = [226 205 39 22];
            app.NormalAlveoliColorEditField_B.Value = 255;

            % Create NormalAlveoliColorEditFieldLabel_5
            app.NormalAlveoliColorEditFieldLabel_5 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_5.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_5.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_5.Position = [5 108 116 22];
            app.NormalAlveoliColorEditFieldLabel_5.Text = 'Grade 3 LUAD Color';

            % Create Grade3ColorEditField_R
            app.Grade3ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_R.Limits = [0 255];
            app.Grade3ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_R.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_R.Position = [136 107 39 22];
            app.Grade3ColorEditField_R.Value = 255;

            % Create Grade3ColorEditField_G
            app.Grade3ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_G.Limits = [0 255];
            app.Grade3ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_G.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_G.Position = [181 107 39 22];
            app.Grade3ColorEditField_G.Value = 255;

            % Create Grade3ColorEditField_B
            app.Grade3ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade3ColorEditField_B.Limits = [0 255];
            app.Grade3ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade3ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade3ColorEditField_B.Tooltip = {'Define color for "Grade 3 LUAD" pixels on output grade map.'};
            app.Grade3ColorEditField_B.Position = [226 107 39 22];

            % Create NormalAlveoliColorEditFieldLabel_6
            app.NormalAlveoliColorEditFieldLabel_6 = uilabel(app.GradeMapColorsTab);
            app.NormalAlveoliColorEditFieldLabel_6.HorizontalAlignment = 'right';
            app.NormalAlveoliColorEditFieldLabel_6.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.NormalAlveoliColorEditFieldLabel_6.Position = [5 83 116 22];
            app.NormalAlveoliColorEditFieldLabel_6.Text = 'Grade 4 LUAD Color';

            % Create Grade4ColorEditField_R
            app.Grade4ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_R.Limits = [0 255];
            app.Grade4ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_R.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_R.Position = [136 82 39 22];
            app.Grade4ColorEditField_R.Value = 255;

            % Create Grade4ColorEditField_G
            app.Grade4ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_G.Limits = [0 255];
            app.Grade4ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_G.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_G.Position = [181 82 39 22];

            % Create Grade4ColorEditField_B
            app.Grade4ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade4ColorEditField_B.Limits = [0 255];
            app.Grade4ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade4ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade4ColorEditField_B.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade4ColorEditField_B.Position = [226 82 39 22];

            % Create BackgroudColorEditFieldLabel
            app.BackgroudColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.BackgroudColorEditFieldLabel.HorizontalAlignment = 'right';
            app.BackgroudColorEditFieldLabel.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroudColorEditFieldLabel.Position = [18 33 103 22];
            app.BackgroudColorEditFieldLabel.Text = 'Background Color';

            % Create BackgroundColorEditField_R
            app.BackgroundColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_R.Limits = [0 255];
            app.BackgroundColorEditField_R.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_R.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_R.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_R.Position = [136 32 39 22];
            app.BackgroundColorEditField_R.Value = 255;

            % Create BackgroundColorEditField_G
            app.BackgroundColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_G.Limits = [0 255];
            app.BackgroundColorEditField_G.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_G.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_G.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_G.Position = [181 32 39 22];
            app.BackgroundColorEditField_G.Value = 255;

            % Create BackgroundColorEditField_B
            app.BackgroundColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.BackgroundColorEditField_B.Limits = [0 255];
            app.BackgroundColorEditField_B.RoundFractionalValues = 'on';
            app.BackgroundColorEditField_B.ValueDisplayFormat = '%.0f';
            app.BackgroundColorEditField_B.Tooltip = {'Define color for "Background" pixels on output grade map.'};
            app.BackgroundColorEditField_B.Position = [226 32 39 22];
            app.BackgroundColorEditField_B.Value = 255;

            % Create SkippedPatchColorEditFieldLabel
            app.SkippedPatchColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.SkippedPatchColorEditFieldLabel.HorizontalAlignment = 'right';
            app.SkippedPatchColorEditFieldLabel.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditFieldLabel.Position = [22 8 99 22];
            app.SkippedPatchColorEditFieldLabel.Text = 'Skip/Ignore Color';

            % Create SkippedPatchColorEditField_R
            app.SkippedPatchColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_R.Limits = [0 255];
            app.SkippedPatchColorEditField_R.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_R.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_R.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_R.Position = [136 7 39 22];

            % Create SkippedPatchColorEditField_G
            app.SkippedPatchColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_G.Limits = [0 255];
            app.SkippedPatchColorEditField_G.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_G.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_G.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_G.Position = [181 7 39 22];

            % Create SkippedPatchColorEditField_B
            app.SkippedPatchColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.SkippedPatchColorEditField_B.Limits = [0 255];
            app.SkippedPatchColorEditField_B.RoundFractionalValues = 'on';
            app.SkippedPatchColorEditField_B.ValueDisplayFormat = '%.0f';
            app.SkippedPatchColorEditField_B.Tooltip = {'Define color for pixels in skipped patches (based on tissue % defined in GLASS-AI analysis paramert tab.'};
            app.SkippedPatchColorEditField_B.Position = [226 7 39 22];

            % Create Grade5Lamp
            app.Grade5Lamp = uilamp(app.GradeMapColorsTab);
            app.Grade5Lamp.Position = [276 58 20 20];
            app.Grade5Lamp.Color = [0.6 0 0.6];

            % Create Grade5ColorEditFieldLabel
            app.Grade5ColorEditFieldLabel = uilabel(app.GradeMapColorsTab);
            app.Grade5ColorEditFieldLabel.HorizontalAlignment = 'right';
            app.Grade5ColorEditFieldLabel.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade5ColorEditFieldLabel.Position = [5 58 116 22];
            app.Grade5ColorEditFieldLabel.Text = 'Grade 5 LUAD Color';

            % Create Grade5ColorEditField_R
            app.Grade5ColorEditField_R = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade5ColorEditField_R.Limits = [0 255];
            app.Grade5ColorEditField_R.RoundFractionalValues = 'on';
            app.Grade5ColorEditField_R.ValueDisplayFormat = '%.0f';
            app.Grade5ColorEditField_R.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade5ColorEditField_R.Position = [136 57 39 22];
            app.Grade5ColorEditField_R.Value = 153;

            % Create Grade5ColorEditField_G
            app.Grade5ColorEditField_G = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade5ColorEditField_G.Limits = [0 255];
            app.Grade5ColorEditField_G.RoundFractionalValues = 'on';
            app.Grade5ColorEditField_G.ValueDisplayFormat = '%.0f';
            app.Grade5ColorEditField_G.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade5ColorEditField_G.Position = [181 57 39 22];

            % Create Grade5ColorEditField_B
            app.Grade5ColorEditField_B = uieditfield(app.GradeMapColorsTab, 'numeric');
            app.Grade5ColorEditField_B.Limits = [0 255];
            app.Grade5ColorEditField_B.RoundFractionalValues = 'on';
            app.Grade5ColorEditField_B.ValueDisplayFormat = '%.0f';
            app.Grade5ColorEditField_B.Tooltip = {'Define color for "Grade 4 LUAD" pixels on output grade map.'};
            app.Grade5ColorEditField_B.Position = [226 57 39 22];
            app.Grade5ColorEditField_B.Value = 153;

            % Create OutputImageScalingTab
            app.OutputImageScalingTab = uitab(app.TabGroup);
            app.OutputImageScalingTab.Title = 'Output Image Scaling';

            % Create GradeMapScalingSliderLabel
            app.GradeMapScalingSliderLabel = uilabel(app.OutputImageScalingTab);
            app.GradeMapScalingSliderLabel.HorizontalAlignment = 'right';
            app.GradeMapScalingSliderLabel.Position = [53 220 69 28];
            app.GradeMapScalingSliderLabel.Text = {'Grade Map '; 'Scaling'};

            % Create GradeMapScalingSlider
            app.GradeMapScalingSlider = uislider(app.OutputImageScalingTab);
            app.GradeMapScalingSlider.Limits = [12.5 100];
            app.GradeMapScalingSlider.MajorTicks = [12.5 25 50 100];
            app.GradeMapScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.GradeMapScalingSlider.MinorTicks = [];
            app.GradeMapScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor grade map. Default = 1/4'};
            app.GradeMapScalingSlider.Position = [134 236 150 3];
            app.GradeMapScalingSlider.Value = 25;

            % Create SegmentationScalingSliderLabel
            app.SegmentationScalingSliderLabel = uilabel(app.OutputImageScalingTab);
            app.SegmentationScalingSliderLabel.HorizontalAlignment = 'right';
            app.SegmentationScalingSliderLabel.Enable = 'off';
            app.SegmentationScalingSliderLabel.Position = [38 167 84 28];
            app.SegmentationScalingSliderLabel.Text = {'Segmentation '; 'Scaling'};

            % Create SegmentationScalingSlider
            app.SegmentationScalingSlider = uislider(app.OutputImageScalingTab);
            app.SegmentationScalingSlider.Limits = [12.5 100];
            app.SegmentationScalingSlider.MajorTicks = [12.5 25 50 100];
            app.SegmentationScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.SegmentationScalingSlider.MinorTicks = [];
            app.SegmentationScalingSlider.Enable = 'off';
            app.SegmentationScalingSlider.Tooltip = {'Set the scaling factor used when generating the output tumor segmentation map. Default = 1/2'};
            app.SegmentationScalingSlider.Position = [134 183 150 3];
            app.SegmentationScalingSlider.Value = 50;

            % Create StainNormalizedImageScalingSliderLabel
            app.StainNormalizedImageScalingSliderLabel = uilabel(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingSliderLabel.HorizontalAlignment = 'right';
            app.StainNormalizedImageScalingSliderLabel.Enable = 'off';
            app.StainNormalizedImageScalingSliderLabel.Position = [26 121 97 28];
            app.StainNormalizedImageScalingSliderLabel.Text = {'Stain Normalized'; ' Image Scaling'};

            % Create StainNormalizedImageScalingSlider
            app.StainNormalizedImageScalingSlider = uislider(app.OutputImageScalingTab);
            app.StainNormalizedImageScalingSlider.Limits = [12.5 100];
            app.StainNormalizedImageScalingSlider.MajorTicks = [12.5 25 50 100];
            app.StainNormalizedImageScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.StainNormalizedImageScalingSlider.MinorTicks = [];
            app.StainNormalizedImageScalingSlider.Enable = 'off';
            app.StainNormalizedImageScalingSlider.Tooltip = {'Set the scaling factor used when generating the output stain normalized image. Default = FULL'};
            app.StainNormalizedImageScalingSlider.Position = [135 137 150 3];
            app.StainNormalizedImageScalingSlider.Value = 100;

            % Create SegmentationImageCheckBox
            app.SegmentationImageCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.SegmentationImageCheckBox.Enable = 'off';
            app.SegmentationImageCheckBox.Tooltip = {'When checked, an output image with individual tumors segmented and labeled will be generated. The tumor labeling process can take some time in large images.'};
            app.SegmentationImageCheckBox.Text = '';
            app.SegmentationImageCheckBox.Position = [4 176 25 22];

            % Create ConfidenceMapScalingSliderLabel
            app.ConfidenceMapScalingSliderLabel = uilabel(app.OutputImageScalingTab);
            app.ConfidenceMapScalingSliderLabel.HorizontalAlignment = 'right';
            app.ConfidenceMapScalingSliderLabel.Enable = 'off';
            app.ConfidenceMapScalingSliderLabel.Position = [27 70 98 28];
            app.ConfidenceMapScalingSliderLabel.Text = {'Confidence Map '; 'Scaling'};

            % Create ConfidenceMapScalingSlider
            app.ConfidenceMapScalingSlider = uislider(app.OutputImageScalingTab);
            app.ConfidenceMapScalingSlider.Limits = [12.5 100];
            app.ConfidenceMapScalingSlider.MajorTicks = [12.5 25 50 100];
            app.ConfidenceMapScalingSlider.MajorTickLabels = {'1/8', '1/4', '1/2', 'FULL'};
            app.ConfidenceMapScalingSlider.MinorTicks = [];
            app.ConfidenceMapScalingSlider.Enable = 'off';
            app.ConfidenceMapScalingSlider.Tooltip = {'Set the scaling factor used when generating the maximum class confidence/probability map. '; 'Default = 1/4'};
            app.ConfidenceMapScalingSlider.Position = [137 86 150 3];
            app.ConfidenceMapScalingSlider.Value = 25;

            % Create ConfidenceMapCheckBox
            app.ConfidenceMapCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.ConfidenceMapCheckBox.Enable = 'off';
            app.ConfidenceMapCheckBox.Tooltip = {'When checked, outputs a map of predicted class confidence/probabiilty for GLASS-AI''s prediction. A .mat file containing the activation weights of each class for each pixel will also be created.'};
            app.ConfidenceMapCheckBox.Text = '';
            app.ConfidenceMapCheckBox.Position = [5 78 25 22];

            % Create ConfidenceMappaletteDropDownLabel
            app.ConfidenceMappaletteDropDownLabel = uilabel(app.OutputImageScalingTab);
            app.ConfidenceMappaletteDropDownLabel.HorizontalAlignment = 'right';
            app.ConfidenceMappaletteDropDownLabel.Enable = 'off';
            app.ConfidenceMappaletteDropDownLabel.Position = [50 33 134 22];
            app.ConfidenceMappaletteDropDownLabel.Text = 'Confidence Map palette';

            % Create ConfidenceMapPaletteDropDown
            app.ConfidenceMapPaletteDropDown = uidropdown(app.OutputImageScalingTab);
            app.ConfidenceMapPaletteDropDown.Items = {'Hot', 'Gray', 'Bone', 'Turbo', 'Cool'};
            app.ConfidenceMapPaletteDropDown.ItemsData = {'hot', 'gray', 'bone', 'turbo', 'cool'};
            app.ConfidenceMapPaletteDropDown.Enable = 'off';
            app.ConfidenceMapPaletteDropDown.Tooltip = {'Select the color map to use for the maximum class confidence/probability map. '; 'Default = "Hot"'};
            app.ConfidenceMapPaletteDropDown.Position = [199 33 100 22];
            app.ConfidenceMapPaletteDropDown.Value = 'hot';

            % Create NormalizedImageOutputCheckBox
            app.NormalizedImageOutputCheckBox = uicheckbox(app.OutputImageScalingTab);
            app.NormalizedImageOutputCheckBox.Enable = 'off';
            app.NormalizedImageOutputCheckBox.Tooltip = {'When checked, saves the stain normalized image as .tif file in the output folder.'};
            app.NormalizedImageOutputCheckBox.Text = '';
            app.NormalizedImageOutputCheckBox.Position = [5 130 25 22];

            % Create LinksTab
            app.LinksTab = uitab(app.TabGroup);
            app.LinksTab.Title = 'Links';

            % Create Hyperlink
            app.Hyperlink = uihyperlink(app.LinksTab);
            app.Hyperlink.URL = 'https://github.com/jlockhar/GLASS-AI';
            app.Hyperlink.Position = [11 201 170 22];
            app.Hyperlink.Text = 'GLASS-AI GitHub Repository';

            % Create Hyperlink_2
            app.Hyperlink_2 = uihyperlink(app.LinksTab);
            app.Hyperlink_2.Position = [11 224 130 22];
            app.Hyperlink_2.Text = 'GLASS-AI Manuscript';

            % Create Hyperlink_3
            app.Hyperlink_3 = uihyperlink(app.LinksTab);
            app.Hyperlink_3.URL = 'https://www.florescancerlab.org/';
            app.Hyperlink_3.Position = [12 157 143 22];
            app.Hyperlink_3.Text = 'The Flores Lab @ Moffitt';

            % Create Hyperlink_4
            app.Hyperlink_4 = uihyperlink(app.LinksTab);
            app.Hyperlink_4.URL = 'https://github.com/jlockhar/GLASS-AI-annotation-editor';
            app.Hyperlink_4.Position = [11 179 277 22];
            app.Hyperlink_4.Text = 'GLASS-AI Annotation Editor GitHub Repository';

            % Create AppTitle
            app.AppTitle = uilabel(app.UIFigure);
            app.AppTitle.WordWrap = 'on';
            app.AppTitle.FontSize = 18;
            app.AppTitle.FontWeight = 'bold';
            app.AppTitle.Position = [87 368 247 50];
            app.AppTitle.Text = 'GLASS-AI Annotation Editor';

            % Create VersionLabel
            app.VersionLabel = uilabel(app.UIFigure);
            app.VersionLabel.HorizontalAlignment = 'right';
            app.VersionLabel.Enable = 'off';
            app.VersionLabel.Position = [663 391 116 22];
            app.VersionLabel.Text = 'version #.#.#';

            % Create AppLogo
            app.AppLogo = uiimage(app.UIFigure);
            app.AppLogo.Position = [3 370 88 45];

            % Create UpdateAvailableButton
            app.UpdateAvailableButton = uibutton(app.UIFigure, 'push');
            app.UpdateAvailableButton.BackgroundColor = [0.9412 0.9412 0.9412];
            app.UpdateAvailableButton.FontWeight = 'bold';
            app.UpdateAvailableButton.Enable = 'off';
            app.UpdateAvailableButton.Visible = 'off';
            app.UpdateAvailableButton.Tooltip = {'Click to get the latest version of the GLASS-AI app!'};
            app.UpdateAvailableButton.Position = [663 368 115 23];
            app.UpdateAvailableButton.Text = 'Update Available!';

            % Create UITable
            app.UITable = uitable(app.UIFigure);
            app.UITable.ColumnName = {'Image'; 'GLASS-AI Results'; 'Manual Annotation'; 'ImagePath'; 'ClassificationPath'; 'AnnoationPath'};
            app.UITable.ColumnWidth = {150, 150, 150, 0, 0, 0};
            app.UITable.RowName = {};
            app.UITable.ColumnSortable = true;
            app.UITable.DoubleClickedFcn = createCallbackFcn(app, @UITableDoubleClicked, true);
            app.UITable.SelectionChangedFcn = createCallbackFcn(app, @UITableSelectionChanged, true);
            app.UITable.BusyAction = 'cancel';
            app.UITable.Interruptible = 'off';
            app.UITable.Position = [327 12 447 278];

            % Create SelectGLASSAILogFileButton
            app.SelectGLASSAILogFileButton = uibutton(app.UIFigure, 'push');
            app.SelectGLASSAILogFileButton.ButtonPushedFcn = createCallbackFcn(app, @SelectGLASSAILogFileButtonPushed, true);
            app.SelectGLASSAILogFileButton.Tooltip = {'Select the log file produced by GLASS-AI for the analysis you wish to edit. This app will attempt to set the inputs, outputs, and analysis parameters automatically based on the information in the log file.'};
            app.SelectGLASSAILogFileButton.Position = [54 302 228 23];
            app.SelectGLASSAILogFileButton.Text = '(Optional) Import from GLASS-AI logfile';

            % Create CopytobaseButton
            app.CopytobaseButton = uibutton(app.UIFigure, 'push');
            app.CopytobaseButton.ButtonPushedFcn = createCallbackFcn(app, @CopytobaseButtonPushed, true);
            app.CopytobaseButton.Enable = 'off';
            app.CopytobaseButton.Visible = 'off';
            app.CopytobaseButton.Position = [408 381 100 23];
            app.CopytobaseButton.Text = 'Copy to base';

            % Create UITableContextMenu
            app.UITableContextMenu = uicontextmenu(app.UIFigure);

            % Create UnselectMenu
            app.UnselectMenu = uimenu(app.UITableContextMenu);
            app.UnselectMenu.MenuSelectedFcn = createCallbackFcn(app, @UnselectMenuSelected, true);
            app.UnselectMenu.Text = 'Unselect';

            % Create ClearMenu
            app.ClearMenu = uimenu(app.UITableContextMenu);
            app.ClearMenu.Text = 'Clear';

            % Create ClearSelection
            app.ClearSelection = uimenu(app.ClearMenu);
            app.ClearSelection.MenuSelectedFcn = createCallbackFcn(app, @ClearSelectionMenuSelected, true);
            app.ClearSelection.Text = 'Selection';

            % Create ClearRows
            app.ClearRows = uimenu(app.ClearMenu);
            app.ClearRows.MenuSelectedFcn = createCallbackFcn(app, @ClearRowsMenuSelected, true);
            app.ClearRows.Text = 'Row(s)';

            % Create ClearColumns
            app.ClearColumns = uimenu(app.ClearMenu);
            app.ClearColumns.MenuSelectedFcn = createCallbackFcn(app, @ClearColumnsMenuSelected, true);
            app.ClearColumns.Text = 'Column(s)';

            % Create ClearInvalidFiles
            app.ClearInvalidFiles = uimenu(app.ClearMenu);
            app.ClearInvalidFiles.MenuSelectedFcn = createCallbackFcn(app, @ClearInvalidFilesSelected, true);
            app.ClearInvalidFiles.Text = 'Invalid Files';

            % Create ChangeFolderMenu
            app.ChangeFolderMenu = uimenu(app.UITableContextMenu);
            app.ChangeFolderMenu.MenuSelectedFcn = createCallbackFcn(app, @ChangeFolderMenuSelected, true);
            app.ChangeFolderMenu.Enable = 'off';
            app.ChangeFolderMenu.Text = 'Change Folder';

            % Create PopulatefromFolderMenu
            app.PopulatefromFolderMenu = uimenu(app.UITableContextMenu);
            app.PopulatefromFolderMenu.MenuSelectedFcn = createCallbackFcn(app, @PopulatefromFolderMenuSelected, true);
            app.PopulatefromFolderMenu.Enable = 'off';
            app.PopulatefromFolderMenu.Text = 'Populate from Folder';
            
            % Assign app.UITableContextMenu
            app.UITable.ContextMenu = app.UITableContextMenu;

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = GLASS_AI_annotation_editor

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end