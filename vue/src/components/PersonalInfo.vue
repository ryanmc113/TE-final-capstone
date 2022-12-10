<template>
    <div>
        <div id="basicInfo"> 
            <h1>Basic Info</h1>
            <form >
            <div>
                <label for="firstName">First Name: </label>
                <input type="text"  v-model="user.firstName" >
            </div>
            <div>
                <label for="lastName">Last Name: </label>
                <input type="text"  v-model="user.lastName" >
            </div>
            <div>
        
                <!-- insert picture -->
            </div>
            <h1>Contact Info</h1>
            
            <div>
                <label for="email">Email: </label>
                <input type="text"  v-model="user.email" >
            </div>
            <button type="submit">Update Account</button>
            </form>
            <h1>Privacy</h1>
            <form @submit.prevent>
            <div>
                <label for="newPassword">New Password</label>
                <input type="text"  v-model="password.newPassword" >
            </div>
            
            <div>
                <label for="confirmPassword">Confirm Password</label>
                <input type="text"  v-model="password.confirmPassword" >
            </div>
            <button type="submit">Change Password</button>
            </form>
        </div>
    </div>
</template>

<script>
import UserService from '../services/UserService.js';


export default {
data(){
    return{
        user :{
firstName: "David",
lastName: "Sikes",
email: "david.sikes@aol.com"
        },
        password: {
newPassword: "",
confirmPassword: ""
        }
    }
},
methods: {
 getUsersInfo() {
     UserService.getUserAccountInfo().then(response =>{
         this.user = response.data
     });
 },
//  updateUsersInfo(){
//      const updateUser = {

//      }
//      UserService.updateUsersInfo(user).then(response=>{
//      if (response.status == 200){
//      // say your account has been updated
     
//      })
//      }
  }


}
</script>
