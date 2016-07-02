.class public Lcom/mediatek/recovery/PackageManagerExceptionParser;
.super Lcom/mediatek/recovery/AbstractExceptionParser;
.source "PackageManagerExceptionParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/mediatek/recovery/AbstractExceptionParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "e"    # Ljava/lang/RuntimeException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/RuntimeException;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 9
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v0

    .line 10
    .local v0, "pe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .local v1, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/mediatek/recovery/PackageManagerExceptionParser;->setLastError(I)V

    .line 12
    iget-object v2, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    const-string v3, "readLPw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    const-string v3, "com.android.server.pm.Settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    const-string v2, "/data/system/packages.xml"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0, v4}, Lcom/mediatek/recovery/PackageManagerExceptionParser;->setLastError(I)V

    .line 17
    :cond_0
    return-object v1
.end method
