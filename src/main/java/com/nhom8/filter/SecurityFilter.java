/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhom8.filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/** 
 *
 * @author nguye
 */
public class SecurityFilter implements Filter {

  @Override
  public void init(FilterConfig filterConfig) throws ServletException {
    // Do any initialization here
  }

  @Override
  public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
    // Cast the response to HttpServletResponse
    HttpServletResponse httpResponse = (HttpServletResponse) response;
    // Add the headers to the response
    httpResponse.addHeader("Content-Security-Policy", "frame-ancestors 'none'");
    httpResponse.addHeader("X-Frame-Options", "DENY");
    // Pass the request and response to the next filter or servlet
    chain.doFilter(request, response);
  }

  @Override
  public void destroy() {
    // Do any cleanup here
  }
}

