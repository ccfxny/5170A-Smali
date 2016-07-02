.class public Lcom/mediatek/recovery/UserManagerRecovery;
.super Lcom/mediatek/recovery/AbstractRecoveryMethod;
.source "UserManagerRecovery.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractRecoveryMethod;-><init>()V

    .line 8
    const-string v0, "UserManagerRecoveryMethod"

    iput-object v0, p0, Lcom/mediatek/recovery/UserManagerRecovery;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doRecover(Ljava/lang/Object;)I
    .locals 4
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 12
    const-string v1, "UserManagerRecoveryMethod"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRecover called, path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/users/userlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "userlist":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 16
    const-string v1, "UserManagerRecoveryMethod"

    const-string v2, "remove userlist.xml failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const/4 v1, -0x1

    .line 20
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
