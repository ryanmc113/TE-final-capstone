<template>
  <div>
    <div id="basicInfo" class="is-two-thirds">
      <h1>Basic Info</h1>
      <div class="field"></div>
      <form class="field is-two-thirds">
        <div>
          <label for="firstName">First Name: </label>
          <input type="text" class="first input int2 Focus" v-model="userInfo.firstName" />
        </div>
        <div>
          <label for="lastName">Last Name: </label>
          <input type="text" class="last input int2 Focus" v-model="userInfo.lastName" />
        </div>
        <div>
          <label for="Goal" >Goal: </label>
          <div class="select">
          <select name="goal" id="goal" class="int2 goal select Focus" v-model="userInfo.goal">
            <option value="Activity">Increase Activity</option>
            <option value="gainMuscle">Gain Muscle</option>
            <option value="loseWeight">Lose Weight</option>
            <option value="Endurance">Increase Endurance</option>
            <option value="Flexibility">Increased Flexibility</option>
          </select>
          </div>
        </div>

        <div>
          <!-- insert picture -->
        </div>
        <h1>Contact Info</h1>

        <div>
          <label for="email">Email: </label>
          <input type="text" class="input int2 Focus" v-model="userInfo.email" />
        </div>
        <button class="button is-primary" type="submit" v-on:click="updateUsersInfo()">
          Update Account
        </button>
      </form>
      <h1>Privacy</h1>
      <form @submit.prevent>
        <div>
          <label for="newPassword">New Password</label>
          <input type="text" v-model="password.newPassword" />
        </div>

        <div>
          <label for="confirmPassword">Confirm Password</label>
          <input type="text" v-model="password.confirmPassword" />
        </div>
        <button class="button" type="submit">Change Password</button>
      </form>
    </div>
  </div>
</template>

<script>
import userService from "../services/UserService";

export default {
  data() {
    return {
      userInfo: {},
      password: {
        newPassword: "",
        confirmPassword: "",
      },
    };
  },
  created() {
    this.getUsersInfo();
  },
  methods: {
    getUsersInfo() {
      userService.getUserAccountInfo().then((response) => {
        this.userInfo = response.data;
      });
    },
    updateUsersInfo() {
      const updateUser = {
        userId: this.$store.state.user.id,
        firstName: this.userInfo.firstName,
        lastName: this.userInfo.lastName,
        goal: this.userInfo.goal,
        email: this.userInfo.email,
        mediaURL: this.userInfo.mediaURL,
      };
      userService.updateUsersInfo(updateUser).then((response) => {
        if (response.status == 200) {
          alert("Your Account has been updated!");
        }
      });
    },
  },
};
</script>

<style scoped>
label{
    margin: 10px;
    padding: 10px 0px 10px 0px;
}
div{
    font-family: Verdana, Geneva, Tahoma, sans-serif;
    margin:10px;
}

h1{
    font-weight: 600;;
}
</style>
