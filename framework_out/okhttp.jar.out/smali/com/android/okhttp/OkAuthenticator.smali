.class public interface abstract Lcom/android/okhttp/OkAuthenticator;
.super Ljava/lang/Object;
.source "OkAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/OkAuthenticator$Credential;,
        Lcom/android/okhttp/OkAuthenticator$Challenge;
    }
.end annotation


# virtual methods
.method public abstract authenticate(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/android/okhttp/OkAuthenticator$Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/android/okhttp/OkAuthenticator$Credential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract authenticateProxy(Ljava/net/Proxy;Ljava/net/URL;Ljava/util/List;)Lcom/android/okhttp/OkAuthenticator$Credential;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/Proxy;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lcom/android/okhttp/OkAuthenticator$Challenge;",
            ">;)",
            "Lcom/android/okhttp/OkAuthenticator$Credential;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
