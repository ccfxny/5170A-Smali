.class public Lmeizu/security/AccessControlManager;
.super Ljava/lang/Object;
.source "AccessControlManager.java"


# static fields
.field public static final ACCESS_CONTROL_CHANGE_INTENT:Ljava/lang/String; = "android.intent.action.ACCESS_CONTROL_CHANGED"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.intent.extra.mPackageName"

.field public static final ACCESS_CONTROL_EXTRA_PACKAGE_NAME_LABEL:Ljava/lang/String; = "android.intent.extra.mPackageName.label"

.field public static final ACCESS_CONTROL_EXTRA_REQUEST_CODE:Ljava/lang/String; = "android.intent.extra.request_code"

.field public static final ACCESS_CONTROL_EXTRA_START_INTENT:Ljava/lang/String; = "android.intent.extra.start_intent"

.field public static final ACCESS_CONTROL_INTENT:Ljava/lang/String; = "android.content.pm.CONFIRM_ACCESS_APPCATONS"

.field public static final EXTRA_ACCESS_CINTROL:Ljava/lang/String; = "access_control_"

.field public static final MEIZU_PASSWORD_LENGTH:Ljava/lang/String; = "meizu_password_length"

.field static final TAG:Ljava/lang/String; = "AccessControlManager"

.field public static final TYPE_ACCESS_GUARD:I = 0x2

.field public static final TYPE_ACCESS_NON:I = 0x0

.field public static final TYPE_ACCESS_OPEN:I = 0x3

.field public static final TYPE_ACCESS_PASSWORD:I = 0x1


# instance fields
.field final mContext:Landroid/content/Context;

.field private mService:Lmeizu/security/IAccessControlManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmeizu/security/IAccessControlManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lmeizu/security/IAccessControlManager;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    .line 90
    return-void
.end method


# virtual methods
.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 175
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addAccessControlPassMz(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;
    .param p2, "fromNotification"    # Z

    .prologue
    .line 186
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 187
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_0
    return-void

    .line 191
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->addAccessControlPassMz(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 231
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 232
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    return-void

    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->addControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public addTopAppAccessControlPass()V
    .locals 3

    .prologue
    .line 355
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 356
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->addTopAppAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControl(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-object v3, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v3, :cond_0

    .line 371
    const-string v3, "AccessControlManager"

    const-string v4, "AccessControlService not running"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :goto_0
    return v2

    .line 375
    :cond_0
    iget-object v3, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 376
    iget-object v3, p0, Lmeizu/security/AccessControlManager;->mContext:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 378
    .local v1, "mKeyguardManager":Landroid/app/KeyguardManager;
    if-eqz p1, :cond_1

    const-string v3, "com.meizu.media.camera"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    const-string v3, "AccessControlManager"

    const-string v4, "com.meizu.media.camera check in Keyguard and return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v1    # "mKeyguardManager":Landroid/app/KeyguardManager;
    :cond_1
    :try_start_0
    iget-object v3, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v3, p1}, Lmeizu/security/IAccessControlManager;->checkAccessControl(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 4
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 158
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 159
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_0
    return v1

    .line 163
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2, p1}, Lmeizu/security/IAccessControlManager;->checkAccessControlPass(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public checkControlPackageType(Ljava/lang/String;)I
    .locals 4
    .param p1, "pName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 262
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :goto_0
    return v1

    .line 266
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2, p1}, Lmeizu/security/IAccessControlManager;->checkControlPackageType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public clearAccessControlPass()V
    .locals 3

    .prologue
    .line 216
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 217
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->clearAccessControlPass()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlGuardPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 293
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 294
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :goto_0
    return-object v1

    .line 298
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2}, Lmeizu/security/IAccessControlManager;->getControlGuardPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlOpenPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 310
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    return-object v1

    .line 314
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2}, Lmeizu/security/IAccessControlManager;->getControlOpenPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getControlPasswordPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 278
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :goto_0
    return-object v1

    .line 282
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2}, Lmeizu/security/IAccessControlManager;->getControlPasswordPackages()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlGuardEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 143
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return v1

    .line 147
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2}, Lmeizu/security/IAccessControlManager;->isAccessControlGuardEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isAccessControlPasswordEnable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v2, :cond_0

    .line 127
    const-string v2, "AccessControlManager"

    const-string v3, "AccessControlService not running"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return v1

    .line 131
    :cond_0
    :try_start_0
    iget-object v2, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v2}, Lmeizu/security/IAccessControlManager;->isAccessControlPasswordEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 3
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 202
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeControlPackage(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 247
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1, p2}, Lmeizu/security/IAccessControlManager;->removeControlPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOff(I)V
    .locals 3
    .param p1, "why"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 340
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 341
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_0
    return-void

    .line 345
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->screenTurnedOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 326
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_0
    return-void

    .line 330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1}, Lmeizu/security/IAccessControlManager;->screenTurnedOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlGuardEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 111
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 112
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    return-void

    .line 116
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->setAccessControlGuardEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setAccessControlPasswordEnable(Z)V
    .locals 3
    .param p1, "paramBoolean"    # Z

    .prologue
    .line 96
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    if-nez v1, :cond_0

    .line 97
    const-string v1, "AccessControlManager"

    const-string v2, "AccessControlService not running"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmeizu/security/AccessControlManager;->mService:Lmeizu/security/IAccessControlManager;

    invoke-interface {v1, p1}, Lmeizu/security/IAccessControlManager;->setAccessControlPasswordEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
