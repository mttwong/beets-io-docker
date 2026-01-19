# beets-io-docker

A minimal Docker image for [beets](https://beets.io/), the music library manager and MusicBrainz tagger.

## Features

- Based on Python 3.12 Alpine for a small image size
- Includes [chromaprint](https://acoustid.org/chromaprint) and [ffmpeg](https://ffmpeg.org/) for audio fingerprinting
- Pre-installed [pyacoustid](https://github.com/beetbox/pyacoustid) plugin for AcoustID lookups

## Usage

### Pull the image

```bash
docker pull ghcr.io/mttwong/beets-io-docker:latest
```

### Basic usage

```bash
docker run --rm -v /path/to/music:/music -v /path/to/config:/config \
  ghcr.io/mttwong/beets-io-docker:latest -c /config/config.yaml <command>
```

### Example: Import music

```bash
docker run --rm -it -v /path/to/music:/music -v /path/to/config:/config \
  ghcr.io/mttwong/beets-io-docker:latest -c /config/config.yaml import /music
```

### Example: List library

```bash
docker run --rm -v /path/to/music:/music -v /path/to/config:/config \
  ghcr.io/mttwong/beets-io-docker:latest -c /config/config.yaml list
```

## Configuration

Create a beets config file (e.g., `config.yaml`) and mount it into the container. See the [beets documentation](https://beets.readthedocs.io/en/stable/reference/config.html) for configuration options.

Example minimal config:

```yaml
directory: /music
library: /config/library.db
```

## Building locally

```bash
docker build -t beets .
```

## License

MIT License - see [LICENSE](LICENSE) for details.
