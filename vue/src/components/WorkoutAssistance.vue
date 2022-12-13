<template>
   <div class="tile is-parent">
      <article class="tile is-child notification is-danger">
        <p class="title">Assistance</p>
        <div class="content">
          <assistance/>
        </div>
      </article>
    </div>
</template>

// <script>

import assistance from "../components/Assistance.vue"


export default {
  components: { assistance },
  data() {}
}
</script>


<style scoped>
.title{
    display: flex;
    align-content: center;
    justify-content: center;
}
</style>