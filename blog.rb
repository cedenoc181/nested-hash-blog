
#hash
apple = {
    "Hardware Products" => {
      :computers => "Mac",
      :laptops => ["Macbook Pro", "Macbook Air"],
      :tablets => ["Ipad Air", "Ipad Pro"],
      :phones => "Iphone"
      },
      "Software Products" => {
       :entertainment => ["Apple Music", "Apple Tv", "Apple Podcast"],
       :finance => ["Apple Wallet", "Apple Card"],
       :other => ["Apple Fitness", "Apple Maps"]
      }
      }

                                #######Solution########

      finance_products = apple.each do |product_type, inventory|

        if product_type == "Software Products"
        
        inventory.each do |product, type|
        
        if product == :finance
        
        type.each do |finance|
        puts "#{finance}"
        
            end
           end
          end
         end 
        end
        
        "terminal output"
        
        => Apple Wallet
        => Apple Card

                                    ###### breakdown #######
#step 1:
#Iterate over the parent hash using each method,
#set two parameters to reference the key and value (product_type, inventory).

#finance_products = apple.each do |product_type, inventory|
#    puts "product_type: #{product_type}"
#    puts "inventory: #{inventory}"
#    end
#    
#    => product_type => "Hardware Products"
#    
#    => inventory: => {
#       computers => "Mac",
#       laptops => ["Macbook Pro", "Macbook Air"],
#       tablets => ["Ipad Air", "Ipad Pro"],
#       phones => "Iphone"
#       }
#    
#    => product_type => "Software Products"
#    
#    => inventory: => {
#     :entertainment => ["Apple Music", "Apple Tv", "Apple Podcast"],
#     :finance => ["Apple Wallet", "Apple Card"],
#     :other => ["Apple Fitness", "Apple Maps"]
#   }

#step 2:
#Using a conditional statement we access the value in "Software Products". 
#Then iterate over value(inventory) and pass 2 parameters, these will reference 
#the nested hash keys and values!

#finance_products = apple.each do |product_type, inventory|
#
#    if product_type == "Software Products"
#    
#    inventory.each do |product, type|
#    puts "product: #{product}"
#    puts "type: #{type}"
#        end
#       end
#      end
#    
#    "terminal output"
#    
#    product: entertainment
#    type: ["Apple Music", "Apple Tv", "Apple Podcast"]
#    product: finance
#    type: ["Apple Wallet", "Apple Card"]
#    product: other
#    type: ["Apple Fitness", "Apple Maps"]

#step 3:
#Using a conditional statement to retrieve the :finance key from (product), 
#we then iterate over the values(type) using each method and pass a parameter(finance)
# and print (finance) to meet the deliverable.

#finance_products = apple.each do |product_type, inventory|
#
#    if product_type == "Software Products"
#    
#    inventory.each do |product, type|
#    
#    if product == :finance
#    
#    type.each do |finance|
#    puts "#{finance}"
#    
#        end
#       end
#      end
#     end 
#    end
#    
#    "terminal output"
#    
#    Apple Wallet
#    Apple Card
