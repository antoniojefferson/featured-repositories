FactoryBot.define do
  factory :repository do
    repository_id { '538746' }
    name { 'ruby' }
    full_name { 'ruby/ruby' }
    avatar_url { 'https://avatars.githubusercontent.com/u/210414?v=4' }
    html_url { 'https://github.com/ruby/ruby' }
    description { 'The Ruby Programming Language [mirror]' }
    current_tag { 'v3_2_0_preview1' }
    languages { { 'Ruby' => 33_053_955, 'C' => 14_228_738, 'C++' => 1_557_310, 'Yacc' => 1_151_529, 'Makefile' => 977_837, 'Rust' => 515_001, 'M4' => 180_818, 'Roff' => 116_491, 'Python' => 44_062, 'GDB' => 36_134, 'Ragel' => 30_047, 'HTML' => 21_096, 'CSS' => 17_039, 'Assembly' => 16_488, 'Shell' => 15_475, 'JavaScript' => 14_769, 'Batchfile' => 12_158, 'Emacs Lisp' => 4_051, 'sed' => 1_953, 'Scheme' => 557, 'Raku' => 497, 'Perl' => 187, 'Dockerfile' => 81 } }
    created { '2010-02-27 15:55:23 UTC' }
    pushed { '2022-06-19 17:35:00 UTC' }
    homepage { 'https://www.ruby-lang.org/' }
    stargazers_count { '19241' }
    watchers_count { '19241' }
    language { 'Ruby' }
    license { 'Other' }
  end
end
