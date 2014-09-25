# Tallergram atom-shell app

This is an atom-shell app based off these instructions:
- https://github.com/atom/atom-shell/blob/master/docs/tutorial/quick-start.md

To run you should be able to do the following:

`./run.sh`

OR manually:

Install grunt if you haven't already

```
npm install -g grunt-cli
```

Then run the following to download version 0.15.9 of atom-shell
```
cd ./build
npm install
grunt download-atom-shell
```

Then you should be able to run the app:

```
./build/atom-shell/atom ./tallergram
```

