.class Lorg/apache/xml/serializer/SecuritySupport12$8;
.super Ljava/lang/Object;
.source "SecuritySupport12.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/xml/serializer/SecuritySupport12;->getLastModified(Ljava/io/File;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/xml/serializer/SecuritySupport12;

.field final synthetic val$f:Ljava/io/File;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/SecuritySupport12;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/apache/xml/serializer/SecuritySupport12$8;->this$0:Lorg/apache/xml/serializer/SecuritySupport12;

    iput-object p2, p0, Lorg/apache/xml/serializer/SecuritySupport12$8;->val$f:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 138
    new-instance v0, Ljava/lang/Long;

    iget-object v1, p0, Lorg/apache/xml/serializer/SecuritySupport12$8;->val$f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v0
.end method