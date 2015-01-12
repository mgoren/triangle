require('rspec')
require('triangle')

describe(Triangle) do
  describe('#type') do
    it('returns not a triangle if the sides do not form a triangle') do
      non_triangle = Triangle.new(15, 5, 10)
      expect(non_triangle.type()).to(eq("not a triangle"))
    end

    it('returns equilateral when all sides are equal') do
      eqi_triangle = Triangle.new(5, 5, 5)
      expect(eqi_triangle.type()).to(eq("equilateral"))
    end

    it('returns scalene when no sides are equal') do
      sca_triangle = Triangle.new(3, 5, 4)
      expect(sca_triangle.type()).to(eq("scalene"))
    end

    it('returns isosceles when only two sides are equal') do
      iso_triangle = Triangle.new(5, 5, 4)
      expect(iso_triangle.type()).to(eq("isosceles"))
    end
  end
end
