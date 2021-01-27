#not important commands to get node and npm versions to confirm it is installed
node -v
npm -v

cd {project_root_directory}

npm install -g npm@latest
npm install
#if npm error then V

#install npm within root directory of project
npm cache clean 
sudo npm install -g npm
npm install

npm i webpack webpack-cli 

#Select build mode
        #The production configuration is used from webpack.prod.js when you run
        npm run build-prod

        #OR

        #the development configuration is used from webpack.dev.js when you run 
        npm run build-dev

#OR

#the development configuration is used from webpack.config.js when you run and mode can be set by mode: 'production|development|testing|anyCustomMode' property
npm run build
#note that all mode are custom not standard

#Then
npm run start

#Instal babel tool which translates ES6 modern javascript syntax which browser doesn't understand to older version syntax
#Create a new file .babelrc in the root of the project. Fill it with this code:
#{ "presets": ["@babel/preset-env"] }
#we want it to use require() in our js , require() is used for importing anothe js file within this js file , for example : import {functionName} from './js/jsFileNameWithoutDotjs'        , thet function which imported , its signature must be preceded with 'exported' keyword , for example : exported function handleSubmit(event){.....}
npm i -D @babel/core @babel/preset-env babel-loader
#-D means it is installed for development because they don't need to be present when we are actually serving our app to users
#presets-env is what Babel needs in order to work with webpack

#install html-webpack-plugin , plugins does things which loader doesn't and is more general , 
#our plugin will add script element to our html doc bottom automatically, and add reference to dist/main.js for us by generating new html file in /dist folder
npm i -D html-webpack-plugin

#Installing webpack-dev-server which used to watch any changes applied to any file in project tree to rebuild app automatically
npm i -D webpack-dev-server

#installing cleaner plugin which deletes dist folder after rebuilding it by webpack-dev-server
npm i -D clean-webpack-plugin

#Install sass loader which is used by webpack builder to convert all sass files into one css file
npm i -D style-loader node-sass css-loader sass-loader
