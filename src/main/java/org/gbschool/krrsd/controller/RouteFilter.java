/*
 * package org.gbschool.krrsd.controller;
 * 
 * import java.io.IOException; import jakarta.servlet.Filter; import
 * jakarta.servlet.FilterChain; import jakarta.servlet.FilterConfig; import
 * jakarta.servlet.ServletException; import jakarta.servlet.ServletRequest;
 * import jakarta.servlet.ServletResponse; import
 * jakarta.servlet.annotation.WebFilter; import
 * jakarta.servlet.http.HttpServletRequest; import
 * jakarta.servlet.http.HttpServletResponse;
 * 
 * @WebFilter("/*") public class RouteFilter implements Filter {
 * 
 * @Override public void init(FilterConfig filterConfig) throws ServletException
 * { // Initialization logic if needed }
 * 
 * @Override public void doFilter(ServletRequest request, ServletResponse
 * response, FilterChain chain) throws IOException, ServletException {
 * HttpServletRequest httpRequest = (HttpServletRequest) request;
 * HttpServletResponse httpResponse = (HttpServletResponse) response;
 * 
 * // Extract the request URI path String path =
 * httpRequest.getRequestURI().substring(httpRequest.getContextPath().length());
 * 
 * // Check for valid routes if (path.equals("/") || path.equals("/home") ||
 * path.equals("/aboutus") || path.equals("/gallery") ||
 * path.equals("/contactus")) { // Allow valid routes chain.doFilter(request,
 * response); } else { // Redirect invalid routes to /home
 * httpResponse.sendRedirect(httpRequest.getContextPath() + "/home"); } }
 * 
 * @Override public void destroy() { // Cleanup logic if needed } }
 */