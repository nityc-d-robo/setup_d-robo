while true; do
    sudo -v
    sleep 60  # 60秒ごとに更新
done &
source ~/setup_d-robo/ros2_jazzy.sh
source ~/setup_d-robo/safe_drive.sh
# source ~/setup_d-robo/motor_lib.sh
# 最後はよく分からんので後回し

bash
# 一応bashでお願いします