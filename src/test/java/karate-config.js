function fn() {

     var urlBase = "https://reqres.in";

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
        appId: '1234567',
        appSecret: 'my.secret',
        anotherUrlBase: 'https://another-host.com/v1/',
        urlBase: urlBase,
        env:env
      };

      return config;
}