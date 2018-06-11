spring boot + mybatis + Sharding-JDBC demo

代码自动生成

1、jar 依赖

        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis</artifactId>
            <version>3.3.0</version>
        </dependency>
        <dependency>
            <groupId>org.mybatis.generator</groupId>
            <artifactId>mybatis-generator-core</artifactId>
            <version>1.3.2</version>
        </dependency>
        <dependency>
            <groupId>tk.mybatis</groupId>
            <artifactId>mapper</artifactId>
            <version>3.3.4</version>
        </dependency>

2、pom  插件

    <plugin>
                <groupId>org.mybatis.generator</groupId>
                <artifactId>mybatis-generator-maven-plugin</artifactId>
                <version>1.3.2</version>
                <configuration>
                    <configurationFile>src/main/resources/generatorConfig.xml</configurationFile>
                    <verbose>true</verbose>
                    <overwrite>true</overwrite>
                </configuration>
                <executions>
                    <execution>
                        <id>Generate MyBatis Artifacts</id>
                        <goals>
                            <goal>generate</goal>
                        </goals>
                    </execution>
                </executions>
                <dependencies>
                    <dependency>
                        <groupId>mysql</groupId>
                        <artifactId>mysql-connector-java</artifactId>
                        <version>5.1.28</version>
                        <scope>runtime</scope>
                    </dependency>
                    <dependency>
                        <groupId>org.mybatis.generator</groupId>
                        <artifactId>mybatis-generator-core</artifactId>
                        <version>1.3.2</version>
                    </dependency>
                    <dependency>
                        <groupId>tk.mybatis</groupId>
                        <artifactId>mapper</artifactId>
                        <version>3.3.4</version>
                    </dependency>
                </dependencies>
            </plugin>
3、generatorConfig.xml 编写

4、mvn mybatis-generator:generate  执行命令，生成对应的entity mapper

5、集成 mybatis ,pom 依赖
         

        <dependency>
            <groupId>org.mybatis</groupId>
            <artifactId>mybatis</artifactId>
            <version>3.4.1</version>
        </dependency>       
        <dependency>
            <groupId>tk.mybatis</groupId>
            <artifactId>mapper-spring-boot-starter</artifactId>
            <version>2.0.0</version>
        </dependency>
        
6、 mybatis 配置集成到spring boot
  
      mybatis:
        typeAliasesPackage: com.share.jdbc.entity
        mapperLocations: classpath*:mapper/*.xml
      mapper:
        mappers: com.share.jdbc.core.CommonMapper
        not-empty: false
        identity: mysql      

7、集成io.shardingjdbc ,pom 依赖
   <!-- 分库分表 相关 -->
        <!-- for spring boot -->
        <dependency>
            <groupId>io.shardingjdbc</groupId>
            <artifactId>sharding-jdbc-core-spring-boot-starter</artifactId>
            <version>2.0.3</version>
        </dependency>

        <!-- for spring namespace -->
        <dependency>
            <groupId>io.shardingjdbc</groupId>
            <artifactId>sharding-jdbc-core-spring-namespace</artifactId>
            <version>2.0.3</version>
        </dependency>
        
8、yml相关配置   

    spring:
      datasource:
        name: drds_0,drds_1  # 数据源名字
    #    url: jdbc:mysql://localhost:3306/drds_0
    #    driver-class-name: com.mysql.jdbc.Driver
    #    username: root
    #    password: root
    # sharding 配置
    sharding:    
      jdbc:
        datasource:
          names: drds_0,drds_1  #配置数据源名字
          drds_0:   #  配置数据库源 dataSource
            driver-class-name: com.mysql.jdbc.Driver
            url: jdbc:mysql://localhost:3306/drds_0
            username: root
            password: root
            type: com.alibaba.druid.pool.DruidDataSource  # 数据库连接池
          drds_1:
            driver-class-name: com.mysql.jdbc.Driver
            url: jdbc:mysql://localhost:3306/drds_1
            username: root
            password: root
            type: com.alibaba.druid.pool.DruidDataSource
        config:
          sharding:
            default-data-source-name: drds_0   # 默认使用的数据源
            tables:  # 定义表的分表分库规则，没有定义，默认不分库分表
              course:
                DatabaseStrategy:      # 分库策略
                  inline:
                    sharding-column: teacher   # 分库分表键,分库分表表达式使用groovy语言
                    algorithm-expression:  drds_${(teacher.toString().hashCode()/4).longValue()%2}   # 分库表达式 第一个数字 4 ，代表第一个数据库有4个表，第二个 2代表有两个数据库
                table-strategy:        # 分表策略
                    inline:
                      sharding-column: teacher
                      algorithm-expression: course0${teacher.toString().hashCode()%8}  # 分表表达式 8 代表总共有多少个表
9、数据库插入、更新、查询、删除 都需要带有分库分表键

10、不支持查询所有                     