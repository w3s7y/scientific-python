# scientific-python
This is a base python 3 image with additional libraries loaded to enable a user
to do machine learning and data analytics.  The image also has some SQL
libraries loaded to enable users to talk to Postgres databases
(or green plum as it's based on postgres).

There are some samples in /samples and it is usual to start this container in
'interactive' mode.

## Python & Module Versions

| Name | Version |
|:----:|:-------:|
| Python | 3.6.0 |
| numpy | 1.12.0 |
| scipy | 0.18.1 |
| pandas| 0.19.2 |
| matplotlib | 2.0.0 |
| sklearn | 0.18.1 |
| psycopg2 | 2.6.2 |
| sqlalchemy | 1.1.5 |

## Wishlist / TODOs

* Work out how to enable display forwarding to allow matplotlib graphs to be forwarded back to the host.
* Add some sample code to the image.
* Add an additional container with a Pivotal Green Plum database

## Sample
I have included a very basic random generator and a python script which can be
used to show a very small set of functionality.

## Examples
### Interactive Session
The one I use the most / exclusively, there is a empty '/data' volume so that you can
mount your code directory into the container from your host.  E.G:

```shell
docker run -it -v /Users/ben/Programming:/data benwest/scientific-python:<release version>
```

The container is set to run bash as the default command, so that you are then
free to start python however you wish.
