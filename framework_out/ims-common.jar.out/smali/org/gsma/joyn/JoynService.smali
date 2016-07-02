.class public abstract Lorg/gsma/joyn/JoynService;
.super Ljava/lang/Object;
.source "JoynService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/gsma/joyn/JoynService$Error;
    }
.end annotation


# static fields
.field public static final ACTION_RCS_SERVICE_UP:Ljava/lang/String; = "org.gsma.joyn.action.RCS_SERVICE_UP"

.field public static final TAG:Ljava/lang/String; = "TAPI-JoynService"


# instance fields
.field private api:Landroid/os/IInterface;

.field protected ctx:Landroid/content/Context;

.field protected serviceListener:Lorg/gsma/joyn/JoynServiceListener;

.field protected version:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/gsma/joyn/JoynServiceListener;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lorg/gsma/joyn/JoynServiceListener;

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    .line 84
    iput-object v0, p0, Lorg/gsma/joyn/JoynService;->version:Ljava/lang/Integer;

    .line 93
    const-string v0, "TAPI-JoynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JoynService() constructor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lorg/gsma/joyn/JoynService;->ctx:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lorg/gsma/joyn/JoynService;->serviceListener:Lorg/gsma/joyn/JoynServiceListener;

    .line 96
    return-void
.end method

.method private callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;
    .param p3, "paramClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v3, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "c":Ljava/lang/Class;
    if-eqz p2, :cond_0

    .line 112
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 113
    .local v2, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    :goto_0
    return-object v3

    .line 115
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 116
    .restart local v2    # "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 118
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v3}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v3
.end method

.method public static isServiceStarted(Landroid/content/Context;)Z
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 231
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 232
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v6, 0x7fffffff

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 233
    .local v3, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 234
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 235
    .local v2, "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 236
    .local v4, "serviceName":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.orangelabs.rcs.service.RcsCoreService"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 237
    iget v6, v2, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-eqz v6, :cond_0

    .line 238
    const/4 v5, 0x1

    .line 244
    .end local v2    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .end local v4    # "serviceName":Landroid/content/ComponentName;
    :cond_0
    return v5

    .line 233
    .restart local v2    # "serviceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v4    # "serviceName":Landroid/content/ComponentName;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addServiceRegistrationListener(Lorg/gsma/joyn/JoynServiceRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/JoynServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "TAPI-JoynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addServiceRegistrationListener() entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "addServiceRegistrationListener"

    const-class v1, Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    invoke-direct {p0, v0, p1, v1}, Lorg/gsma/joyn/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 206
    return-void

    .line 204
    :cond_0
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public getServiceVersion()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 162
    const-string v1, "TAPI-JoynService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceVersion() entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/gsma/joyn/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lorg/gsma/joyn/JoynService;->version:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 166
    :try_start_0
    const-string v1, "getServiceVersion"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lorg/gsma/joyn/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lorg/gsma/joyn/JoynService;->version:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_0
    iget-object v1, p0, Lorg/gsma/joyn/JoynService;->version:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/gsma/joyn/JoynServiceException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/gsma/joyn/JoynServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v1}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public isServiceConnected()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceRegistered()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 185
    const-string v0, "TAPI-JoynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isServiceRegistered() entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 187
    const-string v0, "isServiceRegistered"

    invoke-direct {p0, v0, v3, v3}, Lorg/gsma/joyn/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 189
    :cond_0
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeServiceRegistrationListener(Lorg/gsma/joyn/JoynServiceRegistrationListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/gsma/joyn/JoynServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/gsma/joyn/JoynServiceException;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "TAPI-JoynService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeServiceRegistrationListener() entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/gsma/joyn/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "removeServiceRegistrationListener"

    const-class v1, Lorg/gsma/joyn/IJoynServiceRegistrationListener;

    invoke-direct {p0, v0, p1, v1}, Lorg/gsma/joyn/JoynService;->callApiMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 221
    return-void

    .line 219
    :cond_0
    new-instance v0, Lorg/gsma/joyn/JoynServiceNotAvailableException;

    invoke-direct {v0}, Lorg/gsma/joyn/JoynServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .locals 0
    .param p1, "api"    # Landroid/os/IInterface;

    .prologue
    .line 132
    iput-object p1, p0, Lorg/gsma/joyn/JoynService;->api:Landroid/os/IInterface;

    .line 133
    return-void
.end method
