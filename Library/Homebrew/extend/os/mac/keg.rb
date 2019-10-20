# frozen_string_literal: true

class Keg
  GENERIC_KEG_LINK_DIRECTORIES = (remove_const :KEG_LINK_DIRECTORIES).freeze
  KEG_LINK_DIRECTORIES = (GENERIC_KEG_LINK_DIRECTORIES + ["Frameworks"]).freeze
  GENERIC_MUST_EXIST_DIRECTORIES = (remove_const :MUST_EXIST_DIRECTORIES).freeze
  MUST_EXIST_DIRECTORIES = (GENERIC_MUST_EXIST_DIRECTORIES + [HOMEBREW_PREFIX/"Frameworks"]).uniq.sort.freeze
end
