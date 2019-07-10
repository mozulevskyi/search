require 'json'

file = File.read('data.json')
DATA_HASH = JSON.parse(file)