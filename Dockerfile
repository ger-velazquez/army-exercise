FROM ruby:3.0
WORKDIR /app
COPY . .
CMD ["irb", "-r", "./main.rb"]
