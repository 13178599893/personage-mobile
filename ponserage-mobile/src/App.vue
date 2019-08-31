<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<style>
body{
  overflow: hidden;
  margin-left:0;
  margin-right:0;
  padding-top:10px;
}

#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#app input{
  font-size:14px !important;
}
#nav {
  padding: 30px;
}

#nav a {
  font-weight: bold;
  color: #2c3e50;
}

#nav a.router-link-exact-active {
  color: #42b983;
}
</style>
