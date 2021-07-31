# vitePress
## 创建项目
```js
mkdir vitepress-starter && cd vitepress-starter
```
## 初始化项目
```js
yarn init
```##  安装 `vitePress`
```js
yarn add --dev vitepress
```
## 创建一个docs页面
```js
mkdir docs && echo '# Hello VitePress' > docs/index.md
```
## 在package.json文件添加配置
```json
{
  "scripts": {
    "docs:dev": "vitepress dev docs",
    "docs:build": "vitepress build docs",
    "docs:serve": "vitepress serve docs"
  }
}
```
## 打开服务
```js
yarn docs:dev
```
# 其实上面的操作在vitePress官方网站 --> [vitePress](https://vitepress.vuejs.org/)

## 在Docs目录下创建一个目录 `.vitepress` 
```js
.vitepress
或用命令创建
mkdir .vitepress
```
## 在`.vitepress` 目录下创建 `config.js` 文件

## 在`config.js`文件中写入以下代码 本文件参数配置见官方地址 [vitepress->config.js](https://vitepress.vuejs.org/config/basics.html) 
``` js
module.exports = {
    title: "vitePress Demo",// 网站标题
    description: 'Demo', //网站描述
    base: '/player/', //  部署时的路径 默认 /  可以使用二级地址 /base/
    lang: 'CN', //语言
    // repo: 'vuejs/vitepress',
    head: [
        // 改变title的图标
        [
            'link',
            {
                rel: 'icon',
                href: 'img/logo.png',//图片放在public文件夹下
            },
        ],
    ],
    // 主题配置
    themeConfig: {
          // 假定是 GitHub. 同时也可以是一个完整的 GitLab URL
          repo: 'https://gitee.com/jsonapi/player',
          // 自定义仓库链接文字。默认从 `themeConfig.repo` 中自动推断为
          // "GitHub"/"GitLab"/"Bitbucket" 其中之一，或是 "Source"。
          repoLabel: '查看源码',      
          // 以下为可选的编辑链接选项      
          // 假如你的文档仓库和项目本身不在一个仓库：
          docsRepo: 'https://gitee.com/jsonapi/player',
          // 假如文档不是放在仓库的根目录下：
          docsDir: 'docs',
          // 假如文档放在一个特定的分支下：
          docsBranch: 'master',          
          editLinks: true,
          editLinkText: '帮助我们改善此页面！',
       lastUpdated: '上次更新',
        logo: '/img/logo.png',
        //   头部导航
        nav: [
            { text: '首页', link: '/' },
            { text: '关于', link: '/pages/about/' },
            { text: '列表', 
            items:[
                { text: '关于1', link: '/pages/liebiao/1' },
                { text: '关于2', link: '/pages/liebiao/2' },
                { text: '外链百度', link: 'http://www.baidu.com/' }
            ]
    },
        ],
        //   侧边导航
            sidebar: {
            '/pages/': getpagesSidebar(),           
            '/': getpagesSidebar()
          }
    }
}
function getpagesSidebar() {
    return [
        {
            text:'华夏兵王',
            children:[              
             { text: '第一章', link: '/pages/one/' },
              { text: '第二章', link: '/pages/two/readme' }         
        ]
        },
        {
            text:'赘婿杨辰',
            children:[              
             { text: '简介', link: '/pages/zhuixu/' },
              { text: '第一章', link: '/pages/zhuixu/1' },
              { text: '第二章', link: '/pages/zhuixu/2' }  
        ]
        }
    ]
}
```

## vitepress 配置结束

::: tip
 最后说明一下 `yarn docs:build` 后生成的文件在 `.vitepress` 文件夹dist内
:::


# 最终配置完毕 打包
```
vitepress.zip
```
+ 直接下载源码 如下操作
```
`yarn`    -- 下载依赖

`yarn run docs:dev`   --  启动服务
```
+  <font color=Salmon>开始愉快之旅吧！</font>
