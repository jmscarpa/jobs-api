user = User.create_with(password: "123456").find_or_create_by(name: "João Scarpa", email: "joao.scarpa@designa.com.br")

RoleType.find_or_create_by(title: "Full-Time (40h)")
RoleType.find_or_create_by(title: "Part-Time (20h)")

jobs = [{
  title: "UI/UX Designer Jr",
  company_name: "Designa",
  company_country: "Brazil",
  role_type_id: 1,
  description: "We're looking for a full-time UI/UX designer Jr that loves spend hours in Figma",
  remote: true,
  salary: 2500
}]


user.jobs.create(jobs)