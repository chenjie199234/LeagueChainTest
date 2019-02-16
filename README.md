# LeagueChainTest
BlockChain for League.This is a public test version for everyone to use and test.<br/>
## Web:
* ## This is the website for the league.It should be maintained by league.
* + This web site is used to work like a 'CA' center.Sign and verify members in this league.<br/>
* + This web site is used to work like a maintainer of this chain.Start Stop transaction,call 'clear' function in script cycled.etc.<br/>
* ## Use:
* + This Web program is based on mariadb/mysql,you should install it first.
* + Download this repo and cd into Web directory in linux system.
* + `chmod` `chown` `chgrp` to set the access and the excutable flag for Web(the 'Web' in the Web directory).
* + run `./Web -h` to see the hlep
* + run `./Web -f new` to generate a pub-pri key for self,this is the key which is used to sign other members' key.
* + run `./Web -f start` to start the Web.
* + The web server is default listening on 0.0.0.0:8080
* ## Tools:
* + run `./tool -h` to see help.
* + run `./tool -f start` to set all peers ready.
* + run `./tool -f install` to install script.
## Server:
* ## This is the peer server to excute transactions.
* ## Use:
* + Download this repo and cd into Server directory in linux system.
* + `chmod` `chown` `chgrp` to set the access and the excutable flag for Server(The 'Server' in the Server directory)
* + Run `./Server -h` to see the help.
* + Set main.conf,the meaning of the config field you will get it blew.
* + Run `./Server -f new` to register as a new user after all these things are done.The Web server will recv your register require and sign for your pubkey,and now you are a new member in this league.
* + If you want to run the Server,you must get the permission from the league.So maybe you need to post some document to the league in real life.But now,this is a test,you can just change it in database.open mariadb/mysql use web database,set the permission field in users table with 2;
* + After the league access you to run the Server,your permission in this league become higher.
* + Run `./Server -f start` to run a Peer server.
* ## Config:in json format
* + `Pullspeed`:This is used to pull old block data from other peers when you are join an exist system.This is depend on your computer and network.unit num/sec
* + `Loglevel`:"Info"/"Warning"/"Error" this is used to tell the log module which log should be writed.
* + `Logpath`:"path/to/logfile".
* + `Logfilesize`:Biggest size for the log file.When over this,a new log file will be created.unit M
* + `Dbpath`:"path/to/database".
* + `CaAddr`:Web server's address.
* + `SelfAddr`:Peer server listening on self address.
* + `PubAddr`:Some server stay behind a hardware firewall,it use a net port map to communicate with outside,the `PubAddr` is the address on the wide net.If your server is not running behind a hardware,this field should be same as the `SelfAddr`.
## CLI:
* ## This is the client to send transactions in cli.
* + Use:
* + Download this repo and cd into Client/CLI directory in linux system.
* + Run `./CLI -h` to see the help.
* + Run `./CLI -f new` to register as a new user.
* + Run `./CLI -f start` to run the client,follow the message to operate.
