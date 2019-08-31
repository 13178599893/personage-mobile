// import { resolve } from "dns";
import axios from 'axios'

function axiosLogin(url,data={},method='get'){
    return new Promise((resolve,reject)=>{
        axios({
            url:url,
            method:method,
            // headers:{
            //     'Content-Type':'application/json'
            // }
            data:data
        })
        .then(res=>{
            resolve(res.data)
        })
        .catch(res=>{
            reject(res)
        })
    })
}


export default{
    axiosLogin:axiosLogin
}