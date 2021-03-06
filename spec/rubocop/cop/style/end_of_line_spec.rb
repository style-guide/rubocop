# encoding: utf-8

require 'spec_helper'

module Rubocop
  module Cop
    module Style
      describe EndOfLine do
        let(:eol) { EndOfLine.new }

        it 'registers an offence for CR+LF' do
          pending 'Fails after upgdate to parser-2.0.0.pre3.'
          inspect_source(eol, ["x=0\r", ''])
          expect(eol.messages).to eq(
            ['Carriage return character detected.'])
        end

        it 'registers an offence for CR at end of file' do
          inspect_source(eol, ["x=0\r"])
          expect(eol.messages).to eq(
            ['Carriage return character detected.'])
        end
      end
    end
  end
end
