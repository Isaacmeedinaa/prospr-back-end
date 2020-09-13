# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Browser.destroy_all
# Pro.destroy_all
# Prosp.destroy_all
# Recommendation.destroy_all
# ProspImage.destroy_all
# RecommendationImage.destroy_all
# ProspComment.destroy_all
# RecommendationComment.destroy_all
# PaymentMethod.destroy_all

# Browsers
alex = Browser.create(first_name: 'Alex', last_name: 'Medina', email: 'alexmedina04@gmail.com', phone_number: '17735559090', date_of_birth: '04/04/1997', city: 'Chicago', state: 'IL', zipcode: '60623', country: 'USA', profile_img_url: 'https://i.kym-cdn.com/entries/icons/mobile/000/031/003/cover3.jpg', password: 'Abc123!')
mico = Browser.create(first_name: 'Misael', last_name: 'Medina', email: 'micomedina07@gmail.com', phone_number: '13125551212', date_of_birth: '04/04/1997', city: 'Cicero', state: 'IL', zipcode: '60623', country: 'USA', profile_img_url: 'https://pics.me.me/thumb_blurry-mike-wazowski-memes-crazy-memes-51885339.png', password: 'Abc123!')

# Pro:
isaac = Pro.create(first_name: 'Isaac', last_name: 'Medina', email: 'isaacmedina@zenyx.io', phone_number: '17732348889', date_of_birth: '01/18/2002', business_name: 'Zenyx LLC', business_mission: 'Zenyx LLC is set out to create greatness by inventing innovative software that will change people’s lifestyles.', business_year_founded: '2020', business_website: 'https://www.zenyx.io', business_industry: 'Software Development', address_line_one: '3410 W 26st St', address_line_two: '', city: 'Chicago', state: 'IL', zipcode: '60623', country: 'USA', profile_img_url: 'https://i.imgur.com/1MicSFe.jpg', password: 'Abc123!')
josue = Pro.create(first_name: 'Josue', last_name: 'Aceves', email: 'josueaceves@illinoisproadjusters.com', phone_number: '16308000610', date_of_birth: '05/10/1985', business_name: 'Illinois Pro Adjusters, Inc.', business_mission: 'If your roof is damaged and has missing shingles due to a wind or a hail storm, please call ILLINOIS PRO ADJUSTERS, we are a Public Adjuster Firm dedicated to protect the rights of the homeowner. When a homeowner files a claim, most likely the insurance adjuster will turn it down; they are trained and paid to protect the interest of the insurance company, But if the claim is handled by a certified public adjuster, it can be approved and the homeowner will get a free new roof.', business_year_founded: '2017', business_website: 'http://www.illinoisproadjusters.com/', business_industry: 'Pro Adjusters', address_line_one: '4154 W 31st St', address_line_two: '', city: 'Chicago', state: 'IL', zipcode: '60623', country: 'USA', profile_img_url: 'https://i.imgur.com/1MicSFe.jpg', password: 'Abc123!')

# Prosps
prosp_one = Prosp.create(title: 'We Develop Amazing Websites!', content: 'The websites we develop for your business include free hosting, a domain, $100 maintenance fee, beautiful design, responsive design, and marketing!', pro: isaac)
prosp_two = Prosp.create(title: 'We Develop Amazing Mobile Apps!', content: 'The mobile apps we develop for your business include free hosting, a domain, $200 maintenance fee, beautiful design, responsive design, and marketing!', pro: isaac)
prosp_three = Prosp.create(title: 'We Help You Do a Beneficial Insurance Claim!', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', pro: josue)
prosp_four = Prosp.create(title: 'Free Consultation!', content: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry!', pro: josue)

# Recommendations
recommendation_one = Recommendation.create(title: 'Website developer needed', content: 'I own a small business in Chicago. I need a website done. Please get in touch with me ASAP!', browser: alex)
recommendation_two = Recommendation.create(title: 'I need new bsiness cards!', content: 'Im redesigning my brand so I will need new business cards. Who ever offers this service, please hit me up.', browser: alex)
recommendation_three = Recommendation.create(title: 'Anyone selling video games?', content: 'I dont like GameStop anymore, can anyone send me the games their selling?', browser: mico)
recommendation_four = Recommendation.create(title: 'I recommend this business!', content: 'Zenyx LLC helped my business grow by building an amazing website!.', browser: mico)

# Prosp Images
prosp_image_one = ProspImage.create(img_url: 'https://www.zenyx.io/images/photos/features/1.png', img_type: 'image', prosp: prosp_one)
prosp_image_two = ProspImage.create(img_url: 'https://www.zenyx.io/images/photos/header.jpg', img_type: 'image', prosp: prosp_two)
prosp_image_three = ProspImage.create(img_url: 'https://specials-images.forbesimg.com/imageserve/1026205392/960x0.jpg', img_type: 'image', prosp: prosp_three)
prosp_image_four = ProspImage.create(img_url: 'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/suburban-house-royalty-free-image-1584972559.jpg', img_type: 'image', prosp: prosp_four)

# Recommendation Images
recommendation_image_one = RecommendationImage.create(img_url: 'https://www.elegantthemes.com/blog/wp-content/uploads/2018/12/top11.png', img_type: 'image', recommendation: recommendation_one)
recommendation_image_two = RecommendationImage.create(img_url: 'https://staticecp.uprinting.com/96/450x450/Standard_Business_Cards_Marketing_Material_A.jpg', img_type: 'image', recommendation: recommendation_two)
recommendation_image_three = RecommendationImage.create(img_url: 'https://s17189.pcdn.co/blog/wp-content/uploads/2018/04/jeshoots-com-250229-unsplash-1060x540.jpg', img_type: 'image', recommendation: recommendation_three)
recommendation_image_four = RecommendationImage.create(img_url: 'https://www.zenyx.io/images/photos/header.jpg', img_type: 'image', recommendation: recommendation_four)

# Prosp Comments
10.times do
    ProspComment.create(content: Faker::Quote.famous_last_words, browser: Browser.all.sample, prosp: Prosp.all.sample)
end

# Recommendation Comments
10.times do
    RecommendationComment.create(content: Faker::Quote.famous_last_words, browser: Browser.all.sample, recommendation: Recommendation.all.sample)
end

# Likes

# Payment Methods
payment_method_one = PaymentMethod.create(card_number: '4589379248043944', month: '02', year: '2024', cvv: '056', card_type: 'VISA', first_name: 'Isaac', last_name: 'Medina', address_line_one: '4151 W 31st St', address_line_two: '', city: 'Chicago', state: 'IL', zipcode: '60623', country: 'USA', pro: isaac)
payment_method_two = PaymentMethod.create(card_number: '5375787744197839', month: '08', year: '2022', cvv: '145', card_type: 'MASTERCARD', first_name: 'Josue', last_name: 'Aceves', address_line_one: '4154 W 31st St', address_line_two: '', city: 'Chicago', state: 'IL', zipcode: '60623', country: 'USA', pro: josue)