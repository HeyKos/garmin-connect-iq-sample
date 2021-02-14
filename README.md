# Garmin Watch Connect IQ Widget for Train Beers

A watch widget for Garmin smartwatches to allow users to manage their participation status for the current train beers event.

## Developer Setup

1. Install the [ConnectIQ SDK](https://developer.garmin.com/connect-iq/sdk/)
2. Generate a private key file for application signing.
   - Example: `ssh-keygen -t rsa`
3. Create a `properties.mk` file using [properties.mk.sample](properties.mk.sample) as a guide. Here is an explanation of each property.
   - **DEVICE** - device type you want to use for simulation (e.g. fenix3, vivoactive, epix...)
   - **SDK_HOME** - home folder of your SDK (e.g. /Users/username/Library/Application Support/Garmin/ConnectIQ/Sdks/connectiq-sdk)
   - **DEPLOY** - if you want to hot-deploy to your device, that's the mounted path for the APPS folder (e.g. /Volumes/GARMIN/GARMIN/APPS/)
   - **PRIVATE_KEY** - path to your generated RSA private key for signing apps (needed since CIQ 1.3) (e.g. /home/.ssh/key/id_rsa_garmin.der)

### Make Targets

- **build** - compiles the app
- **buildall** - compiles the app separately for every device in the SUPPORTED_DEVICES_LIST, packaging appropriate resources. Make sure to have your resource folders named correctly (e.g. /resources-fenix3_hr)
- **run** - compiles and starts the simulator
- **deploy** - if your device is connected via USB, compile and deploy the app to the device
- **package** - create an .iq file for app store submission

### Run the App in the Simulator

To execute the **run** target, run `make run` from the root of the project.

## Special Thanks

This application was built using the [Garmin Connect IQ Seed Repo
](https://github.com/danielsiwiec/garmin-connect-seed) by [Dan Siwiec](https://github.com/danielsiwiec).  
It was inspired by the [ConnectIQ IoT Widget](https://github.com/sigsegvat/connectIqIotButton) by [Matthias Kausl
](https://github.com/sigsegvat).
