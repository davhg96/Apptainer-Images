
# Build procedure
Here are the build scripts to build the image. Intentded to run in an x64 architechture. The following files are described in order:
- /Definition files contains the .def files for the images as they are updated. They build and install packages in one shot. From version 1.1 it is necessary to add your GitHub PAT to ./EnvPack/gitCredsHelper_woKey.sh

- During boild the helper script will set the PAT to install GitHub packages. Add your PAT before starting build

Once happy with the build
- build_sif.sh Will use transform the sandbox into a .sif image that we can transport
- Jupyter_service.sbatch is the command used to launch the sif image into an HPC server node so we can work on our data
