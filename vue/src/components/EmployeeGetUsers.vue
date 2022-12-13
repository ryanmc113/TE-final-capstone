<template>
  <div >
  <h1 class = "is-size-2">Search Users</h1>
    <table id="tblUsers">
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
          <input class="input" type="text" id="lastNameFilter" v-model="findUser.lastName" />
        </td>
        <!-- need to ad v-for to filter through list. look at userlist hw - event handling -->
        <tr v-for="user in filteredList" v-bind:key="user.userId">
          <td>{{ user.firstName }} </td>
          <td>{{ user.lastName }}</td>
          <td>
            <button class="button" v-on:click="logging(no,user.userId)">
              Checkin            </button>
            <button class button v-if="$store.state.user.role.includes('ADMIN')">Make Employee</button>
          </td>
           <td>
            <button class="button">
              <router-link v-bind:to="{ name: 'employee-view-user-history', params: {userId: user.userId }  }"> View Workouts</router-link>
            </button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>

import employeeService from "../services/EmployeeService";
export default {
  name: "employeeAccount",
  created(){
      this.getAllUsers()
    },
  data() {
    return {
      allLogs: [],
      newLog: {
        userId: null,
        timeIn: null,
        timeOut: null,
      },
      allUsers: [],
       errorMsg: "",
      findUser: {
        firstName: "",
        lastName: "",
        status: "",
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
    getAllUsers() {
      employeeService.getUsers().then(response =>
      this.allUsers = response.data);
    },
    flipStatus(id) {
      this.allLogs.forEach((log) => {
        if (log.userId == id) {
          log.userId = log.userId === null ? "Check Out" : "Check In";
        }
      });
    },
    addLog(id) {
      this.newLog.userId = id;
      this.newLog.timeIn = this.getTime();
      this.$store.commit("SET_EMPLOYEE_LOGGING", this.newLog)
      this.clearNewLog();
    },
    checkId(id) {
      return this.allLogs.userId == id;
    },
    updateLog(id) {
      this.$store.commit("UPDATE_EMPLOYEE_LOG", id, this.getTime())
    
    },
    clearNewLog() {
      this.newLog = { userId: null, timeIn: null, timeOut: null };
    },
    clearUserLog(id){
      this.$store.commit("DELETE_EMPLOYEE_LOG", id)
    
        
    },
  //change status stuff
    logging(userStatus, id) {
      
        this.addLog(id);
        this.flipStatus(id);
       if (userStatus == "Check In") {
        let userLeavingLog = this.updateLog(id);
        this.postLog(userLeavingLog);
        this.clearUserLog(id);
        this.flipStatus(id);
     
      }
    },
    postLog(userLeavingLog) {
      employeeService.createLogInDatabase(userLeavingLog)
      .then((response) =>{
          if(response.status === 201){
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
  },
};
</script>

<style scoped>

.button2 {
  background-color: white; 
  color: black; 
  border: 2px solid #008CBA;
}

.button2:hover {
  background-color: #008CBA;
  color: white;
}

</style>