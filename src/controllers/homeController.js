//return res.render('test/about.ejs');

let gettrangchu= async (req, res) => {
   let data={
        singup:"",
        singin:"",
    }
    return res.render('main',{data,data});
}
module.exports = {
    gettrangchu: gettrangchu,
}