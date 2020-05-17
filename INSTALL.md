# Windows

Download [**Cygwin**](http://cygwin.com/install.html): **setup-x86_64.exe** for 64-bit Windows, **setup-x86.exe** for 32-bit.

Run setup and leave the default settings. At "Select Packages", choose to install the following:

- `make`
- `git`
- `gcc-core`

Then download [**rgbds**](https://github.com/rednex/rgbds/releases/): the latest **win64.tar.gz** or **win32.tar.gz** release. Extract it and put all the `exe` and `dll` files individually in **C:\cygwin64\usr\local\bin**.

In the **Cygwin terminal**, enter these commands:

	git clone https://github.com/pret/pokered
	cd pokered

To build **pokered.gbc** and **pokeblue.gbc**:

	make
