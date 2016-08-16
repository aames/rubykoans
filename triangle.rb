# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
#equilateral first
  if (a == b)
    if (b == c)
      return :equilateral
    end
    # then check isosceles for a == b
    if ((b > c) || (c > b))
      return :isosceles
    end
  end
  # then check isosceles for b == c
  if (b == c)
    if ((a > b) || (a < c))
      return :isosceles
    end
  end
  # then check isosceles for a == c
  if (a == c)
    if ((a > b) || (b > a))
      return :isosceles
    end
  end
  # finally, if not caught - it's a scalene
  return :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
