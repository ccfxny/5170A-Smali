.class Lorg/apache/xml/serializer/SecuritySupport12$2;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/SecuritySupport12;->getSystemClassLoader()Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/serializer/SecuritySupport12;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/SecuritySupport12;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lorg/apache/xml/serializer/SecuritySupport12$2;->this$0:Lorg/apache/xml/serializer/SecuritySupport12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "cl":Ljava/lang/ClassLoader;
    :try_start_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method
