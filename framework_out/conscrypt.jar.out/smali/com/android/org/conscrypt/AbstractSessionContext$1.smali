.class Lcom/android/org/conscrypt/AbstractSessionContext$1;
.super Ljava/util/LinkedHashMap;
.source "AbstractSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/AbstractSessionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Lcom/android/org/conscrypt/ByteArray;",
        "Ljavax/net/ssl/SSLSession;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/conscrypt/AbstractSessionContext;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/AbstractSessionContext;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Lcom/android/org/conscrypt/ByteArray;",
            "Ljavax/net/ssl/SSLSession;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/org/conscrypt/ByteArray;Ljavax/net/ssl/SSLSession;>;"
    const/4 v2, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    iget v1, v1, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->size()I

    move-result v1

    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    iget v3, v3, Lcom/android/org/conscrypt/AbstractSessionContext;->maximumSize:I

    if-le v1, v3, :cond_1

    const/4 v0, 0x1

    .line 61
    .local v0, "remove":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/AbstractSessionContext$1;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v3, p0, Lcom/android/org/conscrypt/AbstractSessionContext$1;->this$0:Lcom/android/org/conscrypt/AbstractSessionContext;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/net/ssl/SSLSession;

    invoke-virtual {v3, v1}, Lcom/android/org/conscrypt/AbstractSessionContext;->sessionRemoved(Ljavax/net/ssl/SSLSession;)V

    .line 65
    :cond_0
    return v2

    .end local v0    # "remove":Z
    :cond_1
    move v0, v2

    .line 60
    goto :goto_0
.end method
