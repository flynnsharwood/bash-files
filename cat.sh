#!/bin/bash

input_folder="/mnt/c/Users/Study/Downloads/pdf-image-set"
output_folder="/mnt/c/Users/Study/Downloads/haloakanesarenes"
group_size=7
total_images=210

# Create a temporary directory to store intermediate output files
temp_dir=$(mktemp -d)

for ((i = 1; i <= total_images; i += group_size)); do
    input_files=""
    end_index=$((i + group_size - 1))
    output_file="out${i}-${end_index}.png"

    for ((j = i; j <= end_index; j++)); do
        input_files="${input_files} ${input_folder}/${j}.png"
    done

    # Use a temporary output file in the temporary directory
    temp_output="${temp_dir}/${output_file}"

    convert ${input_files} -append "${temp_output}"
done

# Move the temporary files to the final output folder
mv "${temp_dir}"/*.png "${output_folder}/"

# Remove the temporary directory
rm -r "${temp_dir}"
