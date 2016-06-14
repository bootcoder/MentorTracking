san_francisco = Location.create(name: "San Francisco",
                time_zone: "UTC -08:00")
seattle  = Location.create(name: "Seattle",
                time_zone: "UTC -08:00")
austin = Location.create(name: "Austin",
                time_zone: "UTC -08:00")
san_deigo = Location.create(name: "San Diego",
                time_zone: "UTC -08:00")
chicago = Location.create(name: "Chicago",
                time_zone: "UTC -06:00")
washington_dc = Location.create(name: "Washington D.C.",
                time_zone: "UTC -06:00")
new_york = Location.create(name: "New York",
                time_zone: "UTC -05:00")

hunter = Admin.create(first_name: "Hunter",
             last_name: "Chapman",
             phone: "415-689-8420",
             email: "hunter@devbootcamp.com",
             img_url: "https://www.dropbox.com/s/sk1e7fg5k8ypza7/20150729_DBC_0046_hi.jpg?dl=0",
             github_handle: "bootcoder",
             location: san_francisco)

james = Mentor.create(first_name: "James",
             last_name: "Bomotti",
             phone: "415-246-1132",
             email: "zilliahix@gmail.com",
             img_url: "https://avatars.githubusercontent.com/u/10890778?v=3",
             github_handle: "jbomotti",
             location: san_francisco)

uber = Employment.new(company_name: "Uber",
                      start_date: 10.days.ago)

ph1 = Department.create(name: "Phase 1",
                        cost_center: 123456)

Department.create(name: "Phase 2",
                  cost_center: 123456)

Department.create(name: "Phase 3",
                  cost_center: 123456)

Department.create(name: "Tours",
                  cost_center: 123456)

Department.create(name: "Marketing",
                  cost_center: 123456)

Department.create(name: "Admissions",
                  cost_center: 123456)

Department.create(name: "Evenings",
                  cost_center: 123456)

Department.create(name: "Workshops",
                  cost_center: 123456)


shift = Shift.create(time_zone: "UTC -08:00",
                     accepts_mentors: 2,
                     booked: false,
                     admin: hunter,
                     location: san_francisco,
                     department: ph1,
                     start_time: 1.day.from_now,
                     end_time: 2.days.from_now)

shift_to_book = Shift.create(time_zone: "UTC -08:00",
                     accepts_mentors: 2,
                     booked: false,
                     admin: hunter,
                     location: san_francisco,
                     department: ph1,
                     start_time: 3.days.from_now,
                     end_time: 4.days.from_now)

note = hunter.notes.create(body: "James is GREAT!", mentor_id: james.id)

james.employments << uber
james.shifts << shift_to_book

james.save








