.class public final Lcom/android/okhttp/Failure;
.super Ljava/lang/Object;
.source "Failure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/okhttp/Failure$1;,
        Lcom/android/okhttp/Failure$Builder;
    }
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final request:Lcom/android/okhttp/Request;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/Failure$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/okhttp/Failure$Builder;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    # getter for: Lcom/android/okhttp/Failure$Builder;->request:Lcom/android/okhttp/Request;
    invoke-static {p1}, Lcom/android/okhttp/Failure$Builder;->access$000(Lcom/android/okhttp/Failure$Builder;)Lcom/android/okhttp/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Failure;->request:Lcom/android/okhttp/Request;

    .line 27
    # getter for: Lcom/android/okhttp/Failure$Builder;->exception:Ljava/lang/Throwable;
    invoke-static {p1}, Lcom/android/okhttp/Failure$Builder;->access$100(Lcom/android/okhttp/Failure$Builder;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/okhttp/Failure;->exception:Ljava/lang/Throwable;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/okhttp/Failure$Builder;Lcom/android/okhttp/Failure$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/okhttp/Failure$Builder;
    .param p2, "x1"    # Lcom/android/okhttp/Failure$1;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/okhttp/Failure;-><init>(Lcom/android/okhttp/Failure$Builder;)V

    return-void
.end method


# virtual methods
.method public exception()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/okhttp/Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public request()Lcom/android/okhttp/Request;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/okhttp/Failure;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method
