# KODExplorer

KODExplorer是一款开源的基于Web的在线文件管理、代码编辑器。它提供了类windows经典用户界面，一整套在线文件管理、文件预览、编辑、上传下载、在线解压缩、音乐播放功能。让你直接在浏览器端实现web开发、源码文件预览、网站部署。同时拥有与本地操作一样方便、快捷、安全的体验。

更多详情请访问[官方网址](http://kalcaddle.com/)，商业版授权请联系：kalcaddle#qq.com

## 默认登陆密码

本容器启动后您可以用如下默认用户名密码登录：

- 用户名: **admin**
- 密码: **password**

## 如何用这个镜像管理 Volume

您可以通过启动一个 KODExplore 容器来方便的查看和管理您 Volume 上的数据。

### 从镜像的最新版本启动容器

![create container](http://blog.daocloud.io/wp-content/uploads/2015/10/kod-doc-1.png)

### 绑定需要管理的 Volume，并设置容器内路径为 /data/http/data/User/admin/home

请注意，必须把 Volume 的容器路径设置为 **/data/http/data/User/admin/home**，否则 KODExplore 不能正常管理 Volume 数据。

![bind volume](http://blog.daocloud.io/wp-content/uploads/2015/10/kod-doc-2.png)

### 容器启动成功后，访问容器 URL 并登录

默认用户名密码如下：

- 用户名: **admin**
- 密码: **password**


您也可以通过启动容器时设置环境变量 **PASSWORD** 自定义登录密码

![access kodexplore](http://blog.daocloud.io/wp-content/uploads/2015/10/kod-doc-3.png)


### 通过文件管理功能管理 Volume 数据

![manage data](http://blog.daocloud.io/wp-content/uploads/2015/10/kod-doc-4.png)


