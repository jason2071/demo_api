exports.banner = function (req, res, next) {
    const path = __dirname.replace('/routes', '')
    var options = {
        root: path + '/public/assets/banner/',
        dotfiles: 'deny',
        headers: {
            'x-timestamp': Date.now(),
            'x-sent': true
        }
    }

    var fileName = req.params.name
    res.sendFile(fileName, options, function (err) {
        if (err) {
            next(err);
        } else {
            //console.log('Sent:', fileName)
        }
    })
}

exports.popular = function (req, res, next) {
    const path = __dirname.replace('/routes', '')
    var options = {
        root: path + '/public/assets/popular/',
        dotfiles: 'deny',
        headers: {
            'x-timestamp': Date.now(),
            'x-sent': true
        }
    }

    var fileName = req.params.name
    res.sendFile(fileName, options, function (err) {
        if (err) {
            next(err);
        } else {
            //console.log('Sent:', fileName)
        }
    })
}

exports.menu = function (req, res, next) {
    const path = __dirname.replace('/routes', '')
    var options = {
        root: path + '/public/assets/menu/',
        dotfiles: 'deny',
        headers: {
            'x-timestamp': Date.now(),
            'x-sent': true
        }
    }

    var fileName = req.params.name
    res.sendFile(fileName, options, function (err) {
        if (err) {
            next(err);
        } else {
            //console.log('Sent:', fileName)
        }
    })
}