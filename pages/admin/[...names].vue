<template>
    <div>
        <h1>Admin {{ $route.params.names }}</h1>
    </div>
</template>

<script setup>

const route = useRoute()

console.log(route.params.names)

</script>