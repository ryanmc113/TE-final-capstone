<template>
   <div class="homemade"> 
      <article >
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
    components: {assistance},
  data() {
    return{}
  },
}
</script>


<style scoped>
.title{
    display: flex;
    align-content: center;
    justify-content: center;
}
.homemade{
  margin: 5%;
  background-color: #FE667B;
  border-radius: 5px;
}
/* class="tile is-parent" */
/* class="tile is-child notification is-danger" */

</style>