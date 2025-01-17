<img width="64" height="64" align="left" style="float: left; margin: 10px 10px 0 0;" alt="Icon" src="https://imgur.com/dRSYp1f.png">

# Sniper

> An easy to run simple bot that lets you snipe messages in your Discord server.

## Fork note

This is a fork of [Dank Memer's snipe bot](https://github.com/DankMemer/sniper) with 1 additional feature:

If a user sends `pls snipe` to a channel, this bot will remind them to use the `/snipe` slash command instead

## Setup

Node.js 16.6.0 or newer is required.

1. Run:

```bash
$ git clone https://github.com/gganon/dank-memer-sniper.git
$ cd ./sniper
```

2. Create config.json:

```json
{
	"token": "<Your bot's token>",
	"application_id": "<Your application's id>"
}
```

3. Run:

```bash
$ npm i
$ npm run register [guild id]
$ npm run bot
```

Note:
Without specifying [guild id], snipe command will available on all of your app's guilds. It will fan out slowly across all guilds, and will be guaranteed to be updated in an hour (due to Discord's cache).

With [guild id] it will be available only within the guild specified. It will update instantly.

## Dockerfile instructions
An example Dockerfile has been included. Modify line 12 to change the guild id. If you want to make the bot global, simply comment out line 12.

## License

[MIT](https://tldrlegal.com/license/mit-license)
