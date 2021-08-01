# # 确保脚本抛出遇到的错误
# set -e

# # 生成静态文件
# yarn run docs:build

# # 进入生成的文件夹
# cd docs/.vitepress/dist

# # 如果是发布到自定义域名
# echo 'vite.zhizhu.video' > CNAME

# git init
# git add -A
# git commit -m 'deploy'

# # 如果你想要部署到 https://USERNAME.github.io   https://github.com/zhizhu-video/web.git
# # git push -f git@github.com:zhizhu-video/zhizhu-video.github.io.git master

# # 如果发布到 https://USERNAME.github.io/<REPO>  REPO=github上的项目
# git push -f git@github.com:zhizhu-video/web.git master:gh-pages

# # cd –

set -e
yarn run docs:build
cd docs/.vitepress/dist
echo 'vite.zhizhu.video' > CNAME
git init
git checkout --orphan gh-pages
git add .
git commit -m 'init web'
git remote add origin git@github.com:zhizhu-video/web.git
git push origin gh-pages


