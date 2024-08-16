function [log_struct] = parseGLASSAIlogfile(logfile_path)
    %read in the log file
    logfile = readlines(logfile_path);
    
    log_struct = struct();
    
    %parse in system info
    log_struct.SystemInfo.SystemType = pullvalfromlog(logfile,"System type");
    log_struct.SystemInfo.CanUseGPU = pullvalfromlog(logfile,"Can use GPU");
    log_struct.SystemInfo.Memory = pullvalfromlog(logfile,"System memory");
    
    %parse in app info
    log_struct.AppInfo.Deployed = pullvalfromlog(logfile,"App is deployed");
    log_struct.AppInfo.AppVersion = pullvalfromlog(logfile,"GLASS-AI version");
    log_struct.AppInfo.GitHubVersion = pullvalfromlog(logfile,"Current GLASS-AI app version on GitHub");
    log_struct.AppInfo.ctfRootDirectory = pullvalfromlog(logfile,"ctfroot");
    log_struct.AppInfo.WorkingDirectory = pullvalfromlog(logfile,"working directory");
    log_struct.AppInfo.ResourceDirectory = pullvalfromlog(logfile,"resource directory");
    log_struct.AppInfo.NeuralNetLocation = pullvalfromlog(logfile,"Loaded GLASS-AI.mat from");
    
    %parse in run parameters
    log_struct.RunParameters.PatchSkipThreshold = pullvalfromlog(logfile,"Patch skip threshold:");
    log_struct.RunParameters.SmoothingMethod = pullvalfromlog(logfile,"Smoothing method:");
    log_struct.RunParameters.SmoothingDiameter = pullvalfromlog(logfile,"Smoothing diameter:");
    log_struct.RunParameters.TumorSizeThreshold = pullvalfromlog(logfile,"Tumor size threshold:");
    log_struct.RunParameters.TumorMergeDistance = pullvalfromlog(logfile,"Tumor merge distance:");
    
    log_struct.RunParameters.AssignOverallGrades = pullvalfromlog(logfile,"Assign overall grades");
    log_struct.RunParameters.OverallGradeMethod = pullvalfromlog(logfile,"Overall tumor grade assignment method:");
    log_struct.RunParameters.OverallGradeThreshold = pullvalfromlog(logfile,"Overall tumor grade assignment threshold:");
    
    log_struct.RunParameters.StainNormalization.PerformNormalization = pullvalfromlog(logfile,"Normalize staining:");
    log_struct.RunParameters.StainNormalization.Alpha = pullvalfromlog(logfile,"Stain normalization alpha:");
    log_struct.RunParameters.StainNormalization.Beta = pullvalfromlog(logfile,"Stain normalization beta:");
    log_struct.RunParameters.StainNormalization.Background = pullvalfromlog(logfile,"Stain normalization background:");
    log_struct.RunParameters.StainNormalization.TissueThreshold = pullvalfromlog(logfile,"Stain normalization tissue threshold:");
    log_struct.RunParameters.StainNormalization.HematoxylinReferenceVector = pullvalfromlog(logfile,"Stain normalization hematoxylin:");
    log_struct.RunParameters.StainNormalization.EosinReferenceVector = pullvalfromlog(logfile,"Stain normalization eosin:");
    log_struct.RunParameters.StainNormalization.RemovePureColors = pullvalfromlog(logfile,"Remove pure colors during normalization:");
    
    %parse in run output options
    log_struct.RunParameters.Outputs.OutputDirectory = pullvalfromlog(logfile,"Output directory selected:");
    log_struct.RunParameters.Outputs.AppendSummary = pullvalfromlog(logfile,"Append slide summary:");
    log_struct.RunParameters.Outputs.PreviewResultImages = pullvalfromlog(logfile,"Make preview images:");
    %grade map
    log_struct.RunParameters.Outputs.GradeMap.Scale = pullvalfromlog(logfile,"Grade map output scale:");
    log_struct.RunParameters.Outputs.GradeMap.Grade1Color = pullvalfromlog(logfile,"Grade 1 LUAD Color:");
    log_struct.RunParameters.Outputs.GradeMap.Grade2Color = pullvalfromlog(logfile,"Grade 2 LUAD Color:");
    log_struct.RunParameters.Outputs.GradeMap.Grade3Color = pullvalfromlog(logfile,"Grade 3 LUAD Color:");
    log_struct.RunParameters.Outputs.GradeMap.Grade4Color = pullvalfromlog(logfile,"Grade 4 LUAD Color:");
    log_struct.RunParameters.Outputs.GradeMap.AlveoliColor = pullvalfromlog(logfile,"Alveoli Color:");
    log_struct.RunParameters.Outputs.GradeMap.AirwayColor = pullvalfromlog(logfile,"Airway Color:");
    log_struct.RunParameters.Outputs.GradeMap.BackgroundColor = pullvalfromlog(logfile,"Background class Color:");
    log_struct.RunParameters.Outputs.GradeMap.SkippedColor = pullvalfromlog(logfile,"Skipped patch Color:");
    %segmentation image
    log_struct.RunParameters.Outputs.SegmentationImage.SaveImage = pullvalfromlog(logfile,"Make segmentation image:");
    log_struct.RunParameters.Outputs.SegmentationImage.Scale = pullvalfromlog(logfile,"Segmentation image output scale:");
    %normalized stain image
    log_struct.RunParameters.Outputs.NormalizedImage.SaveImage = pullvalfromlog(logfile,"Make normalized image:");
    log_struct.RunParameters.Outputs.NormalizedImage.Scale = pullvalfromlog(logfile,"Stain normalize image output scale:");
    %confidence map
    log_struct.RunParameters.Outputs.ConfidenceMap.SaveImage = pullvalfromlog(logfile,"Make confidence map:");
    log_struct.RunParameters.Outputs.ConfidenceMap.Scale = pullvalfromlog(logfile,"Confidence map output scale:");
    log_struct.RunParameters.Outputs.ConfidenceMap.ColorMap = pullvalfromlog(logfile,"Confidence map output color map:");
    
    %get images selected for analysis
    image_lines = logfile(contains(logfile,"File selected"));
    image_vals = split(image_lines, "File selected:");
    image_vals = split(strtrim(image_vals(:,2)),sprintf("\t"));
    image_sizes = image_vals(:,2);
    image_file_paths = image_vals(:,1);
    image_vals = split(image_vals(:,1),"\");
    image_filenames = image_vals(:,end);
    [~,image_names,image_extensions] = fileparts(image_filenames);
    
    %remove duplicated entries for the same file paths
    [~,keep_inds,~] = unique(image_file_paths,'last');
    image_file_paths = image_file_paths(keep_inds);
    image_filenames = image_filenames(keep_inds);
    image_names = image_names(keep_inds);
    image_extensions = image_extensions(keep_inds);
    image_sizes = image_sizes(keep_inds);
    
    %make the image names valid MATLAB field names to store in log_struct
    image_struct_name = matlab.lang.makeValidName(image_names);
    
    for image_ind = 1:length(image_names)
        current_image_filename = image_filenames(image_ind);
    
        %get file info
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).ImageName = image_names(image_ind);
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).FileType = image_extensions(image_ind);
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).FileName = image_filenames(image_ind);
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).FileSize = image_sizes(image_ind);
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).FilePath = image_file_paths(image_ind);
    
        %get analysis time info
        %start time
        [~,image_start_time] = pullvalfromlog(logfile,strcat("Beginning analysis of ",current_image_filename));
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).StartTime = image_start_time;
        %end time
        [~,image_end_time] = pullvalfromlog(logfile,strcat("Completed analysis and output of ",current_image_filename));
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).EndTime = image_end_time;
        %elapsed time
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).ElapsedTime = string(datetime(image_end_time)-datetime(image_start_time));
    
        if strlength(image_end_time) > 0
            image_status = "Completed";
        elseif strlength(image_start_time) > 0
            image_status = "Incomplete";
        else
            image_status = "Not started";
        end
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).AnalysisStatus = image_status;
    
        %get paths to outputfiles
        %pixel classifications (#####_classes.mat)
        search_pattern = strcat("Saved raw classifications for ",current_image_filename," to ");
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.ClassificationsMATFILE = pullvalfromlog(logfile,search_pattern,SplitDelim=" to ");
        
        %tumor label mask (#####_tumor_labels.mat)
        search_pattern = strcat("Saved tumor label mask for ",current_image_filename," to ");
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.TumorLabelMaskMATFILE = pullvalfromlog(logfile,search_pattern,SplitDelim=" to ");
    
        %individual tumor stats (#####.xlsx)
        search_pattern = strcat("Saved individual tumor stats for ",current_image_filename," to ");
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.IndividualTumorStatsXLSX = pullvalfromlog(logfile,search_pattern,SplitDelim=" to ");
    
        %image tumor stats (Whole slide summary.xlsx)
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.ImageLevelStatsXLSX = strcat(log_struct.RunParameters.Outputs.OutputDirectory,"\Whole slide summary.xlsx");
        
        %tumor grade map (######_grades.tif)
        search_pattern = "Saved tumor grade image for " + current_image_filename+ " to " +wildcardPattern("Except","overall")+"overall_grades.tif";
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.TumorGradeMapTIF = pullvalfromlog(logfile,search_pattern,ValueIndex = 2,SplitDelim=" to ",StripPattern=" using writetiff");
    
        %overall tumor grade mask (######_overall_grades.mat)
        search_pattern = strcat("Saved overall tumor grade mask for ",current_image_filename," to ");
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.OverallTumorGradeMaskMATFILE = pullvalfromlog(logfile,search_pattern,SplitDelim=" to ");
    
        %overall tumor grade map (######_overall_grades.tif)
        search_pattern = "Saved tumor grade image for " + current_image_filename+ " to " +wildcardPattern+"overall_grades.tif";
        log_struct.AnalyzedImages.(image_struct_name(image_ind)).OutputFiles.OverallTumorGradeMapTIF = pullvalfromlog(logfile,search_pattern,SplitDelim=" to ",StripPattern=" using writetiff");

    end %for loop over analyzed images
    
end %function parselogfiletostruct


function [line_val,timestamp] = pullvalfromlog(logfile,search_pattern,options)
arguments
    logfile (:,:) string {mustBeText}
    search_pattern (1,:) pattern
    options.SearchFunction (1,:) string {mustBeMember(options.SearchFunction,{'startsWith','endsWith','contains','matches'})} = 'contains'
    options.SplitDelim (1,:) char {mustBeTextScalar} = ':'
    options.StripTimestamp (1,1) logical = true
    options.ValueIndex (1,1) double {mustBeInteger} = 2
    options.TimestampPattern (1,:) = digitsPattern(2)+"-"+lettersPattern(3)+"-"+digitsPattern(4)+" "+digitsPattern(2)+":"+digitsPattern(2)+":"+digitsPattern(2)+" - "
    options.StripPattern (1,:) = ""
end
    %extract matching line from logfile
    line_ind = feval(options.SearchFunction,logfile,search_pattern);
    line_text = logfile(line_ind);
    
    %extract timestamp from line
    timestamp = extract(line_text,options.TimestampPattern);
    %trim trailing separator from timestamp
    timestamp = replace(timestamp," - ","");
    
    %remove leading timestamp (by default)
    if options.StripTimestamp
        line_text = replace(line_text,options.TimestampPattern,"");
    end

    %strip out additional text if requested
    if not(options.StripPattern=="")
        line_text = replace(line_text, options.StripPattern,"");
    end
    
    %split line using delim
    line_val = strtrim(split(line_text,sprintf(options.SplitDelim)));
    %drop any empty strings produced by consecutive delims
    line_val = line_val(strlength(line_val)>0);

    %interpret line
    if length(line_val) >= options.ValueIndex
        if not(isempty(str2num(line_val(options.ValueIndex))))
            %convert numbers in strings to numeric or logical type
            line_val = str2num(line_val(options.ValueIndex));
        else
            %leave strings alone
            line_val = line_val(options.ValueIndex);
        end
    else
        %add dummy value if actual value couldn't be found in logfile
        line_val = "Could not find value in logfile";
    end

end
