
# Build procedure
Here are the build scripts to build the image. Intentded to run in an x64 architechture. The following files are described in order:
- image.def contains basic container creation to be finished interactively in the sandbox
- imageOneshot.def contains the build scripts to make the comple image, including library and package installation
- build_sandbox.sh will create an interactive sandbox space that we can use to finish installation of specific softwate.
- tinker_image.sh will open the command line to the sandbox in order to edit it.

Once happy with the build
- build_sif.sh Will use transform the sandbox into a .sif image that we can transport
- Jupyter_service.sbatch is the command used to launch the sif image into an HPC server node so we can work on our data
