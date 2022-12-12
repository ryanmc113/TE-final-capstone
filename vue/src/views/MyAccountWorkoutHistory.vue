<template>
    <div>
        <my-account-nav/>
        <workout-history :visitId="parseInt($route.params.id)"/>
    </div>
</template>

<script>
import WorkoutHistory from '../components/WorkoutHistory.vue';
import MyAccountNav from '../components/MyAccountNav.vue'
export default {
components:{
    WorkoutHistory,
    MyAccountNav
}
        
    
}
</script>
