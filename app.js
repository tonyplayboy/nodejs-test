
var express = require('express')
var app = express()
var bodyParser = require('body-parser')
var mysql = require('mysql');
var path = require('path');

// 配置解析表单 POST 请求体插件（注意：一定要在 app.use(router) 之前 ）
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))
// parse application/json
app.use(bodyParser.json())
//以后vue.js要放在node_modules里
app.use('/node_modules/', express.static(path.join(__dirname, './node_modules/')))

//app.engine('html', require('vue'));
app.get('/', function (req, res) {
    //默认去找views中的index.html
    res.sendFile(path.join(__dirname + '/views/index.html'));
    //res.render('index.html');
});
app.get('/qwe.html', function (req, res) {
    //默认去找views中的index.html
    res.sendFile(path.join(__dirname + '/views/qwe.html'));
    //res.render('index.html');
});

app.get('/queryCar',function(req,res) {
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    connection.query('SELECT * from car', function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }
        res.send(results);
    });
    connection.end();
});
app.post('/addCar',function(req,res) {
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var name = req.body.name;
    var ctime = new Date();
    var sql = `INSERT into car VALUES(null,'${name}','${ctime}')`;
    connection.query(sql, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }
        res.send(results);
    });
    connection.end();
});
app.get('/delCar',function(req,res) {
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var id = req.query.id;
    var sql = `delete from car where id = '${id}'`;
    connection.query(sql, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }
        res.send(results);
    });
    connection.end();
});


app.get('/getlunbo',function(req,res) {
    //if('callback' in  req.query && 0 === req.query.callback.indexOf('_jsonp')){}
        var connection = mysql.createConnection({
            host     : 'localhost',
            user     : 'root',
            password : '123',
            database : 'car'
        });
        connection.connect();
        connection.query('SELECT * from car', function (error, results, fields) {
            if (error) {
                console.log(error);
                throw error;
            }
            res.header("Access-Control-Allow-Origin","*");
            res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
            res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
            res.send(results);
        });
        connection.end();
});
app.get('/getnewslist',function(req,res) {
        var connection = mysql.createConnection({
            host     : 'localhost',
            user     : 'root',
            password : '123',
            database : 'car'
        });
        connection.connect();
        connection.query('SELECT * from news', function (error, results, fields) {
            if (error) {
                console.log(error);
                throw error;
            }
            res.header("Access-Control-Allow-Origin","*");
            res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
            res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
            res.send(results);
        });
        connection.end();
});
app.get('/getnewsinfo/:id',function(req,res) {
        var connection = mysql.createConnection({
            host     : 'localhost',
            user     : 'root',
            password : '123',
            database : 'car'
        });
        connection.connect();
        var id = req.params.id;
        connection.query(`SELECT * from news where id = '${id}'`, function (error, results, fields) {
            if (error) {
                console.log(error);
                throw error;
            }
            res.header("Access-Control-Allow-Origin","*");
            res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
            res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
            res.send(results);
        });
        connection.end();
});
app.get('/getcomments/:id/:pageIndex',function(req,res) {
    //console.log(req.params.id + req.params.pageIndex);
    //为啥这里又不需要跨域了?
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var pageSize = 2;
    var id = req.params.id;
    var pageIndex = req.params.pageIndex;
    var index = parseInt(pageSize * (pageIndex - 1));
    connection.query(`SELECT * from comments where news_id = '${id}' limit ${index},${pageSize}`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }

        res.send(results);
    });
    connection.end();
});
app.post('/addcomment',function(req,res) {
    //console.log(req.params.id + req.params.pageIndex);
    //为啥这里又不需要跨域了?
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var user_name = req.body.user_name;
    //var add_time = Date.now();
    //console.log(add_time);
    var content = req.body.content;
    var news_id = req.body.news_id;
    connection.query(`insert into comments values('${user_name}',now(),'${content}','${news_id}')`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }

        res.send(results);
    });
    connection.end();
});

app.get('/getimgcategory',function(req,res) {
    //console.log(req.params.id + req.params.pageIndex);
    //为啥这里又不需要跨域了?
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();

    connection.query(`SELECT * from imgcategory`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }

        res.send(results);
    });
    connection.end();
});
app.get('/getimages/:id',function(req,res) {
    //console.log(req.params.id + req.params.pageIndex);
    //为啥这里又不需要跨域了?
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var id = req.params.id;
    if(id == 0) {
        connection.query(`SELECT * from imglist`, function (error, results, fields) {
            if (error) {
                console.log(error);
                throw error;
            }

            res.send(results);
        });
    }else {
        connection.query(`SELECT * from imglist where category_id = '${id}'`, function (error, results, fields) {
            if (error) {
                console.log(error);
                throw error;
            }

            res.send(results);
        });
    }

    connection.end();
});
app.get('/getimageInfo/:id',function(req,res) {
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var id = req.params.id;

    connection.query(`SELECT * from imglist where id = '${id}'`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }
        res.send(results);
    });
    connection.end();
});

app.get('/getthumimages/:id',function(req,res) {
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var id = req.params.id;

    connection.query(`SELECT * from imghum where img_id = '${id}'`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }
        res.send(results);
    });
    connection.end();
});
app.get('/getgoods',function(req,res) {
    res.header("Access-Control-Allow-Origin","*");
    res.header("Access-Control-Allow-Headers", "X-Requested-With,Origin,Content-Type,Accept");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    var connection = mysql.createConnection({
        host     : 'localhost',
        user     : 'root',
        password : '123',
        database : 'car'
    });
    connection.connect();
    var pageSize = 3;
    var pageIndex = req.query.pageIndex;
    var index = parseInt(pageSize * (pageIndex - 1));
    connection.query(`SELECT * from goods limit ${index},${pageSize}`, function (error, results, fields) {
        if (error) {
            console.log(error);
            throw error;
        }

        res.send(results);
    });
    connection.end();
});

// 指定端口号并启动服务器监听
app.listen(3000,function () {
  console.log('server running at http://localhost:3000')
})