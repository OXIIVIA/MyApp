## MyApp
海外の音楽情報を記事にしてユーザーに発信するサービスです。

![screencapture-localhost-3000-articles-2019-10-03-17_36_21.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/3fc82fe8-aa32-6138-cfd7-9569f547bb01.png)
![screencapture-localhost-3000-videos-21-2019-10-03-17_38_50.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/9b9eab6e-58e6-63ed-caff-165d3357f8a3.png)
<img width="1440" alt="3ed83b4d60b516d316c1208b1d3f53c7.jpg" src="https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/43c61171-8d6e-026e-baee-c39caf181a0e.jpeg">


## 制作した理由
大きく分けて下記の２点です。

#### 1. 自分が有益だと思う情報を他者に発信するサービスを作りたかった

自分が興味を持っている分野について情報発信を行い、同じ嗜好を持ったユーザーにとって有益となるようなサービスを作ってみたいという思いがありました。

#### ２. 既存のサービスのコンテンツを利用することができる

YouTubeやApple Music、SoundCloudなど、既に成熟した音楽サービスが多数存在することから、これらのサービスのコンテンツをうまく利用することで、短期間の開発でも自身のサービスのクオリティーを上げることができると考えました。

## 機能

#### ユーザー新規登録・ログイン・情報編集機能
deviseを使い、ユーザーの新規登録・ログイン機能を実装しました。また、登録した情報も編集ページから変更することが可能です。

#### 管理者による記事、ミュージックビデオの投稿機能
RailsAdmin、cancancanを使い、一部ユーザーに管理者権限を付与しています。本サービスでは、管理者権限を付与されたユーザーのみが管理者ページから記事、ミュージックビデオの投稿、アーティストページの編集が可能となっています。
![screencapture-localhost-3000-admin-2019-10-03-18_08_38.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/55a1f4d8-09dc-ef00-eb74-2c328abf4c1d.png)

#### 記事、ミュージックビデオのお気に入り機能
ログインユーザーは、記事やミュージックビデオのページにあるFAVORITEボタンを押すことで、該当のページをお気に入りとして追加することができます。また、お気に入り追加後に同じボタンを再び押すことで、お気に入りから除外することができます。
![d25afde66b595f4f03683ae0e9f5dcfc.gif](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/426556f0-1ef3-43e5-63a4-43e1f064a532.gif)

#### アーティストのフォロー機能
ログインユーザーは、アーティストページにあるFOLLOWボタンを押すことで、該当のアーティストをフォローできます。また、フォロー後に同じボタンを再び押すことで、フォローを外すことができます。

#### マイページでフォロー、お気に入りの管理
ログインユーザーは、マイページからフォローしたアーティストやお気に入りに追加したアーティストの管理ができます。
![screencapture-localhost-3000-users-1-2019-10-04-07_53_56.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/369813/ca5a322c-0e91-0241-6a2f-f62b424c9ab5.png)
  