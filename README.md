
# STORM: Robust Dynamic Object Detection in Cluttered Indoor Scenes via Learned Spatiotemporal Cues


<table>
  <tr>
    <td width="50%">
      <video src="https://github.com/user-attachments/assets/cff517da-9269-4544-a9eb-38116a620270" width="100%" controls></video>
    </td>
    <td width="50%">
      <video src="https://github.com/user-attachments/assets/3e1f6aa0-812d-4eee-969d-f857824c509a" width="100%" controls></video>
    </td>
  </tr>
  <tr>
    <td width="50%">
      <video src="https://github.com/user-attachments/assets/7eb10392-3ae7-42e8-9652-c3c3344cbb7e" width="100%" controls></video>
    </td>
    <td width="50%">
      <video src="https://github.com/user-attachments/assets/422ce422-061f-4981-9612-1c0e5fc775ad" width="100%" controls></video>
    </td>
  </tr>
</table>

## Installation 

To install the software clone this repo and run the install script inside ~/code/storm as below: 

```
mkdir ~/code && cd ~/code
git clone git@github.com:jrached/storm.git
cd storm 
sudo chmod +x install.sh && ./install.sh
```

## Run an Example 

To run an example download the sample bag from: https://drive.google.com/drive/folders/1yrg4MFRY51ARdSSXhVFDCev4QN9KAnwL?usp=drive_link


And run the following command: 

```
tmuxp load ~/code/storm/tracker_ws/src/acl-mapping/scripts/run_storm.yaml
```

# Paper 
The paper can be found at: https://arxiv.org/pdf/2603.15826

```
@article{rached2026robust,
  title={Robust Dynamic Object Detection in Cluttered Indoor Scenes via Learned Spatiotemporal Cues},
  author={Rached, Juan and Jia, Yixuan and Kondo, Kota and How, Jonathan P},
  journal={arXiv preprint arXiv:2603.15826},
  year={2026}
}
```

## Video 
Watch the full video here: https://www.youtube.com/watch?v=_ZHGz-BkQzg 

## Compatibility 
Operating System: Ubuntu 22.04 

ROS Distribution: ROS2 Humble 

Architecture: x86-64

## Details 
Note: the occupancy gridmap detection pipeline expects a deskewed point cloud. 

Note: for the local ROS2 Humble middleware to effectively talk to the Foxy middleware in the Docker container, make sure your local variables match RMW_IMPLEMENTATION=rwm_cyclonedds_cpp and ROS_DOMAIN_ID=7. 

## Acknowledgements 
We use the following PointPillars implementation in our model: https://github.com/zhulf0804/PointPillars