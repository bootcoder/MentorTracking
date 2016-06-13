san_francisco = Location.create(name: "San Francisco",
                time_zone: "UTC -08:00")

hunter = Admin.create(first_name: "Hunter",
             last_name: "Chapman",
             phone: "415-689-8420",
             email: "hunter@devbootcamp.com",
             img_url: "https://www.dropbox.com/s/sk1e7fg5k8ypza7/20150729_DBC_0046_hi.jpg?dl=0",
             github_handle: "bootcoder",
             location: san_francisco)
