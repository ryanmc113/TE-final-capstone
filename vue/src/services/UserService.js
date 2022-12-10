import axios from "axios";

 export default{
    getUserAccountInfo(userId){
        axios.get(`${userId}/account`)
    },
    updateUsersInfo(user){
        axios.put(`/account`, user)
    },
    getVisitLog(userId){
        axios.get(`${userId}/visit-history`)
    },
  
}