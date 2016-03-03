配置文件格式：

以oozie任务为单位，维护一份配置文件，命名规则为（游戏名-地区-其他）

1. 任务ID

2. Hive 数据库名称

3. Hive 数据库文本前缀名

4. 重新拉取日志日期（空格隔开）

5. [-auto] HDFS文件列表地址

Repull.sh 使用说明

1. 调用repull.sh 时，传相应的配置文件作为参数，如 ./repull.sh lqzgoversea
