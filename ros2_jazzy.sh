# apt -y update 
# apt -y upgrade 
# apt -y install sudo

# dockerのテスト用


sudo apt -y update 
sudo apt -y upgrade 

locale # check for UTF-8

sudo apt -y update && sudo apt -y install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale # verify settings

export DEBIAN_FRONTEND=noninteractive
echo "Asia/Tokyo" | sudo tee /etc/timezone
sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo apt -y update
sudo apt -y install tzdata

sudo apt -y install software-properties-common
sudo add-apt -y-repository universe

sudo apt -y update && sudo apt -y install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt /sources.list.d/ros2.list > /dev/null

sudo apt -y update && sudo apt -y install ros-dev-tools

sudo apt -y update
sudo apt -y upgrade 

sudo apt -y install ros-jazzy-desktop
sudo apt -y install ros-jazzy-ros-base

echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
echo "source /opt/ros/jazzy/setup.zsh" >> ~/.zshrc
