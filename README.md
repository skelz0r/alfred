# Alfred

Personal google home app, for fun

## Install

* Install ruby 2.3.3
* Install [gactions](https://developers.google.com/actions/tools/gactions-cli)
* Install pg
* Create an app on heroku

## TODO

Make useful commands plz thx

## Deploy

It will:

1. Update actions on google
2. Update test simulator
3. Deploy on heroku

```shell
gactions update --project alfred-187112 --action_package action.json
```

## Resources

* [Actions console](https://console.actions.google.com/u/1/)
* [ActionPackage reference](https://developers.google.com/actions/reference/rest/Shared.Types/ActionPackage)
* [google\_assistant gem](https://github.com/skelz0r/google-assistant-ruby)
