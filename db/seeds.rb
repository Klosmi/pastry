Tool.destroy_all if Rails.env.development?
## Code Linda ##
user= User.new(email:"lindak6@yahoo.fr", password:"password")
user.save
## Code Equipe ##
#user.save

Tool.create!(
        name: "Molds for cupcake",
        details: "2 Muffins Tray 6 Stick resistant coating for quick release. Easy to clean Food grade Xynflon coating. Made with carbon steelDimensions W x D x H : 26.5x18.5x2.5cm",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615227032/5d4785af5dfd6_zamxr9.jpg",
        category: "mold",
        user_id: user.id
        )

Tool.create!(
        name: "Christophe Felder’s Book :’patisserie’",
        details: "3,500 step-by-step photographs, all the classics of French patisserie are made accessible for the home cook .For every serious home baker, French pastry represents the ultimate achievement. But to master the techniques, a written recipe can take you only so far—what is equally important is to see a professional in action, to learn the nuances of rolling out dough for croissaints or caramelizing apples for a tarte tatin",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615226434/1000w_gswmqo.jpg",
        category: "books",
        user_id: user.id
        )


Tool.create!(
        name: "Pierre Hermé’ s book: ‘Macarons’",
        details: "Macarons are the aristocrats of pastry; these brightly coloured, mini meringues, daintily sandwiched together with gooey fillings, have become a holy grail for cookery fanatics and there are even food blogs dedicated to them. Like Pierre Hermé's famous macarons, it would be difficult for any macaron book to surpass this one and indeed the hardback edition has been a universal bestseller. There are 208 pages of recipes and beautiful food photography, and because making macarons is mostly about technique, rather than just a standard recipe, readers will appreciate the 32-step-by-step photo-illustrated",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615228470/411c-yg-41L_lukckm.jpg",
        category: "books",
        user_id: user.id
        )

Tool.create!(
        name: "Dorie Greenspan’s book: ‘Baking From My Home to Yours’",
        details: "Dorie Greenspan has written recipes for the most eminent chefs in the world: Pierre Hermé, Daniel Boulud, and arguably the greatest of them all, Julia Child, who once told Dorie, “You write recipes just the way I do.” Her recipe writing has won widespread praise for its literate curiosity and “patient but exuberant style.” (One hard-boiled critic called it “a joy forever.”) In Baking: From My Home to Yours, her masterwork, Dorie applies the lessons from three decades of experience to her first and real love: home baking. The 300 recipes will seduce a new generation of bakers, whether their favorite kitchen tools are a bowl and a whisk or a stand mixer and a baker’s torch.",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615228520/7BC0E0D8D0-A765-4F80-BF74-1D8A08A657C1_7DImg100_xapasp.jpg",
        category: "books",
        user_id: user.id
        )

Tool.create!(
        name: "Piping bag and 8 tips",
        details: "This comprehensive set of seamless stainless steel piping nozzles will allow you to ice a massive range of patterns on so many of your distinct cake decorating projects. With a reusable Piping Bag",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615226742/Que-faire-avec-une-poche-a-douille_wpjr4j.jpg",
        category: "accessory",
        user_id: user.id
        )

Tool.create!(
        name: "Flexible spatula Maryse",
        details:"Very supple and flexible rubber spatula ideal for cold working (maximum operating temperature: +100°C). Practical, it enables you to transfer and use all of a preparation thus minimising losses. Spoon shape Maryse: Ideal for spreading and picking up. Designed for heavy use, unbreakable.",
        price_by_day: 1,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615220240/e2af485c6971cd0395dfa4006ef38af6_nocq6c.jpg",
        category: "accessory",
        user_id: user.id
        )

Tool.create!(
        name:"Digital LCD Scale 5kg/1g",
        details: "This kitchen scale is ideal for your cooking and baking. Delicate appereance will no doubt make you love cooking. This munltifuncaional scale features tare and auto-zero functions, and also support unit conversion betwwen lb and g, easy and convenient for use.",
        price_by_day: 1,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615226595/arthur-martin-pese-aliment_rpyu9t.jpg",
        category: "accessory",
        user_id: user.id
        )

