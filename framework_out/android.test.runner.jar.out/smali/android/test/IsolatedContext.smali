.class public Landroid/test/IsolatedContext;
.super Landroid/content/ContextWrapper;
.source "IsolatedContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/IsolatedContext$MockAccountManager;
    }
.end annotation


# instance fields
.field private mBroadcastIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/Context;)V
    .locals 1
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "targetContext"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p2}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 59
    iput-object p1, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    .line 60
    new-instance v0, Landroid/test/IsolatedContext$MockAccountManager;

    invoke-direct {v0, p0}, Landroid/test/IsolatedContext$MockAccountManager;-><init>(Landroid/test/IsolatedContext;)V

    iput-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    .line 61
    return-void
.end method


# virtual methods
.method public bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public checkUriPermission(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I
    .param p6, "modeFlags"    # I

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getAndClearBroadcastIntents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 66
    .local v0, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    .line 67
    return-object v0
.end method

.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Landroid/test/IsolatedContext;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method public getFilesDir()Ljava/io/File;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/null"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "account"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Landroid/test/IsolatedContext;->mMockAccountManager:Landroid/test/IsolatedContext$MockAccountManager;

    .line 120
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "receiverPermission"    # Ljava/lang/String;

    .prologue
    .line 99
    iget-object v0, p0, Landroid/test/IsolatedContext;->mBroadcastIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 90
    return-void
.end method
