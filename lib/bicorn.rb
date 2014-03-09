require "bicorn/version"

module Bicorn
  module_function

  def out(file)
    out = Object.new
    out.instance_eval{@ofile=file}
    class <<out
      def write(str)
        STDOUT.write(str)
        @ofile.write(str)
      end
    end

    out
  end

  def err(file)
    err = Object.new
    err.instance_eval{@ofile=file}
    class <<err
      def write(str)
        STDERR.write(str)
        @ofile.write(str)
      end
    end

    err
  end
end
