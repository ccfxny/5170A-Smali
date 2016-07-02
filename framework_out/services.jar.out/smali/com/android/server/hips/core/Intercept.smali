.class public abstract Lcom/android/server/hips/core/Intercept;
.super Ljava/lang/Object;
.source "Intercept.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/core/Intercept$PIINode;,
        Lcom/android/server/hips/core/Intercept$PIBNode;,
        Lcom/android/server/hips/core/Intercept$PILNode;
    }
.end annotation


# static fields
.field private static volatile mbIntercept:Z

.field private static volatile mbSearchPkg:Z


# instance fields
.field protected mPIBList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PIBNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mPIIList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PIINode;",
            ">;"
        }
    .end annotation
.end field

.field protected mPILList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/hips/core/Intercept$PILNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/hips/core/Intercept;->mbSearchPkg:Z

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/hips/core/Intercept;->mbIntercept:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    .line 84
    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPILList:Ljava/util/List;

    .line 85
    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPILList:Ljava/util/List;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    .line 91
    return-void
.end method

.method public static getInterceptSwitchStatus()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/server/hips/core/Intercept;->mbIntercept:Z

    return v0
.end method

.method public static getSearchPkgStatus()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/server/hips/core/Intercept;->mbSearchPkg:Z

    return v0
.end method

.method public static declared-synchronized setInterceptSwitchStatus(Z)V
    .locals 2
    .param p0, "b"    # Z

    .prologue
    .line 70
    const-class v0, Lcom/android/server/hips/core/Intercept;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/server/hips/core/Intercept;->mbIntercept:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit v0

    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setSearchPkgStatus(Z)V
    .locals 2
    .param p0, "b"    # Z

    .prologue
    .line 78
    const-class v0, Lcom/android/server/hips/core/Intercept;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/android/server/hips/core/Intercept;->mbSearchPkg:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v0

    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public abstract addPILog(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method public addPkg(Ljava/lang/String;)V
    .locals 7
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 101
    iget-object v4, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    monitor-enter v4

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "bExists":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 105
    .local v2, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 106
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    .line 107
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PI::addPkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    .line 112
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_0
    if-nez v0, :cond_1

    .line 113
    new-instance v2, Lcom/android/server/hips/core/Intercept$PIINode;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/hips/core/Intercept$PIINode;-><init>(Ljava/lang/String;)V

    .line 114
    .restart local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PI::addPkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_1
    monitor-exit v4

    .line 120
    .end local v0    # "bExists":Z
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 103
    .restart local v0    # "bExists":Z
    .restart local v1    # "i":I
    .restart local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public delPkg(Ljava/lang/String;)V
    .locals 6
    .param p1, "szPkg"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    monitor-enter v3

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 128
    .local v1, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v2, v1, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 130
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PI::delPkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .end local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_0
    monitor-exit v3

    .line 137
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 126
    .restart local v0    # "i":I
    .restart local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public interceptAct(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "szCallerPkg"    # Ljava/lang/String;
    .param p2, "szAct"    # Ljava/lang/String;

    .prologue
    .line 208
    const/4 v1, -0x1

    .line 209
    .local v1, "nRet":I
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 211
    iget-object v4, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    monitor-enter v4

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIBList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/core/Intercept$PIBNode;

    .line 214
    .local v2, "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    iget-object v3, v2, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 215
    iget-object v3, v2, Lcom/android/server/hips/core/Intercept$PIBNode;->m_szKey:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    .line 216
    iget-boolean v3, v2, Lcom/android/server/hips/core/Intercept$PIBNode;->m_bIntercept:Z

    if-eqz v3, :cond_2

    .line 217
    const/4 v1, 0x1

    .line 218
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejected act: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .end local v2    # "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    :cond_0
    :goto_1
    monitor-exit v4

    .line 232
    .end local v0    # "i":I
    :cond_1
    return v1

    .line 221
    .restart local v0    # "i":I
    .restart local v2    # "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    :cond_2
    const/4 v1, 0x0

    .line 222
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowable act: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 229
    .end local v2    # "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 212
    .restart local v2    # "pibnode":Lcom/android/server/hips/core/Intercept$PIBNode;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public interceptPkg(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "nCode"    # I
    .param p2, "szCallerPkg"    # Ljava/lang/String;
    .param p3, "szCalleePkg"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "bRet":Z
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 162
    invoke-virtual {p3, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    .line 164
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "neglected pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    monitor-enter v4

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 168
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 170
    .local v2, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 171
    iget-boolean v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    if-eqz v3, :cond_3

    .line 172
    const/4 v0, 0x1

    .line 173
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rejected pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_2
    :goto_2
    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0, p2, p3, p1, v3}, Lcom/android/server/hips/core/Intercept;->addPILog(Ljava/lang/String;Ljava/lang/String;II)V

    .line 183
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 176
    .restart local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_3
    :try_start_1
    const-string v3, "FLYME_HIPS_DEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allowable pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 167
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 182
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_5
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public interceptPkgIgnoreCaller(Ljava/lang/String;)Z
    .locals 5
    .param p1, "szCalleePkg"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 191
    .local v0, "bRet":Z
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 192
    iget-object v4, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    monitor-enter v4

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 195
    .local v2, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 196
    iget-boolean v3, v2, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    if-eqz v3, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 202
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_0
    monitor-exit v4

    .line 204
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 193
    .restart local v1    # "i":I
    .restart local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v2    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updatePkgInterceptStatus(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "szPkg"    # Ljava/lang/String;
    .param p2, "bIntercept"    # Z

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 142
    iget-object v3, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    monitor-enter v3

    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/server/hips/core/Intercept;->mPIIList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/core/Intercept$PIINode;

    .line 145
    .local v1, "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    iget-object v2, v1, Lcom/android/server/hips/core/Intercept$PIINode;->m_szPkg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 146
    iput-boolean p2, v1, Lcom/android/server/hips/core/Intercept$PIINode;->m_bIntercept:Z

    .line 147
    const-string v2, "FLYME_HIPS_DEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePkgInterceptStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/hips/common/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_0
    monitor-exit v3

    .line 156
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 143
    .restart local v0    # "i":I
    .restart local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "piinode":Lcom/android/server/hips/core/Intercept$PIINode;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
