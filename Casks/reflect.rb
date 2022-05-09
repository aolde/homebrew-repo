cask 'reflect' do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version '1.2.6'

  if Hardware::CPU.intel?
    sha256 "97088a52010ad2fa9f23f24d5a191d1d3a423f95f0d0fdf008f7c7f5a020126d"
  else
    sha256 '9e3673ce57f9ebae453cbfe14cbbf1e46e70c276619fc0774a8f791dd01cef9e'
  end

  url "https://github.com/team-reflect/reflect-electron-updates/releases/download/v#{version}/Reflect-darwin-#{arch}-#{version}.zip",
    verified: "github.com/team-reflect"
  appcast 'https://github.com/team-reflect/reflect-electron-updates/releases.atom'
  name 'Reflect'
  desc 'Edit notes, books, and meetings'
  homepage 'https://reflect.app/'

  app 'Reflect.app'
end
