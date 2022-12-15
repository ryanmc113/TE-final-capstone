<template class>

  <div id="login" class="text-center">
    <section><img class="image" src="people_workout.png" /></section>
    <form class="form-signin" @submit.prevent="login">
      <h1 class="h3 mb-3 font-weight-normal is-size-2">
        Welcome to the Workout Companion
      </h1>

      <div class="alert alert-danger" role="alert" v-if="invalidCredentials">
        Invalid username and password!
      </div>
      <div
        class="alert alert-success"
        role="alert"
        v-if="this.$route.query.registration"
      >
        Thank you for registering, please sign in.
      </div>
      <div class="field">
        <label for="username" class="label">Username</label>
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
      <br />

      <div class="field">
        <label for="password" class="label">Password</label>
      </div>
      <div class="field">
        <input
          type="password"
          id="password"
          class="form-control"
          placeholder="Password"
          v-model="user.password"
          required
        />
      </div>
      <div class="field">
        <button type="submit" class="button is-primary">Sign in</button>
      </div>
    </form>
  </div>
  
</template>

<script>
import authService from "../services/AuthService";

export default {
  name: "login",
  components: {},
  data() {
    return {
      user: {
        username: "",
        password: "",
      },
      invalidCredentials: false,
    };
  },
  methods: {
    login() {
      authService
        .login(this.user)
        .then((response) => {
          if (response.status == 200) {
            this.$store.commit("SET_AUTH_TOKEN", response.data.token);
            this.$store.commit("SET_USER", response.data.user);
            this.$router.push("/");
          }
        })
        .catch((error) => {
          const response = error.response;

          if (response.status === 401) {
            this.invalidCredentials = true;
          }
        });
    },
  },
};
</script>

<style>
.text-center .form-signin{
  background-color: #a7bbc3;
  border: 10px solid #012f63;
  border-radius: 20px;
  max-width: 700px;
  margin: auto;

  height: fit-content;
  display: flex;
  align-items: center;
  justify-content: center;
  
}

.button {
  background-color: #fe6678 !important;
  
}

.form-signin{

  flex-direction: column;
  display: flex;
  align-items: center;
  justify-content: center;
}
h1{
  text-align: center;
}

.image{
  display: flex;
  align-items: center;
  justify-items: center;
  border-radius:5px;
  max-height: 200px;
  max-width: 250px;
  margin-left:10px;
}
</style>
