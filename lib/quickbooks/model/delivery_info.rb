module Quickbooks
  module Model
    class DeliveryInfo < BaseModel
      xml_accessor :delivery_type, :from => 'DeliveryType'
      xml_accessor :delivery_time, :from => 'DeliveryTime', :as => DateTime, :to_xml => Proc.new { |val| val&.to_s(:db) }
    end
  end
end
