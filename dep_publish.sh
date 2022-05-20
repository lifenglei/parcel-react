###
 # @Description: 
 # @Autor: lifenglei
 # @Date: 2022-05-20 07:34:56
### 
#!/bin/sh
echo "\033[34m -- 选择需要执行的操作 -- \n\033[0m";
echo "主要用来测试打包和上传\n";
echo "1）需要重新编译 xxx 及子项目依赖。";
echo "2）xxx 的子项目已完成编译，将依赖文件放到待上线目录。";
echo "3）打包xxx";
echo "\n";

read -p "请输入序号回车：" Num
case $Num in
1)
  echo "\033[32m \n请清理要编译子项目的dist目录。\n \033[0m";
  exit;
;;
2)
  # 返回 kook-pack 项目目录
  echo "将 ./dist/* 复制到 ./fed/web-cdn/ 。";
  cp -r ./dist/* ./fed/web-cdn/;
  echo "\033[32m -- 处理 xxx 依赖 Done -- \n\033[0m";
;;
esac

echo "\033[33m -- 选择需要编辑的项目 -- \033[0m";
echo "1）parcel-react --- 测试Demo";
echo "\n";

read -p "请输入序号回车：" Num
case $Num in
1)
  # 执行公众号编译
  npm run build;
  echo "将 ./dist/* 复制到 ./fed/web-cdn/ 。";
  cp -r ./dist/* ./fed/web-cdn/;
  echo "\033[32m -- 打包完成 -- \n\033[0m";
  npm run release;
;;


esac

echo "\033[33m -- 编译页面代码到发布目录 Done -- \033[0m";
echo '可以上传 ./fed/web-cdn（如果需要的话）到服务器对应目录，执行上线操作了。'
