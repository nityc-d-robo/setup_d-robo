# apt update -y
# apt upgrade -y
# apt install -y sudo

# dockerのテスト用


sudo  apt update -y
sudo  apt upgrade -y

locale  # check for UTF-8

sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

locale  # verify settings

export DEBIAN_FRONTEND=noninteractive
echo "Asia/Tokyo" | sudo tee /etc/timezone
sudo ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo apt update
sudo apt install -y tzdata

sudo apt install -y software-properties-common
sudo add-apt-repository -y universe

sudo apt update && sudo apt install -y curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

sudo apt update && sudo apt install -y ros-dev-tools

sudo apt update
sudo apt upgrade

sudo apt install -y ros-jazzy-desktop
sudo apt install -y ros-jazzy-ros-base

echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
echo "source /opt/ros/jazzy/setup.zsh" >> ~/.zshrc
