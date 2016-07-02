.class public Lcom/mediatek/recovery/ActivityManagerExceptionParser;
.super Lcom/mediatek/recovery/AbstractExceptionParser;
.source "ActivityManagerExceptionParser.java"


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
    .locals 4
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
    const/4 v3, 0x1

    .line 9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v1

    .line 10
    .local v1, "rpe":Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .local v0, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v3}, Lcom/mediatek/recovery/ActivityManagerExceptionParser;->setLastError(I)V

    .line 12
    iget-object v2, v1, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowMethodName:Ljava/lang/String;

    const-string v3, "nativeOpen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mExceptionClassName:Ljava/lang/String;

    const-string v3, "android.database.sqlite.SQLiteCantOpenDatabaseException"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->mThrowClassName:Ljava/lang/String;

    const-string v3, "android.database.sqlite.SQLiteConnection"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string v2, "/data/data/com.android.providers.settings/databases/settings.db"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/mediatek/recovery/ActivityManagerExceptionParser;->setLastError(I)V

    .line 20
    :cond_0
    return-object v0
.end method
