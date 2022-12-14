<template>
    <div>
        <div id="basicInfo"> 
            <h1>Basic Info</h1>
            <form>
            <div>
                <label for="firstName">First Name: </label>
                <input type="text"  v-model="userInfo.firstName" >
            </div>
            <div>
                <label for="lastName">Last Name: </label>
                <input type="text"  v-model="userInfo.lastName" >
            </div>
            <div>
                <label for="Goal">Goal: </label>
        <select name="goal" id="goal" v-model="userInfo.goal">
          <option value="Activity">Increase Activity</option>
          <option value="gainMuscle">Gain Muscle</option>
          <option value="loseWeight">Lose Weight</option>
          <option value="Endurance">Increase Endurance</option>
          <option value="Flexibility">Increased Flexibility</option>
        </select>
            <div>
            <label for="Image">Image: </label>
        <select name="image" id="image" v-model="userInfo.image">
        <option value="db" src="../img_user/db.png"></option>
        <option value="bodybuilder" src="../img_user/bodybuilder"></option>
        <option value="bicycle" src="../img_user/bicycle"></option>
        <option value="flower" src="../img_user/flower.png"></option>
        <option value="yogi" src="../img_user/yogi.png"></option>
        <option value="star" src="../img_user/star.png"></option>
        </select>
      </div>
      </div>
            
            <div>
        
                <!-- insert picture -->
            </div>
            <h1>Contact Info</h1>
            
            <div>
                <label for="email">Email: </label>
                <input type="text"  v-model="userInfo.email" >
            </div>
            <button type="submit"  v-on:click="updateUsersInfo()">Update Account</button>
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
import userService from '../services/UserService';


export default {
data(){
    return{
        userInfo :{

        },
        password: {
newPassword: "",
confirmPassword: ""
        }
    }
},
created(){
this.getUsersInfo()
},
methods: {
 getUsersInfo() {
     userService.getUserAccountInfo().then(response =>{
         this.userInfo = response.data
     });
 },
 updateUsersInfo(){
     const updateUser = {
         userId: this.$store.state.user.id,
         firstName: this.userInfo.firstName,
         lastName: this.userInfo.lastName,
         goal: this.userInfo.goal,
         email: this.userInfo.email,
         mediaURL: this.userInfo.mediaURL
     }
     userService.updateUsersInfo(updateUser).then(response=>{
     if (response.status == 200){
     alert("Your Account has been updated!")
     
     }
     })
   }

}
}
</script>
