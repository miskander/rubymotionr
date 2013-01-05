require 'spec_helper'

describe Rubymotionr::Repo do
  describe "point it at a rubymotion project with no dependencies and one project at the root" do
    let(:repo) {
      Rubymotionr::Repo.new(File.join(File.dirname(__FILE__), "rubymotion-example"))
    }
    it 'should parse one project' do
      repo.projects.length.should == 1
    end
    it 'should find the path to be in the spec folder' do
      repo.projects.first.path.should == File.join(File.dirname(__FILE__), "rubymotion-example/")
    end
  end

  describe "point it at a rubymotion project with no dependencies and many projects at the root" do
    let(:repo) {
      Rubymotionr::Repo.new(File.join(File.dirname(__FILE__), "multiple-rubymotion-apps/"))
    }
    it 'should parse one project' do
      repo.projects.length.should == 15
    end
    it 'should have found 15 paths all within multiple-rubymotion-apps directory' do
      Dir.glob(File.join(File.dirname(__FILE__), "multiple-rubymotion-apps/*/")).sort.should == repo.projects.collect { |proj| proj.path }.sort
    end
  end
end