describe "Quickbooks::Model::SalesItemLineDetail" do

  it "rate percent should be a decimal/float if set" do
    detail = Quickbooks::Model::SalesItemLineDetail.new
    detail.rate_percent = 10
    detail.to_xml.at_css('RatePercent').content.should == '10.0'
  end

  it "rate percent should not be included if not set" do
    detail = Quickbooks::Model::SalesItemLineDetail.new
    detail.to_xml.should_not =~ /RatePercent/
  end

  it "service date should be formatted by database date format" do
    detail = Quickbooks::Model::SalesItemLineDetail.new
    detail.service_date = Date.new(2019, 9, 20)
    detail.to_xml.at_css('ServiceDate').content.should == '2019-09-20'
  end
end
