using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Builder;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.OpenApi.Models;
using Swashbuckle.AspNetCore.Swagger;
using Swashbuckle.AspNetCore.SwaggerGen;
using Swashbuckle.AspNetCore.SwaggerUI;


namespace SHOPii.Helpers
{
    public static class SwaggerServiceExtensions
    {

        public class AuthOperationFilter : IOperationFilter
        {
            public void Apply(OpenApiOperation operation, OperationFilterContext context)
            {
                var isAuthorized = context.MethodInfo.DeclaringType.GetCustomAttributes(true).OfType<AuthorizeAttribute>().Any() ||
                    context.MethodInfo.GetCustomAttributes(true).OfType<AuthorizeAttribute>().Any();
                if (!isAuthorized) return;
                operation.Responses.TryAdd("401", new OpenApiResponse { Description = "Unauthorized" });
                operation.Responses.TryAdd("403", new OpenApiResponse { Description = "Forbidden" });
                var basicSecurityScheme = new OpenApiSecurityScheme()
                {
                    Reference = new OpenApiReference { Type = ReferenceType.SecurityScheme, Id = "basic" },
                };
                operation.Security.Add(new OpenApiSecurityRequirement()
                {
                    [basicSecurityScheme] = new string[] { }
                });
            }
        }

        public static IServiceCollection AddSwaggerDocumentation(this IServiceCollection services)
        {
            services.AddSwaggerGen(options =>
            {
                options.SwaggerDoc("UserApi", new OpenApiInfo { Title = "Users Api Services", Version = "v1.0" });
                options.SwaggerDoc("GlobalApi", new OpenApiInfo { Title = "Global Api", Version = "v1.0" });
                options.SwaggerDoc("MajalesApi", new OpenApiInfo { Title = "Majaless System Api", Version = "v1.0" });
                options.SwaggerDoc("SettingsApi", new OpenApiInfo { Title = "Settings System Api", Version = "v1.0" });
                options.SwaggerDoc("Dev", new OpenApiInfo { Title = "Developers Api Test", Version = "v1.0" });

                /// هذا الكلاس فائدته يعرض ال enum بالرقم و الاسم
                options.DocumentFilter<SwaggerAddEnumDescriptions>();

                // UseFullTypeNameInSchemaIds replacement for .NET Core
                // هذا الاعداد يتم اخذ اسم النوع البيانات بشكل كامل لانه اذا تشابه اسم كلاس معين مستخدم في مكان أخر بنفس الاسم فانه يظهر خطأ في السواقر
                //options.CustomSchemaIds(type => type.FullName);

                // من أجل تفعيل ظهور التوثيق الذي يتم كتابته  في الأكواد ينعكس على التوثيق في السواقر
                // Enable xml documentation generation:go to project property
                // look for “XML documentation file”, and flag it
                // configure output location as: .\bin\Debug\net5.0\ASP.NET-Core.xml
                //options.IncludeXmlComments(string.Format(@"{0}\ASP.NET-Core.xml", System.AppDomain.CurrentDomain.BaseDirectory));
                //options.IgnoreObsoleteProperties();

                //----------------------------------------------------------------------
                var securitySchema = new OpenApiSecurityScheme
                {
                    Description = "JWT Authorization header using the Bearer scheme.\n Example: \"Authorization:{token}\"",
                    Name = "Authorization",
                    In = ParameterLocation.Header,
                    Type = SecuritySchemeType.Http,
                    Scheme = "bearer",
                    Reference = new OpenApiReference
                    {
                        Type = ReferenceType.SecurityScheme,
                        Id = "Bearer"
                    }
                };
                options.AddSecurityDefinition("Bearer", securitySchema);
                var securityRequirement = new OpenApiSecurityRequirement();
                securityRequirement.Add(securitySchema, new[] { "Bearer" });
                options.AddSecurityRequirement(securityRequirement);
                // -=============================
                options.AddSecurityDefinition("BearerKey", new OpenApiSecurityScheme
                {
                    Type = SecuritySchemeType.OAuth2,
                    Flows = new OpenApiOAuthFlows()
                    {
                        Password = new OpenApiOAuthFlow()
                        {

                            TokenUrl = new Uri("/api/Auth/Login/OAuth", UriKind.Relative),
                        }
                    },
                    In = ParameterLocation.Header,
                    Name = "Authorization",
                    Scheme = "BearerKey",
                });
                options.AddSecurityRequirement(new OpenApiSecurityRequirement()
                {
                    {
                        new OpenApiSecurityScheme()
                        {
                            Reference = new OpenApiReference()
                            {
                                Type = ReferenceType.SecurityScheme,
                                Id = "BearerKey"
                            },
                            Scheme = "BearerKey",
                            Type = SecuritySchemeType.Http,
                            Name = "BearerKey",
                            In = ParameterLocation.Header
                        }, new List<string>()
                    }
                });


                //----------------------------------------------------------------------
                //var securityRequirement = new OpenApiSecurityRequirement();
                //securityRequirement.Add(securitySchema, new[] { "Bearer" });
                //options.AddSecurityRequirement(securityRequirement);

                //options.AddSecurityDefinition("oauth2", new OpenApiSecurityScheme
                //{
                //    Type = SecuritySchemeType.OAuth2,
                //    Flows = new OpenApiOAuthFlows
                //    {
                //        Password = new OpenApiOAuthFlow
                //        {
                //            TokenUrl = new Uri("/api/Auth/login2", UriKind.Relative)
                //        }
                //    }
                //});
                //-----------------------------------------------------------
                //options.AddSecurityDefinition("basic", new OpenApiSecurityScheme
                //{
                //    Name = "Authorization",
                //    Type = SecuritySchemeType.Http,
                //    Scheme = "basic",
                //    In = ParameterLocation.Header,
                //    Description = "Basic Authorization header."
                //});
                //  options.OperationFilter<AuthOperationFilter> ();
                // var xmlFile = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
                // var xmlPath = Path.Combine (AppContext.BaseDirectory, xmlFile);
                // options.IncludeXmlComments (xmlPath);

                //-----------------------------------------------------------
                // options.AddSecurityDefinition("ApiKey", new OpenApiSecurityScheme
                // {
                //     Description = "Api key needed to access the endpoints. ApiKey: Your_API_Key",
                //     Name = "ApiKey",
                //     In = "header",
                //     Type = "apiKey"
                // });
                // var securityApiKey = new Dictionary<string, IEnumerable<string>> { { "ApiKey", new string[] { } }, };
                // options.AddSecurityRequirement(securityApiKey);



                // ----------------------------------------------------
                // Swagger 2.+ support
                //var security = new Dictionary<string, IEnumerable<string>> { { "Bearer", new string[] { } }, };

                //options.AddSecurityDefinition("Bearer", new ApiKeyScheme
                //{
                //    Description = "JWT Authorization header using the Bearer scheme. Example: \"Authorization: Bearer {token}\"",
                //    Name = "Authorization",
                //    In = "header",
                //    Type = "apiKey"
                //});
                //options.AddSecurityRequirement(security);

                //options.AddSecurityDefinition("ApiKey", new ApiKeyScheme
                //{
                //    Description = "Api key needed to access the endpoints. ApiKey: <Your_API_Key>",
                //    Name = "ApiKey",
                //    In = "header",
                //    Type = "apiKey"
                //});
                //var securityApiKey = new Dictionary<string, IEnumerable<string>> { { "ApiKey", new string[] { } }, };
                //options.AddSecurityRequirement(securityApiKey);
                });

                return services;
            }

        public static IApplicationBuilder UseSwaggerDocumentation(this IApplicationBuilder app)
            {
                app.UseSwagger();
                // Enable middleware to serve swagger-ui (HTML, JS, CSS, etoptions.), 
                app.UseSwaggerUI(options =>
                {
                    options.SwaggerEndpoint("/swagger/UserApi/swagger.json", "Users Api Services");
                    options.SwaggerEndpoint("/swagger/GlobalApi/swagger.json", "Global Api");
                    options.SwaggerEndpoint("/swagger/MajalesApi/swagger.json", "Majales System Api");
                    options.SwaggerEndpoint("/swagger/SettingsApi/swagger.json", "Settings System Api");
                    options.SwaggerEndpoint("/swagger/Dev/swagger.json", "Developers Api Test");
                    options.DocumentTitle = "Majales Documentation";
                    options.DocExpansion(DocExpansion.None);
                });
                return app;
            }
        }
    }
