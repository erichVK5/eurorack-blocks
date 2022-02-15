# Setting up the Environment

## Requirements

Make sure you have the following requirements before starting:

- A [GitHub account](https://github.com/join)
- [`git`](https://git-scm.com/download)
- [Python 3](https://www.python.org/downloads/)
- [Homebrew](https://brew.sh) on macOS X
- [Xcode](https://developer.apple.com/xcode/) on macOS X
- [Max](https://cycling74.com/products/max)
- [VCV Rack](https://vcvrack.com/Rack)

You then only need minimum knowledge on how the terminal works to get going.

Your Max installation **needs to have a valid authorization** for `gen~` code to be exported,
on which Eurorack-blocks relies.

```{note}
Windows is not supported for now.
```


## Licensing

Eurorack-blocks has a very permissive [license](https://github.com/ohmtech-rdi/eurorack-blocks/blob/poc-max-integration/LICENSE)
that allows commercial use, modifications, distribution and private use,
as long  as you follow the license requirements.

However, the use of Max-generated code follows a different license,
that you need to follow as well.
Don't worry, if you are a hobbyist and don't plan to make any commercial use,
still read the license to be aware of it in the future,
or check your understanding of commercial-use in the license context, and just go on.
However if you plan to do commercial use of your module using Max-generated code,
you need to comply to Cycling '74's license and read their license carefully.

This license is available in the `artifacts` folder that get generated the first time you use
Eurorack-blocks to build the simulator from the patcher. It will generate a `module_max.h`
file which contains the Gen Licensing agreement at the very top of the file.
The terms of this license might change depending on your Max version, so make sure
to read it again when you upgrade. For example, the license for Max 7.2.5 is not the
same as the one for 7.3.

Additionally, Cycling '74 provides a FAQ if you need more details, that you can read
[here](https://support.cycling74.com/hc/en-us/articles/360050779193-Gen-Code-Export-Licensing-FAQ).
Finally if you have still more questions, please don't hesitate to contact
[licensing@cycling74.com](mailto:licensing@cycling74.com). They won't bite you!


## Cloning

First, clone the repository. This will create a `eurorack-blocks` directory **into the current working directory**, with all dependencies.


```shell-session
~$ git clone --recurse-submodules git@github.com:ohmtech-rdi/eurorack-blocks.git
~$ cd eurorack-blocks
~/eurorack-blocks$
```


## Setting up

Install by running the script below:

```shell-session
~/eurorack-blocks$ ./build-system/install.py
```

This will add the `erbb` script to your `PATH`.

```shell-session
~/eurorack-blocks$ erbb setup
```

This will install all the needed dependencies. You would typically re-run this command when
upgrading `eurorack-blocks`.

In particular, this will install Kicad. Don't worry if you already have installed this
application! The setup script won't overwrite your installation.


## Adding the Eurorack-blocks Max package

You can add the Max package contained in Eurorack-blocks directly to Max, by making
a symbolic link to it in your Max packages directory.

```shell-session
~/eurorack-blocks$ cd max
~/eurorack-blocks/max$ ln -s "$(pwd)/Eurorack-blocks" ~/Documents/Max\ 8/Packages/Eurorack-blocks
```

Relaunch Max if it was opened already, and you can now use `eurorack-blocks`  with Max 🎉


## Testing a Sample

Let's test a sample. We'll use the Reverb sample in `eurorack-blocks/max/reverb`.
Open the `Reverb.maxpat` file. If everything is correctly installed, it should look like that:

```{image} setup-maxpat.png
:width: 100%
:align: center
```

Now save your patch: this will automatically build the Reverb,
and put the VCV Rack simulator module in the `Rack/plugins-v1` folder, ready to be used!


## Testing in VCV Rack

Now run VCV Rack, and the `Reverb` module will appear in the library when right-clicking
in the rack empty space.

```{image} setup-rack.png
:width: 100%
:align: center
```

```{important}
Before starting to play with it, make sure to setup your audio device,
and set the sample rate to 48kHz!
This requirement will be explained later in the tutorial.
```

```{image} setup-rack-audio.png
:align: center
```


## Building the Firmware

Should you want to order the real Reverb Eurorack module, but still want to change its firmware,
to add some tweaks to it,
you can simply do that by building the firmware and uploading it to your Eurorack module
the following way. Make sure to connect your Eurorack module to a USB port on your computer.

```shell-session
~/eurorack-blocks$ cd max/reverb
~/eurorack-blocks/max/reverb/$ erbb configure
~/eurorack-blocks/max/reverb/$ erbb build
...
ninja: Entering directory `/Users/raf/Desktop/dev/eurorack-blocks/max/reverb/artifacts/daisy/out/Release'
[198/198] LINK Reverb
OBJCOPY Reverb
~/eurorack-blocks/max/reverb/$ erbb install dfu
Enter the system bootloader by holding the BOOT button down,
and then pressing, and releasing the RESET button.
Press Enter to continue...
...
```

That's it! You can now enjoy this sample into a real Eurorack system with all your other modules!
