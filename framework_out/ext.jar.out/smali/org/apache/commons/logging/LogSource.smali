.class public Lorg/apache/commons/logging/LogSource;
.super Ljava/lang/Object;
.source "LogSource.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static jdk14IsAvailable:Z

.field protected static log4jIsAvailable:Z

.field protected static logImplctor:Ljava/lang/reflect/Constructor;

.field protected static logs:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    .line 69
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    .line 72
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    .line 75
    const/4 v2, 0x0

    sput-object v2, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 84
    :try_start_0
    const-string v2, "org.apache.log4j.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 85
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v1, "t":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    const-string v2, "java.util.logging.Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 97
    const/4 v2, 0x1

    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :goto_1
    const/4 v0, 0x0

    .line 108
    .end local v1    # "t":Ljava/lang/Throwable;
    .local v0, "name":Ljava/lang/String;
    :try_start_2
    const-string v2, "org.apache.commons.logging.log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    if-nez v0, :cond_0

    .line 110
    const-string v2, "org.apache.commons.logging.Log"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .line 114
    :cond_0
    :goto_2
    if-eqz v0, :cond_3

    .line 116
    :try_start_3
    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 147
    :goto_3
    return-void

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :try_start_4
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .restart local v1    # "t":Ljava/lang/Throwable;
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    goto :goto_0

    .line 99
    :cond_2
    const/4 v2, 0x0

    :try_start_5
    sput-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 101
    :catch_1
    move-exception v1

    .line 102
    sput-boolean v3, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    goto :goto_1

    .line 117
    .end local v1    # "t":Ljava/lang/Throwable;
    .restart local v0    # "name":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 119
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_6
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 121
    :catch_3
    move-exception v2

    goto :goto_3

    .line 127
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    :try_start_7
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->log4jIsAvailable:Z

    if-eqz v2, :cond_4

    .line 128
    const-string v2, "org.apache.commons.logging.impl.Log4JLogger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 137
    :catch_4
    move-exception v1

    .line 139
    .restart local v1    # "t":Ljava/lang/Throwable;
    :try_start_8
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    .line 141
    :catch_5
    move-exception v2

    goto :goto_3

    .line 130
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_4
    :try_start_9
    sget-boolean v2, Lorg/apache/commons/logging/LogSource;->jdk14IsAvailable:Z

    if-eqz v2, :cond_5

    .line 131
    const-string v2, "org.apache.commons.logging.impl.Jdk14Logger"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V

    goto :goto_3

    .line 134
    :cond_5
    const-string v2, "org.apache.commons.logging.impl.NoOpLog"

    invoke-static {v2}, Lorg/apache/commons/logging/LogSource;->setLogImplementation(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 112
    :catch_6
    move-exception v2

    goto :goto_2
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    return-void
.end method

.method public static getInstance(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 211
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogSource;->getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/logging/Log;

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/logging/Log;

    .line 201
    .local v0, "log":Lorg/apache/commons/logging/Log;
    if-nez v0, :cond_0

    .line 202
    invoke-static {p0}, Lorg/apache/commons/logging/LogSource;->makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    .line 203
    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_0
    return-object v0
.end method

.method public static getLogNames()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/logging/LogSource;->logs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static makeNewLogInstance(Ljava/lang/String;)Lorg/apache/commons/logging/Log;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    const/4 v2, 0x0

    .line 243
    .local v2, "log":Lorg/apache/commons/logging/Log;
    const/4 v4, 0x1

    :try_start_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 244
    .local v1, "args":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object p0, v1, v4

    .line 245
    sget-object v4, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/logging/Log;

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/logging/Log;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v1    # "args":[Ljava/lang/Object;
    :goto_0
    if-nez v2, :cond_0

    .line 250
    new-instance v2, Lorg/apache/commons/logging/impl/NoOpLog;

    .end local v2    # "log":Lorg/apache/commons/logging/Log;
    invoke-direct {v2, p0}, Lorg/apache/commons/logging/impl/NoOpLog;-><init>(Ljava/lang/String;)V

    .line 252
    .restart local v2    # "log":Lorg/apache/commons/logging/Log;
    :cond_0
    return-object v2

    .line 246
    :catch_0
    move-exception v3

    .line 247
    .local v3, "t":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setLogImplementation(Ljava/lang/Class;)V
    .locals 3
    .param p0, "logclass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Class;

    .line 193
    .local v0, "argtypes":[Ljava/lang/Class;
    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    .line 195
    return-void
.end method

.method public static setLogImplementation(Ljava/lang/String;)V
    .locals 5
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 174
    .local v1, "logclass":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    .line 175
    .local v0, "argtypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v0, v3

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "argtypes":[Ljava/lang/Class;
    .end local v1    # "logclass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v2

    .line 178
    .local v2, "t":Ljava/lang/Throwable;
    const/4 v3, 0x0

    sput-object v3, Lorg/apache/commons/logging/LogSource;->logImplctor:Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method
