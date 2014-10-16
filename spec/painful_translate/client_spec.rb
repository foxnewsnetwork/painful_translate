require 'spec_helper'

describe PainfulTranslate::Client do
  let(:client) { PainfulTranslate::Client.instance }
  specify { should be_present }
  context 'translate' do
    let(:actual) { client.translate "dog", "cat", from: :en, to: :es }
    let(:expected) { ["perro", "gato"] }
    specify { expect(actual).to eq expected }
  end
end