<template class>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="is-size-2">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div>
        <label for="username" class="Font">Username</label>
      </div>
      <input
        type="text"
        id="username"
        class="form-control input Focus"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <div>
        <label for="password" class="Font">Password</label>
      </div>
      <input
        type="password"
        id="password"
        class="form-control input Focus"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <div>
        <input
          type="password"
          id="confirmPassword"
          class="form-control input Focus"
          placeholder="Confirm Password"
          v-model="user.confirmPassword"
          required
        />
      </div>
      <label for="firstName" class="Font">First Name</label>
      <div>
        <input
          type="firstName"
          id="firstName"
          class="form-control input Focus"
          placeholder="Deborah"
          v-model="user.account.firstName"
        />
      </div>
      <label for="lastName" class="">Last Name</label>
      <div>
        <input
          type="lastName"
          id="lastName"
          class="form-control input Focus"
          placeholder="Lorde"
          v-model="user.account.lastName"
        />
      </div>
      <label for="email" class="">Email</label>
      <div>
        <input
          type="Email"
          id="email"
          class="form-control input Focus"
          placeholder="john.doe@gmail.com"
          v-model="user.account.email"
        />
      </div>

      <label for="goals" class="Font">Goal</label>
      <div>
        <select name="goal" id="goal" Class="Focus select" v-model="user.account.goal">
          <option value="Activity">Increase Activity</option>
          <option value="gainMuscle">Gain Muscle</option>
          <option value="loseWeight">Lose Weight</option>
          <option value="Endurance">Increase Endurance</option>
          <option value="Flexibility">Increased Flexibility</option>
        </select>
      </div>
      <div>
         
      </div>
      <label for="Image">Image:  </label>
      <div class="radio_img">
        <input type="radio" class="image" v-model="user.account.mediaURL" value="bodybuilder.png"><img class="img" src="bodybuilder.png">
        <input type="radio" class="image" v-model="user.account.mediaURL" value="bicycle.png"><img class="img" src="bicycle.png">
        <input type="radio" class="image" v-model="user.account.mediaURL" value="db.png"><img class="img" src="db.png">
        <input type="radio" class="image" v-model="user.account.mediaURL" value="star.png"><img class="img" src="star.png">
        <input type="radio" class="image" v-model="user.account.mediaURL" value="yogi.png"><img class="img" src="yogi.png">
      </div>
      <br />
      <button class="btn btn-lg btn-primary btn-block button is-primary" type="submit">
        Create Account
      </button>
    </form>
  </div>
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "register",
  data() {
    return {
      option:[
        {
          title: "db",
          memberImage: "db.png"
        },
        {
          title: "bodybuilder",
          memberImage: "bodybuilder.png"
        },
        {
          title: "bicycle",
          memberImage: "bicycle.png"
        },
        {
          title: "flower",
          memberImage: "flower.png"
        },
        {
          title: "yogi",
          memberImage: "yogi.png"
        },
        {
          title: "star",
          memberImage: "star.png"
        }
      ],
      user: {
        username: "",
        password: "",
        confirmPassword: "",
        role: "user",
        account: {
          firstName: "",
          lastName: "",
          email: "",
          goal: "",
          mediaURL: "",
        },
      },
      registrationErrors: false,
      registrationErrorMsg: "There were problems registering this user.",
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = "Password & Confirm Password do not match.";
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: "/login",
                query: { registration: "success" },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = "Bad Request: Validation Errors";
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = "There were problems registering this user.";
    },
  },
};
</script>

<style>
/* 
form{
  background-color:darkgrey;
  display: flex;
  border-radius: 10px;
  align-self: center;
  justify-items: center;
  flex-direction: column;



}
input{
  display:flex;
  justify-content: center;
  align-self: center;
} */

.text-center{
  background-color: #a7bbc3;
  border: 10px solid #012f63;
  border-radius: 20px;
  max-width: 700px;
  margin: auto;

  height:fit-content;
  display: flex;
  align-items: center;
  justify-content: center;
}

.button {
  background-color: #fe6678 !important;
}

.img{
  max-width: 40px;
  max-height: 40px;
  margin-left: 10px;

}
.radio_img{
  display: flex;
  
}

.font{
  font-family: Verdana, Geneva, Tahoma, sans-serif;
  
}


</style>
