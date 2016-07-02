.class Lcom/android/org/conscrypt/AbstractSessionContext$2;
.super Ljava/lang/Object;
.source "AbstractSessionContext.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;->getIds()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<[B>;"
    }
.end annotation


# instance fields
.field private next:Ljavax/net/ssl/SSLSession;

.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;Ljava/util/Iterator;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    iput-object p2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 97
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    if-eqz v2, :cond_0

    .line 108
    :goto_0
    return v1

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->val$i:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    .line 102
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    iput-object v0, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    goto :goto_0

    .line 107
    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->nextElement()[B

    move-result-object v0

    return-object v0
.end method

.method public nextElement()[B
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$2;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 115
    .local v0, "id":[B
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$2;->next:Ljavax/net/ssl/SSLSession;

    .line 116
    return-object v0

    .line 118
    .end local v0    # "id":[B
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
