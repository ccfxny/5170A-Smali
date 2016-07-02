.class public final Lorg/gsma/joyn/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final IS_DEBUG:Z = true

.field public static final RCS_PREFS_IS_INTEGRATION_MODE:Ljava/lang/String; = "IS_INTEGRATION_MODE"

.field public static final TAG:Ljava/lang/String; = "[RCSe]"

.field private static final XLOG_ENABLED:Z = true

.field private static sIsIntegrationMode:Z

.field private static sIsLogEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lorg/gsma/joyn/Logger;->sIsLogEnabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 142
    const-string v0, "[RCSe]"

    invoke-static {p0, p1}, Lorg/gsma/joyn/Logger;->getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string v0, "[RCSe]"

    invoke-static {p0, p1}, Lorg/gsma/joyn/Logger;->getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method private static getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 198
    if-eqz p0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "message":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getIsIntegrationMode()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 158
    const-string v0, "[RCSe]"

    invoke-static {p0, p1}, Lorg/gsma/joyn/Logger;->getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 88
    if-eqz p0, :cond_1

    .line 89
    const-string v2, "[RCSe]"

    const-string v3, "initialize(), context is not null"

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "IS_INTEGRATION_MODE"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 92
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, "IS_INTEGRATION_MODE"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string v2, "IS_INTEGRATION_MODE"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lorg/gsma/joyn/Logger;->sIsIntegrationMode:Z

    .line 103
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    const-string v2, "[RCSe]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(), sIsIntegrationMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lorg/gsma/joyn/Logger;->sIsIntegrationMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/gsma/joyn/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void

    .line 95
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    sput-boolean v4, Lorg/gsma/joyn/Logger;->sIsIntegrationMode:Z

    .line 96
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 97
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IS_INTEGRATION_MODE"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 101
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    sput-boolean v4, Lorg/gsma/joyn/Logger;->sIsIntegrationMode:Z

    goto :goto_0
.end method

.method public static setIsIntegrationMode(Z)V
    .locals 0
    .param p0, "isIntegrationMode"    # Z

    .prologue
    .line 79
    sput-boolean p0, Lorg/gsma/joyn/Logger;->sIsIntegrationMode:Z

    .line 80
    return-void
.end method

.method public static setLogEnabled(Z)V
    .locals 1
    .param p0, "isLogEnable"    # Z

    .prologue
    .line 112
    sput-boolean p0, Lorg/gsma/joyn/Logger;->sIsLogEnabled:Z

    .line 113
    const/4 v0, 0x1

    sput-boolean v0, Lorg/gsma/joyn/Logger;->sIsLogEnabled:Z

    .line 114
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 125
    const-string v0, "[RCSe]"

    invoke-static {p0, p1}, Lorg/gsma/joyn/Logger;->getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 174
    const-string v0, "[RCSe]"

    invoke-static {p0, p1}, Lorg/gsma/joyn/Logger;->getCombinedMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void
.end method
