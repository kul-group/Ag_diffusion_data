# Ag_diffusion_data

Data and inputs for the paper on surface diffusion on Ag (111). We highly recommend the data is downloaded as a zip file for use. 

[Paper Link]()

The trained DeepMD-kit model (graph.pb) can be used with Atomic Simulation Environment (ASE) as follows:

```python
from deepmd.calculator import DP
DPcalculator=DP(model="graph.pb")
atoms.set_calculator(DPcalculator)
```

Installation instructions for [DeepMD-kit](https://docs.deepmodeling.com/projects/deepmd/en/master/getting-started/install.html) and [ASE](https://wiki.fysik.dtu.dk/ase/) can be found on their websites.

Folder structure for data:

```
📦 data_for_paper
│
└───📂 data
│   │   Model Training, Testing and validation datasets separated by each adsorbate
│   ┣   📜 type_map.json
│   │   ...
│   └───📂subfolders
│   │   ┣📂 test
│   │   |   ┣ 📜box.npy
│   │   |   ┣ 📜coord.npy
│   │   |   ┣ 📜energy.npy
│   │   |   ┣ 📜force.npy
│   │   ┣📂 train
│   │   |   ┣ 📜box.npy
│   │   |   ┣ 📜coord.npy
│   │   |   ┣ 📜energy.npy
│   │   |   ┣ 📜force.npy
│   │   ┣📂 validation
│   │   |   ┣ 📜box.npy
│   │   |   ┣ 📜coord.npy
│   │   |   ┣ 📜energy.npy
│   │   |   ┣ 📜force.npy
│   
└───📂 lammps_example_in
│    ┣   📜data.atoms (Example input for methyl on Ag(111))
│    ┣   📜in.atoms (LAMMPS input file)
│   
└───📂 train
│   │   Ensemble of trained models (4 models) differing only in their initial weights seeds
│   │
│   └───📂 00
│   │    ┣   📜graph.pb ( Trained DeepMD model)  
│   │    ┣   📜in.json (Input parameters for training)
│   │    ┣   📜lcurve.out (Loss curve output)
│   |   ...
│  
└───📂 vasp_example_in
│    ┣   📜INCAR_ads (VASP input for AIMD on just adsorbates)
│    ┣   📜INCAR_Ag_ads (VASP input for AIMD on adsorbates on Ag (111))

```
