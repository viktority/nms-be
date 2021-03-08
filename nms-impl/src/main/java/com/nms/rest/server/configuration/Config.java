package com.nms.rest.server.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;

@Configuration
@EnableSwagger2
public class Config {

    Contact contact = new Contact("NMS", "NMS", "");

    // List<VendorExtension> vendorExtensions = new ArrayList<>();

    ApiInfo apiInfo = new ApiInfo("Authentication Service",
            "This pages documents NMS", "1.0",
            "", contact, "Apache 2.0", "http://www.apache.org/licenses/LICENSE-2.0", new ArrayList<>());

    @Bean
    public Docket api() {
        return new Docket(DocumentationType.SWAGGER_2)
//                .globalOperationParameters(Arrays.asList(new ParameterBuilder()
//                        .name("Authorization")
//                        .description("Description of header")
//                        .modelRef(new ModelRef("string"))
//                        .parameterType("header")
//                        .required(true).build()))
                // .protocols(new HashSet<>(Arrays.asList("HTTPs", "HTTP")))
                .apiInfo(apiInfo).select().apis(RequestHandlerSelectors.any()).paths(PathSelectors.any())
               .build();
    }

    @Bean
    public WebMvcConfigurer corsConfigurer() {
        return new WebMvcConfigurer() {
            @Override
            public void addCorsMappings(CorsRegistry registry) {
                registry.addMapping("/**").allowedMethods("GET", "POST", "PUT", "DELETE").allowedOrigins("*");
            }
        };
    }
}
