function fn() {

     var env = karate.properties['env']; // get java system property

      if (!env) {
        env = 'dev'; // a custom 'intelligent' default
      }

      if (env == 'stage') {
        // over-ride only those that need to be
      } else if (env == 'dev') {
       // over-ride only those that need to be
      }

      var config = { // base config JSON
        id-sesion: '1234567',
        token: 'mitoken',
        anotherUrlBase: 'https://another-host.com/v1/',
        urlBase: "https://reqres.in",
        env: env
      };

      return config;
}