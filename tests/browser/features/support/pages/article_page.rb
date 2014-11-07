class ArticlePage
  include PageObject
  include URL
  page_url URL.url("<%=params[:article_name]%><%=params[:hash]%>")

  span(:first_heading_span, css: "#firstHeading > span:nth-child(1)")
  li(:flyout_link_container, css: "#pt-notifications")
  a(:flyout_link, css: "#pt-notifications a")
  div(:flyout, css: ".mw-echo-overlay")

  # Overlay header
  a(:alert_tab_link, css: ".mw-echo-overlay-title ul li a", index: 1)
  button(:mark_as_read, css: ".mw-echo-notifications > button")
  a(:messages_view_link, css: ".mw-ui-active")
end
