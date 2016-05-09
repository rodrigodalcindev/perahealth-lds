module DesignTokenHelpers
  def design_token(token, category: false)
    tokens = []

    data.design_tokens[token].props.each_with_index do |prop, index|
      if category
        next unless prop[1].category == category
      end
      tokens.push(prop[1])
    end

    return tokens
  end
end