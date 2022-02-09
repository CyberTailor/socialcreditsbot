# socialcreditsbot

## Installation

```sh
$ make
$ sudo make install
$ sudo -u postgres make database
```

## Usage

1. Obtain a bot token from [@BotFather](https://t.me/BotFather)

2. Disable group privacy with `/setprivacy` command

3. Set up bot commands with `/setcommand`:

   `credits - Display leaderboard`

4. Set up environment and run the bot:

   ```sh
   $ sudo -u postgres env \
   	BOT_TOKEN="bot1234567890:ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHI" \
   	DATABASE_URL="postgresql://postgres@localhost/socialcreditsbot" \
   	socialcreditsbot
   ```

5. Reply to someone's message with a [PoohSocialCredit][pack] sticker

[pack]: https://t.me/addstickers/PoohSocialCredit

## License

MIT
