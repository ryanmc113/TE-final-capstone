<template class>
  <div id="register" class="text-center">
    <form class="form-register" @submit.prevent="register">
      <h1 class="is-size-2">Create Account</h1>
      <div class="alert alert-danger" role="alert" v-if="registrationErrors">
        {{ registrationErrorMsg }}
      </div>
      <div>
      <label for="username" class="sr-only">Username</label>
      </div>
      <input
        type="text"
        id="username"
        class="form-control"
        placeholder="Username"
        v-model="user.username"
        required
        autofocus
      />
      <div>
      <label for="password" class="sr-only">Password</label>
      </div>
      <input
        type="password"
        id="password"
        class="form-control"
        placeholder="Password"
        v-model="user.password"
        required
      />
      <div>
      <input
        type="password"
        id="confirmPassword"
        class="form-control"
        placeholder="Confirm Password"
        v-model="user.confirmPassword"
        required
      />
      </div>
      <label for="firstName" class="sr-only">First Name</label>
      <div>
        <input
        type="firstName"
        id="firstName"
        class="form-control"
        placeholder="Deborah"
        >
      </div>
      <label for="lastName" class="sr-only">Last Name</label>
      <div>
        <input
        type="lastName"
        id="lastName"
        class="form-control"
        placeholder="Lorde"
        >
      </div>


     
      <label for="goals" class="sr-only">Goal</label>
      <div>
        <select name="goal" id="goal" >
          <option value="Activity">Increase Activity</option>
          <option value="gainMuscle">Gain Muscle</option>
         <option value="loseWeight">Lose Weight</option>
          <option value="Endurance">Increase Endurance</option>
          <option value="Flexibility">Increased Flexibility</option>
        </select>
      
      </div>
    <br>
      <button class="btn btn-lg btn-primary btn-block" type="submit">
        Create Account
      </button>
    </form>
  </div>
</template>

<script>
import authService from '../services/AuthService';

export default {
  name: 'register',
  data() {
    return {
      user: {
        username: '',
        password: '',
        confirmPassword: '',
        role: 'user',
      },
      registrationErrors: false,
      registrationErrorMsg: 'There were problems registering this user.',
    };
  },
  methods: {
    register() {
      if (this.user.password != this.user.confirmPassword) {
        this.registrationErrors = true;
        this.registrationErrorMsg = 'Password & Confirm Password do not match.';
      } else {
        authService
          .register(this.user)
          .then((response) => {
            if (response.status == 201) {
              this.$router.push({
                path: '/login',
                query: { registration: 'success' },
              });
            }
          })
          .catch((error) => {
            const response = error.response;
            this.registrationErrors = true;
            if (response.status === 400) {
              this.registrationErrorMsg = 'Bad Request: Validation Errors';
            }
          });
      }
    },
    clearErrors() {
      this.registrationErrors = false;
      this.registrationErrorMsg = 'There were problems registering this user.';
    },
  },
};
</script>

<style></style>
