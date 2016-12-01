# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true

  process convert: 'jpg'

  version :standard do
    resize_to_fit 800, 600
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 150, height: 150, crop: :thumb, gravity: :face
  end

  version :photo_card do
    cloudinary_transformation width: 400, height: 300, crop: :fill
  end

  version :profile do
    cloudinary_transformation width: 50, height: 50, crop: :fill
  end

end
