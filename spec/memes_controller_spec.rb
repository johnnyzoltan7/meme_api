require 'rails_helper'

RSpec.describe MemesController, type: :controller do
  describe '.generate' do
    it 'returns a random meme' do
      get :generate
      Meme.last.reload
      expect(Meme.last.text).to be_truthy
      expect(Meme.last.image_url).to be_truthy
    end
  end

  describe '.save_meme' do
    it 'saves the last generated meme' do
      get :generate
      Meme.last.reload
      @text = Meme.last.text
      @url = Meme.last.image_url
      get :save_meme
      Meme.last.reload
      expect(Meme.offset(1).last.text).to eq(@text)
      expect(Meme.offset(1).last.image_url).to eq(@url)
      expect(Meme.last.text).to eq(@text)
      expect(Meme.last.image_url).to eq(@url)
    end

    it 'returns nil when saving empty meme' do
      get :save_meme
      expect(Meme.last).to be_nil
      expect(response.body).to eq("{\"message\":\"Y U NO make meme first??\"}")
    end

    it 'returns error when saving duplicate meme' do
      get :generate
      get :save_meme
      get :save_meme
      expect(response.body).to eq("{\"message\":\"Y U NO make new meme first??\"}")
    end
  end

  # describe '.return_all' do
    # it 'returns all generated memes' do
      # proceed with testing here
  # end
end
