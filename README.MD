Hello if you want tu run application you need clone project

git clone

nex step cd folder project

cd Docker-Python

and need build project with your example name

docker build -t [Name Of the Image] .

when you get message

Successfully built ********** Successfully tagged example name:latest

but you need check new image (you can see last image with you example name)

docker images

you can run project (you can change ports and name) with name you build image
docker run -d -p 88:80 --name=nginx --restart=always example name

docker ps -a

you can see docker status running container with you example name

after that you can open ip your server + port 88 and you can get web page