.class public Landroid/os/HolsterControl;
.super Ljava/lang/Object;
.source "HolsterControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HolsterControl$BinderDeath;,
        Landroid/os/HolsterControl$LidSwitchListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/HolsterControl$LidSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreLidOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "HolsterControl"

    sput-object v0, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/HolsterControl;->mPreLidOpen:Z

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Landroid/os/HolsterControl;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method private findByTag(Ljava/lang/String;)Landroid/os/HolsterControl$LidSwitchListener;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 101
    iget-object v2, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HolsterControl$LidSwitchListener;

    .line 102
    .local v1, "listener":Landroid/os/HolsterControl$LidSwitchListener;
    if-eqz p1, :cond_0

    iget-object v2, v1, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    .end local v1    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    :goto_1
    return-object v1

    .line 100
    .restart local v1    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private notifyListeners(ZLjava/lang/String;)V
    .locals 6
    .param p1, "lidopen"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "listener":Landroid/os/HolsterControl$LidSwitchListener;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 111
    iget-object v3, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    check-cast v2, Landroid/os/HolsterControl$LidSwitchListener;

    .line 112
    .restart local v2    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 110
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_1
    if-eqz v2, :cond_0

    .line 115
    :try_start_0
    iget-object v3, v2, Landroid/os/HolsterControl$LidSwitchListener;->mCallback:Landroid/hardware/input/ILidSwitchCallback;

    invoke-interface {v3, p1}, Landroid/hardware/input/ILidSwitchCallback;->onLidSwitchChanged(Z)V

    .line 116
    sget-object v3, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyListeners "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lidopen is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 123
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method

