#ACTION="destroy"
ACTION="generate"
rails ${ACTION} scaffold save_table \
    sale_date:date \
    market_type:string \
    location:string \
    volume:integer \
    unit: string \
    quality:string \
    commodity:string \
    price_received:integer \
    price_receiptUnit:string --rspec --haml 
