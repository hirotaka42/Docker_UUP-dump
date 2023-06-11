
# Overview
M1チップでArm版 Windows11のISOイメージをビルドする。
UTMで起動確認済み


# Prerequisite
- M1 or M2チップのMac
- Docker
- Docker Resources Virtual disk limit:　50GB以上推奨



# How to use

今回は `22621.1702_arm64_ja-jp_professional_09e4d108_convert.zip`を使用

https://uupdump.net/?lang=ja-jp   
UUP DUMPからビルドしたいイメージをDLし、Dockerfileと同じディレクトリへ配置してください。
以下のコマンドでビルドし、ISOを取り出します。

```bash
docker build --progress=plain -t uup-dump .
docker run --rm -v $(pwd):/host uup-dump sh /host/output.sh
```