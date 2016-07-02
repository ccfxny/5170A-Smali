.class public Lcom/android/org/conscrypt/PinFailureLogger;
.super Ljava/lang/Object;
.source "PinFailureLogger.java"


# static fields
.field private static final LOG_INTERVAL_NANOS:J = 0x30b8a000L

.field private static lastLoggedNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized log(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 4
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "chainContainsUserCert"    # Z
    .param p2, "pinIsEnforcing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-class v1, Lcom/android/org/conscrypt/PinFailureLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/org/conscrypt/PinFailureLogger;->timeToLog()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 42
    :goto_0
    monitor-exit v1

    return-void

    .line 39
    :cond_0
    :try_start_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/conscrypt/PinFailureLogger;->writeToLog(Ljava/lang/String;ZZLjava/util/List;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sput-wide v2, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static timeToLog()Z
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 67
    .local v0, "currentTimeNanos":J
    sget-wide v2, Lcom/android/org/conscrypt/PinFailureLogger;->lastLoggedNanos:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x30b8a000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static declared-synchronized writeToLog(Ljava/lang/String;ZZLjava/util/List;)V
    .locals 7
    .param p0, "cn"    # Ljava/lang/String;
    .param p1, "chainContainsUserCert"    # Z
    .param p2, "pinIsEnforcing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const-class v5, Lcom/android/org/conscrypt/PinFailureLogger;

    monitor-enter v5

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    :goto_1
    :try_start_2
    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 57
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    :try_start_3
    const-string v4, "Error: could not encode certificate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    const-string v4, "exp_det_cert_pin_failure"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Llibcore/io/DropBox;->addText(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    monitor-exit v5

    return-void
.end method
