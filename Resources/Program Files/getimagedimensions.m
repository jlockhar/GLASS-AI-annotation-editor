function [image_width, image_height, image_scale] = getimagedimensions(path, mag)
            % Read file header and return images sizes and resolution
            I1info=imfinfo(path);
            imageNo=size(I1info,1); %number of images in svs file
            imageInfo=zeros(imageNo,5); %initialize imageInfo to zeros
            for i=1:imageNo
                % Get image size
                imageInfo(i,1)=I1info(i).Width;
                imageInfo(i,2)=I1info(i).Height;
                imageInfo(i,3)=i;

                % Get image magnification and resolutions
                try
                    imageDescription=I1info(i).ImageDescription;
                    C=strsplit(imageDescription,'|');
                    C2=C(contains(C,'MPP')); % microns per pixel
                    if(~isempty(C2))
                        C3=strsplit(C2{1},'=');
                        app.IMAGE_RESOLUTION=str2double(C3{2});
                        imageInfo(i,4)=app.IMAGE_RESOLUTION;
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
                end
            end
            imageInfo = sortrows(imageInfo);

            
% find the images of target magnifcation
pos=find(imageInfo(:,5)==mag);
if ~isempty(pos)
    % find the largest image of matching magnfication
    pos = max(pos(:,1));
    image_width = imageInfo(pos,1);
    image_height = imageInfo(pos,2);
    image_scale = 1;
else %if no images with target magnfication look for scaled matches
    pos = find(mod(imageInfo(:,5),mag)==0);
    max_width = imageInfo(max(pos(:,1)),1);
    max_mag = imageInfo(max(pos(:,1)),5);
    image_scales = ((imageInfo(:,1)/max_width))*max_mag;
    pos  = find(image_scales(:,1) == mag);
    if ~isempty(pos)
        image_scale = mag/max_mag;
        image_width = imageInfo(pos(1),1);
        image_height = imageInfo(pos(1),2);
    else
            error('Could not find images with target magnification in the svs file!');
    end
end
    
end % End function: getimageinfo