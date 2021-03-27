# 概要
UnityにてiPhoneのフラッシュライトを使用できるためのプラグインです。

今までではUnityからiPhoneのフラッシュライトを使用できなかったので作成しました。

# 使い方
Unityプロジェクトにて
Assets/Plugins/配下に

・Light.swift

・Sample.mm

・ViewController.swift

を置きます。

Assets/Scripts/配下に

・Sample.cs

を置きます。

そして適当にUnity上でGameObjectを作成し、Sample.csをアタッチしてButtonのOnClickに設定してください。

実機テストを実施したらiPhoneでフラッシュライトが操作できるようになっています🎉
