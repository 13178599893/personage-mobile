// import { resolve } from "dns";
import axios from 'axios'

// function axiosLogin(url,data={},method='get'){
//     return new Promise((resolve,reject)=>{
//         axios({
//             url:url,
//             method:method,
//             // headers:{
//             //     'Content-Type':'application/json'
//             // }
//             data:data
//         })
//         .then(res=>{
//             resolve(res.data)
//         })
//         .catch(err=>{
//             reject(err)
//         })
//     })
// }


// export default{
//     axiosLogin:axiosLogin
// }

let baseURL;
if(process.env.NODE_ENV=='development'){
    baseURL = 'http://127.0.0.1:3000/login'
}else{
    baseURL = '/xxx'
}

const $http = axios.create({
    baseURL
})

export const get = (url,params)=>{
    params = params || {};
    return new Promise((resolve,reject)=>{
        $http.get(url,{
            params,
        }).then(res=>{
            console.log(res);
        }).catch(err=>{
            console.log(err);
        })
    })
}