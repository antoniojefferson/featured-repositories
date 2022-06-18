FactoryBot.define do
  factory :repository do
    repository_id { '1234567890' }
    name { 'react' }
    full_name { 'facebook/react' }
    avatar_url { 'https://avatars.githubusercontent.com/u/69631?v=4' }
    html_url { 'https://github.com/facebook/react' }
    description { "A declarative, efficient, and flexible JavaScript library for building user interfaces." }
    current_tag { 'v18.2.0' }
    languages {{
      "JavaScript"    => 5955822,
      "HTML"          => 119951,
      "CSS"           => 63657,
      "C++"           => 44278,
      "TypeScript"    => 20868,
      "CoffeeScript"  => 16826,
      "C"             => 5225,
      "Shell"         => 2331,
      "Python"        => 259,
      "Makefile"      => 189
    }}
    created { '2013-05-24 16:15:54 UTC' }
    pushed { '2022-06-18 19:02:11 UTC' }
    homepage { 'https://reactjs.org' }
    stargazers_count { '190003' }
    watchers_count { '190003' }
    language { 'JavaScript' }
    license { 'MIT License' }
  end
end