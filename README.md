# Production Card Converter
By [Tennis Gazelle](https://www.tennisgazelle.com)

This repository contains PDFs of images of production cards, the code that converts them into PNGs, and the resultant PNGs. Each of these PNGs is part of a slideshow series on TikTok that I, Tennis Gazelle, promote.

## Contents

> There is currently no folder structure, all files are assumed to be in the root level dir, but in the future, this is what it'd look like.

### Eventual Folder Structure
- `PDFs/` - Directory containing the original PDF files of production cards.
- `PNGs/` - Directory containing the resultant PNG files converted from the PDFs.

## Usage

To convert all PDFs in the repository to PNGs, run the following command:

```
make all
```


### Requirements

This script uses `pdftoppm` for the conversion process. Ensure `pdftoppm` is installed on your Linux system. You can install it using the following command:

```
sudo apt-get install poppler-utils
```


### Assumptions

- All files are located at the root level of the repository (organization to be improved later).
- Incoming files are in PDF format.
- The conversion output is a 3018x3018 PNG file with the same name as the input PDF.

## License

This repository is licensed under the Creative Commons Attribution 4.0 International License. See the [LICENSE](LICENSE) file for details.

---

**Tennis Gazelle**
