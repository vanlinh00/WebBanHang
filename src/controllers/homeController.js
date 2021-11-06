
let getHomePage = (req, res) => {
    return res.render('index.ejs');
}

let getAboutPage = (req, res) => {
    return res.render('test/about.ejs');
}
//
let getcheckoutPage = (req, res) => {
    return res.render('checkout.ejs');
}

let getsinglePage = (req, res) => {
    return res.render('single.ejs');
}
// object: {
//     key: '',
//     value: ''
// }
module.exports = {
    getHomePage: getHomePage,
    getAboutPage: getAboutPage,
    getcheckoutPage:getcheckoutPage,
    getsinglePage:getsinglePage
}
