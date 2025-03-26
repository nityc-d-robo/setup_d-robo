sudo apt install curl gnupg2 lsb-release python3-pip git
sudo curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env

sudo apt install python3-venv
python3 -m venv d-robo
source d-robo/bin/activate

echo "source ~/d-robo/bin/activate" >> ~/.bashrc
echo "source ~/d-robo/bin/activate" >> ~/.zshrc

pip install git+https://github.com/tier4/colcon-cargo.git
pip install git+https://github.com/colcon/colcon-ros-cargo.git

git clone https://github.com/tier4/cargo-ament-build.git
cd cargo-ament-build
cargo install --path .