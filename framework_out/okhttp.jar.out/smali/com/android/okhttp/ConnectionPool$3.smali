.class Lcom/android/okhttp/ConnectionPool$3;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/okhttp/ConnectionPool;->waitForCleanupCallableToRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/okhttp/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/android/okhttp/ConnectionPool;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/okhttp/ConnectionPool$3;->this$0:Lcom/android/okhttp/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method
