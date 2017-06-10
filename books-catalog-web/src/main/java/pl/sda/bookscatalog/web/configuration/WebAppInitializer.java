package pl.sda.bookscatalog.web.configuration;

import org.springframework.security.access.SecurityConfig;
import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.ContextLoaderListener;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.filter.CharacterEncodingFilter;
import org.springframework.web.servlet.DispatcherServlet;
import pl.sda.bookscatalog.service.configuration.ApplicationConfig;

import javax.servlet.FilterRegistration;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

/**
 * Created by jacek on 09.06.17.
 */
public class WebAppInitializer implements WebApplicationInitializer {

    @Override
    public void onStartup(javax.servlet.ServletContext servletContext) throws ServletException {
        AnnotationConfigWebApplicationContext applicationContext = getApplicationContext();

        servletContext.addListener(new ContextLoaderListener(applicationContext));

        registerCustomFilters(servletContext);

        ServletRegistration.Dynamic dispatcher = servletContext.addServlet("dispatcher",
                new DispatcherServlet(getDispatcherContext()));
        configureDispatcher(dispatcher);
    }

    private void registerCustomFilters(ServletContext servletContext) {
        FilterRegistration.Dynamic encodingFilter = servletContext.addFilter("encodingFilter",
                new CharacterEncodingFilter());
        encodingFilter.setInitParameter("encoding", "UTF-8");
        encodingFilter.setInitParameter("forceEncoding", "true");
        encodingFilter.addMappingForUrlPatterns(null, true, "/*");
    }

    private void configureDispatcher(ServletRegistration.Dynamic dispatcher) {
        dispatcher.setLoadOnStartup(1);
        dispatcher.addMapping("/");
    }

    private AnnotationConfigWebApplicationContext getApplicationContext() {
        AnnotationConfigWebApplicationContext context = new AnnotationConfigWebApplicationContext();
//        context.register(SecurityConfig.class);
        context.register(ApplicationConfig.class);

        return context;
    }

    private AnnotationConfigWebApplicationContext getDispatcherContext() {
        AnnotationConfigWebApplicationContext dispatcherContext = new AnnotationConfigWebApplicationContext();
        dispatcherContext.register(WebConfig.class);

        return dispatcherContext;
    }
}
