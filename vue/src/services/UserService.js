import axios from "axios";

 export default{
    getUserAccountInfo(){
        return axios.get(`/account`)
    },
    updateUsersInfo(user){
      return  axios.put("/account", user)
    },
    getVisitLog(){
      return  axios.get(`/account/visit-history`)
    },
  
}