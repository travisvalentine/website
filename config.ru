map "/" do
  use Rack::Static,
    :urls => ["/images", "/js", "/css"],
    :root => "/public"

  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/index.html', File::RDONLY)
    ]
  }
end

map "/deal1" do
  use Rack::Static,
    :urls => ["/deal1"],
    :root => "/public"

  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/deal1.html', File::RDONLY)
    ]
  }
end

map "/deal2" do
  use Rack::Static,
    :urls => ["/deal2"],
    :root => "/public"

  run lambda { |env|
    [
      200,
      {
        'Content-Type'  => 'text/html',
        'Cache-Control' => 'public, max-age=86400'
      },
      File.open('public/deal2.html', File::RDONLY)
    ]
  }
end