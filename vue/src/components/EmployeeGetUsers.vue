<template>
  <div >
    <h1 class="is-size-2">Search Users</h1>
    <table class="tile is-child notification" id="tblUsers">
      <thead>
        <tr>
          <th>First Name</th>
          <th>Last Name</th>
        </tr>
      </thead>
      <tbody>
        <td>
          <input
            type="text"
            class="input"
            id="firstNameFilter"
            v-model="findUser.firstName"
          />&nbsp;
        </td>
        <td>
          <input
            class="input"
            type="text"
            id="lastNameFilter"
            v-model="findUser.lastName"
          />
        </td>
        <!-- need to ad v-for to filter through list. look at userlist hw - event handling -->
        <tr v-for="user in filteredList" v-bind:key="user.userId">
          <td>{{ user.firstName }}</td>
          <td>{{ user.lastName }}</td>
          <td>
            <button class="button" v-on:click="logging(user.userId)">
              Checkin
            </button>
            
         
          <td>
            <button class="button">
              <router-link
                v-bind:to="{
                  name: 'employee-view-user-history',
                  params: { userId: user.userId },
                }"
              >
                View Workouts</router-link
              >
            </button>
          </td>
          <td>
            <button class="button" v-on:click="makeEmployee(user.userId)" v-if="$store.state.user.role.includes('ADMIN')">
              Make Employee
            </button>
            </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import authService from "../services/AuthService"
import employeeService from "../services/EmployeeService";
export default {
  name: "employeeAccount",
  created(){
      this.getAllUsers()
    },
  data() {
    return {
    
      newLog: {
        userId: null,
        checkIn: null,
      
      },
      allUsers: [],
       errorMsg: "",
      findUser: {
        firstName: "",
        lastName: "",
       
      },
    };
  },
  computed: {
    filteredList() {
      let filteredUsers = this.allUsers;
      if (this.findUser.firstName != "") {
        filteredUsers = filteredUsers.filter((user) =>
          user.firstName
            .toLowerCase()
            .includes(this.findUser.firstName.toLowerCase())
        );
      }
      if (this.findUser.lastName != "") {
        filteredUsers = filteredUsers.filter((user) =>
          user.lastName
            .toLowerCase()
            .includes(this.findUser.lastName.toLowerCase())
        );
      }
      return filteredUsers;
    },
  },
  
  methods: {
    // makeUser(id){
    //  const updateUser = {
    //     userId: id
    //   }
    //   authService.updateEmployeeToUser(updateUser).then(response=>{
    //    if(response.status){
    //      alert("This user has been updated")
    //    }
    //   })
    // },
    makeEmployee(userId){
const updateUser = {
  id: userId
}
      authService.updateUserToEmployee(updateUser).then(response=>{
       if(response.status){
         alert("This user has been updated")
       }
      })
    },
    getAllUsers() {
      employeeService.getUsers().then(response =>
      this.allUsers = response.data);
    },
    
    addLog(id) {
      this.newLog.userId = id;
      this.newLog.checkIn = this.getTime();
      
    },
   
    
    clearNewLog() {
      this.newLog = { userId: null, timeIn: null };
    },
  
  //change status stuff
    logging(id) {
      this.addLog(id)
      let newishLog = this.newLog
       this.postLog(newishLog);
        this.clearNewLog(id);
        
     
      },
    
    postLog(log) {
      employeeService.createLogInDatabase(log)
      .then((response) =>{
          if(response.status === 200){
              alert("Wish them a good rest of the day!")
          }
          
      })
      .catch((error)=>{
          if(error.response){
              this.errorMsg = "Error submitting workout"
          }
      });
    },
    getTime() {
      var today = new Date();
      var date =
        today.getFullYear() +
        "-" +
        (today.getMonth() + 1) +
        "-" +
        today.getDate();
      var time =
        today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
      var dateTime = date + " " + time;
      return dateTime;
    },
 
}
}
</script>

<style scoped>
.button2 {
  background-color: white;
  color: black;
  border: 2px solid #008cba;
}

.button2:hover {
  background-color: #008cba;
  color: white;
}
</style>