# Java WAR Example Application on Clever Cloud
[![Clever Cloud - PaaS](https://img.shields.io/badge/Clever%20Cloud-PaaS-orange)](https://clever-cloud.com)

This is a simple example demonstrating how to deploy a pre-built Java WAR file to Clever Cloud using a servlet container (Apache Tomcat).

## About the Application

This example deploys a `sample.war` file to Apache Tomcat 10. The WAR file is served as-is — no build step is required.

Once deployed, the application is available at `/sample/` (the context path defaults to the WAR filename without the `.war` extension). You can customize this with the `context` field in `war.json`.

## How It Works

Clever Cloud uses a `clevercloud/war.json` configuration file to know which servlet container to use and which WAR file to deploy:

```json
{
   "deploy":{
      "container":"TOMCAT10",
      "war" : [
         {
            "file":"sample.war"
         }
      ]
   }
}
```

### Supported Containers

| Container | Available Versions |
|-----------|-------------------|
| Apache Tomcat | `TOMCAT6`, `TOMCAT8`, `TOMCAT10` |
| Jetty | `JETTY9`, `JETTY11` |
| Payara | `PAYARA5`, `PAYARA6` |
| WildFly | `WILDFLY26`, `WILDFLY27`, `WILDFLY33` |

### Configuration Options

| Field | Required | Description |
|-------|----------|-------------|
| `container` | Yes | The servlet container to use (e.g. `TOMCAT10`) |
| `file` | Yes | Path to the WAR file relative to the repository root |
| `context` | No | URL base path (defaults to WAR filename without extension) |
| `checkMe` | No | A path to GET to verify the application is running |

For the full reference, see the [Java WAR documentation](https://www.clever-cloud.com/developers/doc/applications/java/java-war).

## Deploying on Clever Cloud

You have two options to deploy: using the Web Console or using the Clever Tools CLI.

### Option 1: Deploy using the Web Console

#### 1. Create an account on Clever Cloud

If you don't already have an account, go to the [Clever Cloud console](https://console.clever-cloud.com/) and follow the registration instructions.

#### 2. Set up your application on Clever Cloud

1. Log in to the [Clever Cloud console](https://console.clever-cloud.com/)
2. Click on "Create" and select "An application"
3. Choose "Java + WAR" as the runtime environment
4. Configure your application settings (name, region, etc.)

#### 3. Deploy Your Application

Deploy your application using Git:

```bash
# Add Clever Cloud as a remote repository
git remote add clever git+ssh://git@push-par-clevercloud-customers.services.clever-cloud.com/app_<your-app-id>.git

# Push your code to deploy
git push clever master
```

### Option 2: Deploy using Clever Tools CLI

#### 1. Install Clever Tools

Install the Clever Tools CLI following the [official documentation](https://www.clever-cloud.com/doc/clever-tools/getting_started/):

```bash
# Using npm
npm install -g clever-tools

# Or using Homebrew (macOS)
brew install clever-tools
```

#### 2. Log in to your Clever Cloud account

```bash
clever login
```

#### 3. Create a new application

```bash
clever create --type war <YOUR_APP_NAME>
```

#### 4. Deploy your application

```bash
clever deploy
```

#### 5. Open your application in a browser

```bash
clever open
```

### Monitoring Your Application

Once deployed, you can monitor your application through:

- **Web Console**: The Clever Cloud console provides logs, metrics, and other tools to help you manage your application.
- **CLI**: Use `clever logs` to view application logs and `clever status` to check the status of your application.

## Additional Resources

- [Java WAR Documentation](https://www.clever-cloud.com/developers/doc/applications/java/java-war)
- [Clever Cloud Documentation](https://www.clever-cloud.com/doc/)
