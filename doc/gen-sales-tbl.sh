#ACTION="destroy"
ACTION="generate"
rails ${ACTION} scaffold sale \
    farmer_name:string \
    sale_date:date \
    market_type:string \
    location:string \
    volume:integer \
    unit: string \
    quality:string \
    commodity:string \
    price_received:integer \
    price_receiptUnit:string --rspec --haml 
