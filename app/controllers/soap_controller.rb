class SoapController < ApplicationController
  include WashOut::SOAP
soap_service namespace: 'urn:WashOut'

class Korisnik < WashOut::Type
  map :korisnik_id => :integer, :name => :string, :last_name => :string
end

class Prijava < WashOut::Type
  map :name => :string, :datetime => :string, :description => :string
end

  soap_action "get_korisnik",
              :args   => :integer,
              :return => :string
  def get_korisnik
    render :soap =>  Korisnik.find (params [:korisnik_id].first()
              # Discussion.find(params[:value]).content
  end



end