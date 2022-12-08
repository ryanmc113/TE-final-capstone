<template>
  <h1>Logout</h1>
</template>

<script>
export default {
  created() {
    this.$store.commit("LOGOUT", "LOGOUT_EMPLOYEE");
    this.$router.push("/login");
  }
};
</script>
