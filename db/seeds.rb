# frozen_string_literal: true

50.times { |i| Post.create(title: "Post #{i}", body: BetterLorem.p(5, false, false)) }
