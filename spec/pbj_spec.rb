require "spec_helper"
require_relative "../pbj"

describe PBJ do
  it "should be okay" do
    pbj = PBJ.new("data/report_big.json")
    report_array = pbj.parse.json.dig("report", "report-datasets")
    expect(report_array.length).to eq(408000)
  end
end
