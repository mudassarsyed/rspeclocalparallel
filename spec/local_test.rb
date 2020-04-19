require_relative '../scripts/browserstack.rb'

describe "BrowserStack Local Testing" do
  it "can check tunnel working" do
    puts(@caps["browserstack.localIdentifier"])
    @driver.navigate.to "http://localhost:8888/MAMP"
    @driver.title
    expect(@driver.page_source).to match(/MAMP/)
  end
end
