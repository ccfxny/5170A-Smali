.class public Lcom/android/okhttp/Failure$Builder;
.super Ljava/lang/Object;
.source "Failure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/okhttp/Failure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private request:Lcom/android/okhttp/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/okhttp/Failure$Builder;)Lcom/android/okhttp/Request;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Failure$Builder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/Failure$Builder;->request:Lcom/android/okhttp/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/okhttp/Failure$Builder;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "x0"    # Lcom/android/okhttp/Failure$Builder;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/okhttp/Failure$Builder;->exception:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/okhttp/Failure;
    .locals 2

    .prologue
    .line 53
    new-instance v0, Lcom/android/okhttp/Failure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/okhttp/Failure;-><init>(Lcom/android/okhttp/Failure$Builder;Lcom/android/okhttp/Failure$1;)V

    return-object v0
.end method

.method public exception(Ljava/lang/Throwable;)Lcom/android/okhttp/Failure$Builder;
    .locals 0
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/okhttp/Failure$Builder;->exception:Ljava/lang/Throwable;

    .line 49
    return-object p0
.end method

.method public request(Lcom/android/okhttp/Request;)Lcom/android/okhttp/Failure$Builder;
    .locals 0
    .param p1, "request"    # Lcom/android/okhttp/Request;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/okhttp/Failure$Builder;->request:Lcom/android/okhttp/Request;

    .line 44
    return-object p0
.end method