.method private readFrom(Ljava/lang/String;)I
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 145
    const/16 v7, 0x8

    new-array v0, v7, [B

    .line 146
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 147
    .local v2, "is":Ljava/io/FileInputStream;
    const/4 v5, -0x1

    .line 149
    .local v5, "ret":I
    if-eqz p1, :cond_0

    :try_start_0
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    :cond_0
    if-eqz v2, :cond_1

    .line 164
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    move v7, v5

    .line 170
    :goto_1
    return v7

    .line 165
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    sget-object v7, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "readFrom , path: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    .end local v2    # "is":Ljava/io/FileInputStream;
    .local v3, "is":Ljava/io/FileInputStream;
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 153
    .local v4, "len":I
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v0, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/4 v8, 0x0

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 154
    .local v6, "s":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 156
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    .line 163
    if-eqz v3, :cond_3

    .line 164
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_2
    move-object v2, v3

    .line 168
    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_1

    .line 165
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/FileInputStream;
    .end local v4    # "len":I
    .end local v6    # "s":Ljava/lang/String;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .line 158
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    sget-object v7, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    if-eqz v2, :cond_4

    .line 164
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_4
    move v7, v5

    .line 170
    goto :goto_1

    .line 165
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 159
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 160
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    sget-object v7, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "readFrom error: "

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    if-eqz v2, :cond_4

    .line 164
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    .line 165
    :catch_5
    move-exception v1

    .line 167
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 163
    :goto_6
    if-eqz v2, :cond_5

    .line 164
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 168
    :cond_5
    :goto_7
    throw v7

    .line 165
    :catch_6
    move-exception v1

    .line 167
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_6

    .line 159
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_5

    .line 157
    .end local v2    # "is":Ljava/io/FileInputStream;
    .restart local v3    # "is":Ljava/io/FileInputStream;
    :catch_8
    move-exception v1

    move-object v2, v3

    .end local v3    # "is":Ljava/io/FileInputStream;
    .restart local v2    # "is":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private writeToControl(Ljava/lang/String;I)V
    .locals 6
    .param p1, "deviceNode"    # Ljava/lang/String;
    .param p2, "enable"    # I

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, "fos":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_0

    :try_start_0
    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    :cond_0
    if-eqz v1, :cond_1

    .line 189
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_1
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 177
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_2
    sget-object v3, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeToControl , deviceNode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    add-int/lit8 p2, p2, 0x30

    .line 180
    :try_start_3
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write(I)V

    .line 181
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    if-eqz v2, :cond_4

    .line 189
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .line 193
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 190
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 193
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 182
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_5
    sget-object v3, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 187
    if-eqz v1, :cond_1

    .line 189
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 190
    :catch_3
    move-exception v0

    .line 192
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_7
    sget-object v3, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "writeToControl error: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    if-eqz v1, :cond_1

    .line 189
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 190
    :catch_5
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    .line 189
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 193
    :cond_3
    :goto_4
    throw v3

    .line 190
    :catch_6
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 187
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 184
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 182
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_4
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public registerCallback(Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 10
    .param p1, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v7, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 62
    :try_start_0
    sget-object v6, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :try_start_1
    monitor-exit v7

    .line 88
    :goto_0
    return-void

    .line 63
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    monitor-exit v7

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 64
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Landroid/os/HolsterControl;->findByTag(Ljava/lang/String;)Landroid/os/HolsterControl$LidSwitchListener;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 65
    .local v2, "find":Landroid/os/HolsterControl$LidSwitchListener;
    if-eqz v2, :cond_4

    .line 66
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 68
    :cond_4
    :try_start_4
    new-instance v4, Landroid/os/HolsterControl$LidSwitchListener;

    invoke-direct {v4, p0, p1, p2}, Landroid/os/HolsterControl$LidSwitchListener;-><init>(Landroid/os/HolsterControl;Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V

    .line 69
    .local v4, "listener":Landroid/os/HolsterControl$LidSwitchListener;
    new-instance v0, Landroid/os/HolsterControl$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v0, p0, p2, v6, v4}, Landroid/os/HolsterControl$BinderDeath;-><init>(Landroid/os/HolsterControl;Ljava/lang/String;ILandroid/os/HolsterControl$LidSwitchListener;)V

    .line 70
    .local v0, "binderDeath":Landroid/os/HolsterControl$BinderDeath;
    invoke-interface {p1}, Landroid/hardware/input/ILidSwitchCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v0, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 71
    sget-object v6, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerCallback "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v6, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v6, p0, Landroid/os/HolsterControl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0xa0a0003

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/os/HolsterControl;->readFrom(Ljava/lang/String;)I

    move-result v5

    .line 76
    .local v5, "ret":I
    const/4 v3, 0x1

    .line 77
    .local v3, "lidOpen":Z
    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    .line 78
    const/4 v3, 0x1

    .line 82
    :cond_5
    :goto_1
    if-nez v3, :cond_6

    .line 83
    const/4 v6, 0x0

    invoke-virtual {p0, v3, v6}, Landroid/os/HolsterControl;->switchHandler(ZLjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    .end local v0    # "binderDeath":Landroid/os/HolsterControl$BinderDeath;
    .end local v2    # "find":Landroid/os/HolsterControl$LidSwitchListener;
    .end local v3    # "lidOpen":Z
    .end local v4    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    .end local v5    # "ret":I
    :cond_6
    :goto_2
    :try_start_5
    monitor-exit v7

    goto :goto_0

    .line 79
    .restart local v0    # "binderDeath":Landroid/os/HolsterControl$BinderDeath;
    .restart local v2    # "find":Landroid/os/HolsterControl$LidSwitchListener;
    .restart local v3    # "lidOpen":Z
    .restart local v4    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    .restart local v5    # "ret":I
    :cond_7
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 80
    const/4 v3, 0x0

    goto :goto_1

    .line 84
    .end local v0    # "binderDeath":Landroid/os/HolsterControl$BinderDeath;
    .end local v2    # "find":Landroid/os/HolsterControl$LidSwitchListener;
    .end local v3    # "lidOpen":Z
    .end local v4    # "listener":Landroid/os/HolsterControl$LidSwitchListener;
    .end local v5    # "ret":I
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method public switchHandler(ZLjava/lang/String;)V
    .locals 5
    .param p1, "lidOpen"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const v4, 0xa0a0002

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 198
    iget-object v0, p0, Landroid/os/HolsterControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mz_current_power_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/os/HolsterControl;->mPreLidOpen:Z

    if-ne v0, v3, :cond_0

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    if-nez p1, :cond_1

    .line 203
    sget-object v0, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string v1, "enter hall mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Landroid/os/HolsterControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Landroid/os/HolsterControl;->writeToControl(Ljava/lang/String;I)V

    .line 206
    iput-boolean v2, p0, Landroid/os/HolsterControl;->mPreLidOpen:Z

    .line 214
    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/os/HolsterControl;->notifyListeners(ZLjava/lang/String;)V

    goto :goto_0

    .line 208
    :cond_1
    sget-object v0, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    const-string v1, "exit hall mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Landroid/os/HolsterControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Landroid/os/HolsterControl;->writeToControl(Ljava/lang/String;I)V

    .line 211
    iput-boolean v3, p0, Landroid/os/HolsterControl;->mPreLidOpen:Z

    goto :goto_1
.end method

.method public unregisterCallback(Landroid/hardware/input/ILidSwitchCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/input/ILidSwitchCallback;
    .param p2, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    iget-object v2, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 91
    :try_start_0
    invoke-direct {p0, p2}, Landroid/os/HolsterControl;->findByTag(Ljava/lang/String;)Landroid/os/HolsterControl$LidSwitchListener;

    move-result-object v0

    .line 92
    .local v0, "find":Landroid/os/HolsterControl$LidSwitchListener;
    if-nez v0, :cond_0

    .line 93
    monitor-exit v2

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    sget-object v1, Landroid/os/HolsterControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterCallback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/HolsterControl$LidSwitchListener;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v1, p0, Landroid/os/HolsterControl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v2

    goto :goto_0

    .end local v0    # "find":Landroid/os/HolsterControl$LidSwitchListener;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
