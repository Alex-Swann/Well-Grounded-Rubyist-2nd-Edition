
require 'json'

 str = ' "specialties":["Corporate Housing","Temporary Housing","Furnished Apartment","Short Term Rentals"],

"website":"http://www.demo.com",

"universalName":"some-corporate-housing",

"size":"51-200 employees",

"description":"demo description",

"industry":"Hospitality",

"companyType":"Privately Held",

"companyName":"some Corporate Housing",

"includeSecondAd":true,

"yearFounded":1995,

"headquarters":

  {"city":"Austin",
   "zip":"78759",
   "state":"Texas",
   "street1":"9606 N. Mopac Expressway",
   "country":"United States",
   "street2":"Suite 500"
  },

"homeUrl":"https://www.some.com/company/cws-corporate-housing" '

json_str= "{#{str}}"
p hash = JSON.parse(json_str) 

#=> {"specialties"=>["Corporate Housing", "Temporary Housing", "Furnished Apartment", "Short Term Rentals"], "website"=>"http://www.demo.com", "universalName"=>"some-corporate-housing", "size"=>"51-200 employees", "description"=>"demo description", "industry"=>"Hospitality", "companyType"=>"Privately Held", "companyName"=>"some Corporate Housing", "includeSecondAd"=>true, "yearFounded"=>1995, "headquarters"=>{"city"=>"Austin", "zip"=>"78759", "state"=>"Texas", "street1"=>"9606 N. Mopac Expressway", "country"=>"United States", "street2"=>"Suite 500"}, "homeUrl"=>"https://www.some.com/company/cws-corporate-housing"}



