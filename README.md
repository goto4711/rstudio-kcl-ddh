Slight additions to the rocker/hadleyverse Docker image. Swirl, and some other packages required to support our Digital Humanities courses have been added.

Build:

```
sudo docker build -t ddhstudio rstudio-kcl-ddh/
```

Run:

```
sudo docker run --name rs -d -p 8787:8787 ddhstudio
```

Add the users, whose usernames and passwords are given by the file "users" to the container "rs":

```
cd rstudio-kcl-ddh/
sudo ./add_users users rs

```

The "swirl_courses_dir" and "swirl_data_dir" variables are set in each users' ".Rprofile".

