# Raspberry Pi で safe_drive ROS2 環境構築

## 概要
Raspberry Pi で d_motor_rosを使う場合 環境構築するのはとても面倒なので、`ros2` と `safe_drive` をインストールするスクリプトを作成しました。

## 自動化した部分
- `ros2` のインストール
- `safe_drive` のインストール

## 未対応の部分
- `motor_lib` の権限設定（後回し）

## 参考にしたサイト
- [ROS2 Installation Guide](https://docs.ros.org/en/jazzy/Installation.html)
- [safe_drive Setup Guide](https://tier4.github.io/safe_drive/setup.html)

## 注意
　**すべて貴方の責任です**

## 実行方法
```sh
sudo apt install git
cd ~/
git clone https://github.com/nityc-d-robo/setup_d-robo.git
chmod +x ./setup_d-robo/*
. ./setup_d-robo/start.sh
```

