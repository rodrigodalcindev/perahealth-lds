module DesignTokenHelpers
  def token_navigation
    content_tag :ul do
      data.design_tokens.collect do |token|
        content_tag :li do
          link_to token[0], "/#{token[0]}.html", class: "plm prm pts pbs"
        end
      end.join.html_safe
    end
  end

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