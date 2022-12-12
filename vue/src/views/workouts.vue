<template>
    <div>
<my-account-nav/>
<workouts />
    </div>
</template>

<script>
import Workouts from '../components/Workouts.vue'
import MyAccountNav from '../components/MyAccountNav.vue'
export default {
name: "Workouts",
   components: {
       Workouts,
       MyAccountNav
   }
}
</script>
