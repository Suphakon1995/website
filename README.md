

The [] website, built using [] and hosted on


Visit  to launch a  IDE that will allow you to build, preview and make changes to this repo.


To build and serve the site, youthe latest [] of 
Like Netlify, we use  the Node Version Manager, to install and
manage Node versions:

```console
$ nvm install --lts
```

### Setup

 1. Clone this repo.
 2. From a terminal window, change to the cloned repo directory.
 3. Get NPM packages and git submodules, including the the [Docsy][] theme:
    ```console
    $ npm install
    ```

### Build or serve the site

To locally serve the site at [], run the following command:

```console
$ npm run serve
```

 If you want to  locally, you (temporarily) might have
> some extra setup to do. For details, see issue
> [#459

To build and check links, run these commands:

```console
$ npm run build
$ npm run check-links
```



We welcome issues and PRs! For details, see []

If you submit a PR, Netlify will automatically create a [] so
that you can view your changes. Once merged, Netlify automatically deploys to
the production site [].


: this section is out-of-date, see issue [].

Follow these steps to add documentation for a newly released version of etcd, vX.Y:

* Recursively copy  into
  `content/docs/vX.Y`, where `vX.Y` is the newly released version of etcd. For example:

    ```bash
    ```

* In the `_index.md` file at the root of the new directory, update the frontmatter
  to reflect the new version:
  ```
  ---
  title: etcd version X.Y
  weight: 1000
  cascade:
    version: vX.Y
  ---
  ```
* Add the version to the `params.versions.all` array in the
   configuration file.
* If the version is meant to be the latest version of etcd, change the
  `params.latest_stable_version` parameter to the desired new version.
* Submit a pull request with the changes.

[]
[]
[]
[]
[]