Tool.create!(
        name:"Robot: Kitchenaid Artisan 5KSM",
        details: "The pastry robot is the essential equipment for making any pastry. Practical and functional, this equipment proves to be a great ally not only in pastry, but also in viennoiserie and bakery. Today, it is no longer intended for professionals, but for all lovers of good desserts. Kitchenaid Artisan 5KSM: an efficient and robust pastry robot",
        price_by_day: 20,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615231227/kitchenaid-artisan-725x425_smlr1i.jpg",
        category: "robot",
        user_id: user.id
        )


Tool.create!(
        name:"Set of Moulds for fondant",
        details: "The Simpress range of moulds has been designed specifically so that you can add them to a crumb coated cake, eliminating the need to cover it in sugarpaste first. They also ensure that you get exactly the right amount of sugarpaste covering the outside of your crumb coated cake, helping you get a great looking cake, as well as a delicious one!",
        price_by_day: 5,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615226965/5c297bbd6756d_wielyg.jpg",
        category: "accessory",
        user_id: user.id
        )


Tool.create!(
        name:"Silicone Baking Mat ",
        details: "Durable Quality: Used the highest quality food-grade silicone material, BPA free and stick-resistant, easy to clean and fade resistant. Resists temperatures is from -40℉ to 470℉. This means you can take it straight out of the freezer and into the oven and vice versa without damage.",
        price_by_day: 3,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615226880/61a5ingveDL._AC_SL1001__env4ac.jpg",
        category: "accessory",
        user_id: user.id
        )


Tool.create!(
        name: "Wind rose cake mold",
        details: "cast aluminium. product diameter: ø24 cm. it offers perfect baking performance thanks to its thick base that retains heat for a long time.",
        price_by_day: 3,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615233883/image_asujc7.png",
        category: "accessory",
        user_id: user.id
        )


Tool.create!(
        name: "hand blender-bamix",
        details: "Powerful and precise.BAMIX worked with professional chefs to design the ultimate Immersion Hand Blender for professional kitchens that would deliver unsurpassed power, performance and versatility. The BAMIX Professional blenders boast impressive motors with maximum torque, making every blending task faster and more efficient than ever. With 2 speeds and 4 stainless steel blades that are easy to change, this hand blender is versatile enough to do countless kitchen tasks.",
        price_by_day: 15,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615234518/Cookbook-Bamix_74423b76-dbe4-43f7-bedb-d8e1ab541f10_700x700_pinhrn.jpg",
        category: "robot",
        user_id: user.id
        )


Tool.create!(
        name: "Digital Thermometer",
        details: "Super-fast: Instant reading thermometer  with high precision sensor. Accurate readout: Cooking thermometer with temp range of -58 ~ 572 degree Fahrenheit (-50 ~ 300 degree Celsius); Easy to use.",
        price_by_day: 3,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615235001/Alpha-Grillers-Instant-Read-Meat-Thermometer-2-6dd0799147b4491c9a1d396f421f1d35_ogf5kf.jpg",
        category: "accessory",
        user_id: user.id
        )


Tool.create!(
        name: "Round cake man-7 inch",
        details: "Aluminium Round Cake Mould Cake Pan Cake Tin 7 Inches for Baking 750 Grams of Cake for Oven",
        price_by_day: 2,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615235745/5de933050ba91.image_uyrep7.jpg",
        category: "accessory",
        user_id: user.id
        )

Tool.create!(
        name: "Airbrush gun & compressor",
        details: "Excellent for any cake decorator who fancies trying air brushing but doesn't want to invest in a Dinkydoodle airbrush kit or Spectrum Flow airbrush kit. An ideal first airbrush kit.",
        price_by_day: 8,
        picture: "https://res.cloudinary.com/dkqxfdutt/image/upload/v1615236294/Lakeland_Airbrush_Cake_Hero_ccdte4.jpg",
        category: "accessory",
        user_id: user.id
        )
