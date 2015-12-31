Rails.application.config.middleware.use OmniAuth::Builder do
	provider :twitter, 'fXjQLlHZ8IicpocdBrlWkVzba','liQB9xcc4OB7iJevM1auIEIK5faqM8P6PDo04M4nt1vSjjvYyH'
	provider :github, 'c29d4d50b47be3d23dce','ecade58f7841bdae0ba2a4c8f2c0c396a0cf9019'
	provider :facebook, '952643988116117' ,'b9f7de85de63b2e3510740385d360be6'
end