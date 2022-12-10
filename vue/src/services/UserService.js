import axios from "axios";

 export default{
    getUserAccountInfo(){
        axios.get(`/account`)
    },
    updateUsersInfo(user){
        axios.put(`/account`, user)
    },
    getVisitLog(){
        axios.get(`/visit-history`)
    },
    //FIX THIS
    getWorkouts(){
        axios.get(`visit-history/day`)
    },
}