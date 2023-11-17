'''
import os
import subprocess
import shutil
from itertools import product

def generate_config_combinations():
    # Define the possible values for each configuration parameter
    cpu_types = ["O3CPU", "MinorCPU"]  # Replace with your actual CPU types
    l1d_sizes = ["128kB", "256kB", "512kB"]  # Replace with your actual L1D sizes
    l1i_sizes = ["128kB", "256kB", "512kB"]  # Replace with your actual L1I sizes
    l1d_assocs = [2, 4, 8, 16]  # Replace with your actual L1D associativities
    l1i_assocs = [2, 4, 8, 16]  # Replace with your actual L1I associativities

    # Generate all possible combinations
    configurations = list(product(cpu_types, l1d_sizes, l1i_sizes, l1d_assocs, l1i_assocs))

    return configurations

def run_gem5_command(root_directory, output_directory, gem5_binary="build/RISCV/gem5.opt"):
    configurations = generate_config_combinations()

    for config in configurations:
        cpu_type, l1d_size, l1i_size, l1d_assoc, l1i_assoc = config

        for foldername, subfolders, filenames in os.walk(root_directory):
            # Check if there is a binary file with the .RISCV extension in the folder
            riscv_files = [filename for filename in filenames if filename.endswith(".RISCV")]
            if riscv_files:
                for riscv_file in riscv_files:
                    riscv_file_path = os.path.join(foldername, riscv_file)

                    # Define the command with the placeholder replaced by the actual path and configuration
                    gem5_command = (
                        f"{gem5_binary} configs/example/se.py --cmd={riscv_file_path} "
                        f"--cpu-type={cpu_type} --l1d_size={l1d_size} --l1i_size={l1i_size} "
                        f"--l1d_assoc={l1d_assoc} --l1i_assoc={l1i_assoc} --caches"
                    )

                    # Create an output folder based on the benchmark name within the specified output directory
                    benchmark_name = os.path.basename(foldername)
                    output_folder_name = (
                        f"{benchmark_name}_{cpu_type}_L1D-{l1d_size}_L1I-{l1i_size}_AssocD-{l1d_assoc}_AssocI-{l1i_assoc}_output"
                    )
                    output_folder = os.path.join(output_directory, output_folder_name)
                    os.makedirs(output_folder, exist_ok=True)

                    # Execute the command and save the output to a file in the output folder
                    output_file_path = os.path.join(output_folder, "output.txt")
                    with open(output_file_path, "w") as output_file:
                        subprocess.run(gem5_command, shell=True, stdout=output_file, stderr=subprocess.STDOUT)

                    print(f"Command executed for {riscv_file_path}. Output saved to {output_file_path}")

                    # Copy the required files from /home/kd/gem5/m5out/ to the output folder
                    source_folder = "/home/subham/gem5/m5out/"
                    required_files = ["config.ini", "config.json", "stats.txt"]
                    for file in required_files:
                        source_file_path = os.path.join(source_folder, file)
                        destination_file_path = os.path.join(output_folder, file)
                        shutil.copy(source_file_path, destination_file_path)
                        print(f"Copying {file} to {output_folder}")

# Replace 'your_root_directory' with the path to the root directory containing the benchmark folders
# Replace 'your_output_directory' with the path to the directory where you want to save the output folders
run_gem5_command('/home/subham/microbench/', '/home/subham/Lab6_7_stats/')
'''

import os
import subprocess
import shutil
from itertools import product

def generate_config_combinations():
    # Define the possible values for each configuration parameter
    cpu_types = ["MinorCPU"]  # Replace with your actual CPU types
    l1d_sizes = ["128kB", "256kB", "512kB"]  # Replace with your actual L1D sizes
    l1i_sizes = ["128kB", "256kB", "512kB"]  # Replace with your actual L1I sizes
    l1d_assocs = [2, 4, 8, 16]  # Replace with your actual L1D associativities
    l1i_assocs = [2, 4, 8, 16]  # Replace with your actual L1I associativities

    # Generate all possible combinations
    configurations = list(product(cpu_types, l1d_sizes, l1i_sizes, l1d_assocs, l1i_assocs))

    return configurations

def run_gem5_command(root_directory, output_directory, gem5_binary="build/RISCV/gem5.opt"):
    configurations = generate_config_combinations()

    for config in configurations:
        cpu_type, l1d_size, l1i_size, l1d_assoc, l1i_assoc = config

        for foldername, subfolders, filenames in os.walk(root_directory):
            # Check if there is a binary file with the .RISCV extension in the folder
            riscv_files = [filename for filename in filenames if filename.endswith(".RISCV")]
            if riscv_files:
                for riscv_file in riscv_files:
                    riscv_file_path = os.path.join(foldername, riscv_file)

                    # Define the command with the placeholder replaced by the actual path and configuration
                    gem5_command = (
                        f"{gem5_binary} configs/deprecated/example/se.py --cmd={riscv_file_path} "
                        f"--cpu-type={cpu_type} --l1d_size={l1d_size} --l1i_size={l1i_size} "
                        f"--l1d_assoc={l1d_assoc} --l1i_assoc={l1i_assoc} --caches"
                    )

                    # Create an output folder based on the benchmark name within the specified output directory
                    benchmark_name = os.path.basename(foldername)
                    output_folder_name = (
                        f"{benchmark_name}_{cpu_type}_L1D-{l1d_size}_L1I-{l1i_size}_AssocD-{l1d_assoc}_AssocI-{l1i_assoc}_output"
                    )
                    output_folder = os.path.join(output_directory, output_folder_name)
                    os.makedirs(output_folder, exist_ok=True)

                    # Execute the command and save the output to a file in the output folder
                    output_file_path = os.path.join(output_folder, "output.txt")
                    with open(output_file_path, "w") as output_file:
                        subprocess.run(gem5_command, shell=True, stdout=output_file, stderr=subprocess.STDOUT)

                    print(f"Command executed for {riscv_file_path}. Output saved to {output_file_path}")

                    # Copy the required files from /home/subham/gem5/m5out/ to the output folder
                    source_folder = "/home/subham/gem5/m5out"
                    required_files = ["config.ini", "config.json", "stats.txt"]
                    for file in required_files:
                        source_file_path = os.path.join(source_folder, file)
                        destination_file_path = os.path.join(output_folder, file)
                        shutil.copy(source_file_path, destination_file_path)
                        print(f"Copying {file} to {output_folder}")

# Replace 'your_root_directory' with the path to the root directory containing the benchmark folders
# Replace 'your_output_directory' with the path to the directory where you want to save the output folders
run_gem5_command('/home/subham/microbench/', '/home/subham/lab6&7_minor/')

