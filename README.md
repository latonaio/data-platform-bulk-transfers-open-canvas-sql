# data-platform-bulk-transfers-open-canvas-sql 

data-platform-bulk-transfers-open-canvas-sql は、データ連携基盤において、OpenCanvasの総合振込データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-bulk-transfers-open-canvas-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-bulk-transfers-open-canvas-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-bulk-transfers-open-canvas-sql-bulk-transfers-data.sql（データ連携基盤 総合振込 OpenCanvas - 総合振込データ）
* data-platform-bulk-transfers-open-canvas-sql-fixed-request-data.sql（データ連携基盤 総合振込 OpenCanvas - 確定依頼データ）
* data-platform-bulk-transfers-open-canvas-sql-transactions-data.sql（データ連携基盤 総合振込 OpenCanvas - 取引データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
