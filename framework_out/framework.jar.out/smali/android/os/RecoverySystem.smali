.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static CACHE_BACKUP_DIR:Ljava/lang/String; = null

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DEFAULT_KEYSTORE:Ljava/io/File;

.field private static final DELETE_ALL:Ljava/lang/String; = "--delete_all"

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static final MZ_COMMAND_UPDATE:Ljava/lang/String; = "--update_package"

.field private static final MZ_COMMAND_UPDATE_WIPE:Ljava/lang/String; = "--update_package_wipe"

.field private static final MZ_FILENAME_UPDATE_LOCATE:Ljava/lang/String; = ".update_locate"

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"

.field private static final WIPE_ALL:Ljava/lang/String; = "--wipe_all"

.field private static final WIPE_CACHE:Ljava/lang/String; = "--wipe_cache"

.field private static final WIPE_SDCARD:Ljava/lang/String; = "--wipe_sdcard"

.field private static final WIPE_USERDATA:Ljava/lang/String; = "--wipe_userdata"

.field private static final WIPE_WITH_SDCARD:Ljava/lang/String; = "--wipe_sdcard1"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 80
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 81
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 82
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 83
    const-string v0, "last_"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    .line 86
    const/high16 v0, 0x10000

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    .line 674
    const-string v0, "/cache/backup"

    sput-object v0, Landroid/os/RecoverySystem;->CACHE_BACKUP_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method private static ReadInAndPrint(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "fhandle"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 518
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 520
    .local v1, "command_read":Ljava/io/FileReader;
    const/16 v5, 0x100

    new-array v2, v5, [C

    .line 521
    .local v2, "data":[C
    const/4 v4, 0x0

    .line 522
    .local v4, "read_cnt":I
    const-string v0, ""

    .line 524
    .local v0, "Content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 525
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 526
    const-string v5, "RecoverySystem"

    const-string v6, ">>>Ready to Read from File:%s exists <<<\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lez v4, :cond_1

    if-ge v3, v4, :cond_1

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v2, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    :cond_1
    const-string v5, "RecoverySystem"

    const-string v6, ">>> %d chars,content:%s from Content <<<"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const-string v5, "RecoverySystem"

    const-string v6, "Checking actions are done from %s\n"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .line 538
    return-object v0

    .line 536
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    throw v5
.end method

.method private RecoverySystem()V
    .locals 0

    .prologue
    .line 624
    return-void
.end method

.method private static varargs WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V
    .locals 8
    .param p0, "fhandle"    # Ljava/io/File;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 543
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 546
    .local v2, "command":Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->CACHE_BACKUP_DIR:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/RecoverySystem;->clearCacheBackup(Ljava/lang/String;)V

    .line 548
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v1, v3

    .line 549
    .local v0, "arg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 550
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Write command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 552
    const-string v5, "\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 548
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 560
    return-void

    .line 558
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v5
.end method

.method private static varargs bootCommand(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 564
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 565
    sget-object v1, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 567
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-static {v1, p1}, Landroid/os/RecoverySystem;->WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V

    .line 569
    const-string v1, "RecoverySystem"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current build type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    sget-object v1, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-static {v1}, Landroid/os/RecoverySystem;->ReadInAndPrint(Ljava/io/File;)Ljava/lang/String;

    .line 572
    const-string v1, "RecoverySystem"

    const-string v2, "!!! prepare pm.reboot, there is no going back"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 575
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "recovery"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 576
    const-string v1, "RecoverySystem"

    const-string v2, "!!! pm.reboot failed !!!\n"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Reboot failed (no permissions?)"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static clearCacheBackup(Ljava/lang/String;)V
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 676
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 677
    .local v1, "folder":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-eqz v3, :cond_2

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 679
    new-instance v0, Ljava/io/File;

    aget-object v4, v3, v2

    invoke-direct {v0, p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-eqz v4, :cond_0

    .line 681
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/RecoverySystem;->clearCacheBackup(Ljava/lang/String;)V

    .line 678
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 683
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 684
    const-string v4, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "I can\'t delete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 686
    :cond_1
    const-string v4, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 690
    .end local v0    # "f":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 691
    const-string v4, "RecoverySystem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clean backup cache:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    return-void
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 7
    .param p0, "keystore"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 119
    .local v4, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    if-nez p0, :cond_0

    .line 120
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 122
    :cond_0
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 124
    .local v5, "zip":Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v6, "X.509"

    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 125
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 126
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 127
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 128
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 130
    .local v3, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 132
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 136
    .end local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    throw v6

    .line 132
    .restart local v0    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v2    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 136
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 138
    return-object v4
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 588
    const-string v5, "RecoverySystem"

    const-string v6, "Entering the handleAftermath method"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/4 v3, 0x0

    .line 591
    .local v3, "log":Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 600
    :goto_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 602
    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 601
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 592
    .end local v2    # "i":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v6, "No recovery log file"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 594
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 595
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading recovery log"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 603
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "i":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 604
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 605
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 607
    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 611
    .end local v1    # "f":Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "filename":Ljava/lang/String;
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " !!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--update_package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "filenameArg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "localeArg":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {p0, v3}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public static mzInstallPackage(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "wipe"    # Z
    .param p2, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 378
    if-eqz p1, :cond_0

    const-string v0, "--update_package_wipe"

    .line 379
    .local v0, "command":Ljava/lang/String;
    :goto_0
    invoke-static {p2}, Landroid/os/RecoverySystem;->mzWriteUpgradeFilePath(Ljava/lang/String;)V

    .line 380
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 381
    return-void

    .line 378
    .end local v0    # "command":Ljava/lang/String;
    :cond_0
    const-string v0, "--update_package"

    goto :goto_0
.end method

.method private static mzWriteUpgradeFilePath(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 389
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/cache/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    .local v1, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, ".update_locate"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 391
    .local v0, "mFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 392
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 394
    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v2}, Landroid/os/RecoverySystem;->WriteByFdSync(Ljava/io/File;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static rebootSafelyDelete(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "--delete_all"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 660
    return-void
.end method

.method public static rebootWipeAll(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "--wipe_all"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "reasonArg":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "--wipe_cache"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {p0, v2}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method public static rebootWipeSdcard(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "--wipe_sdcard"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 413
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 418
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V

    .line 424
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shutdown"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 447
    .local v13, "um":Landroid/os/UserManager;
    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v13, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Wiping data is not allowed for this user."

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_0
    new-instance v9, Landroid/os/ConditionVariable;

    invoke-direct {v9}, Landroid/os/ConditionVariable;-><init>()V

    .line 452
    .local v9, "condition":Landroid/os/ConditionVariable;
    const-string v0, "RecoverySystem"

    const-string v2, "Ready to send broadcast: android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v3, "android.permission.MASTER_CLEAR"

    new-instance v4, Landroid/os/RecoverySystem$1;

    invoke-direct {v4, v9}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 474
    invoke-virtual {v9}, Landroid/os/ConditionVariable;->block()V

    .line 475
    const-string v0, "RecoverySystem"

    const-string v2, "Finish to send broadcast: android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v12, 0x0

    .line 478
    .local v12, "shutdownArg":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 479
    const-string v12, "--shutdown_after"

    .line 482
    :cond_1
    const/4 v11, 0x0

    .line 483
    .local v11, "reasonArg":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--reason="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->sanitizeArg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 487
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 489
    .local v10, "localeArg":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v12, v0, v2

    const/4 v2, 0x1

    const-string v3, "--wipe_userdata"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    aput-object v11, v0, v2

    const/4 v2, 0x3

    aput-object v10, v0, v2

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public static rebootWipeWithSdcard(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "localeArg":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "--wipe_sdcard1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p0, v1}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;[Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method private static sanitizeArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "arg"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3f

    .line 619
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 620
    const/16 v0, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 621
    return-object p0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 50
    .param p0, "packageFile"    # Ljava/io/File;
    .param p1, "listener"    # Landroid/os/RecoverySystem$ProgressListener;
    .param p2, "deviceCertsZipFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 174
    .local v16, "fileLen":J
    new-instance v30, Ljava/io/RandomAccessFile;

    const-string/jumbo v45, "r"

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v30, "raf":Ljava/io/RandomAccessFile;
    const-string v45, "RecoverySystem"

    const-string v46, "Entering verifyPackage method"

    invoke-static/range {v45 .. v46}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/16 v24, 0x0

    .line 178
    .local v24, "lastPercent":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 179
    .local v26, "lastPublishTime":J
    if-eqz p1, :cond_0

    .line 180
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 183
    :cond_0
    const-wide/16 v46, 0x6

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 184
    const/16 v45, 0x6

    move/from16 v0, v45

    new-array v15, v0, [B

    .line 185
    .local v15, "footer":[B
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 187
    const/16 v45, 0x2

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_1

    const/16 v45, 0x3

    aget-byte v45, v15, v45

    const/16 v46, -0x1

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_2

    .line 188
    :cond_1
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (no footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v15    # "footer":[B
    .end local v26    # "lastPublishTime":J
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :catchall_0
    move-exception v45

    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    throw v45

    .line 191
    .restart local v15    # "footer":[B
    .restart local v26    # "lastPublishTime":J
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_2
    const/16 v45, 0x4

    :try_start_1
    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x5

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v10, v45, v46

    .line 192
    .local v10, "commentSize":I
    const/16 v45, 0x0

    aget-byte v45, v15, v45

    move/from16 v0, v45

    and-int/lit16 v0, v0, 0xff

    move/from16 v45, v0

    const/16 v46, 0x1

    aget-byte v46, v15, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v46, v0

    shl-int/lit8 v46, v46, 0x8

    or-int v36, v45, v46

    .line 194
    .local v36, "signatureStart":I
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    new-array v14, v0, [B

    .line 195
    .local v14, "eocd":[B
    add-int/lit8 v45, v10, 0x16

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 196
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 200
    const/16 v45, 0x0

    aget-byte v45, v14, v45

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_3

    const/16 v45, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-eq v0, v1, :cond_4

    .line 202
    :cond_3
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "no signature in file (bad footer)"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 205
    :cond_4
    const/16 v18, 0x4

    .local v18, "i":I
    :goto_0
    array-length v0, v14

    move/from16 v45, v0

    add-int/lit8 v45, v45, -0x3

    move/from16 v0, v18

    move/from16 v1, v45

    if-ge v0, v1, :cond_6

    .line 206
    aget-byte v45, v14, v18

    const/16 v46, 0x50

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x1

    aget-byte v45, v14, v45

    const/16 v46, 0x4b

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x2

    aget-byte v45, v14, v45

    const/16 v46, 0x5

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    add-int/lit8 v45, v18, 0x3

    aget-byte v45, v14, v45

    const/16 v46, 0x6

    move/from16 v0, v45

    move/from16 v1, v46

    if-ne v0, v1, :cond_5

    .line 208
    new-instance v45, Ljava/security/SignatureException;

    const-string v46, "EOCD marker found after start of EOCD"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 205
    :cond_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 218
    :cond_6
    new-instance v5, Lorg/apache/harmony/security/asn1/BerInputStream;

    new-instance v45, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v46, v10, 0x16

    sub-int v46, v46, v36

    move-object/from16 v0, v45

    move/from16 v1, v46

    move/from16 v2, v36

    invoke-direct {v0, v14, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, v45

    invoke-direct {v5, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v5, "bis":Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v45, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v45

    invoke-virtual {v0, v5}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 221
    .local v20, "info":Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v20 .. v20}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v37

    .line 222
    .local v37, "signedData":Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v37, :cond_7

    .line 223
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "signedData is null"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 225
    :cond_7
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v13

    .line 226
    .local v13, "encCerts":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/x509/Certificate;>;"
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-eqz v45, :cond_8

    .line 227
    new-instance v45, Ljava/io/IOException;

    const-string v46, "encCerts is empty"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 231
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .line 232
    .local v23, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/apache/harmony/security/x509/Certificate;>;"
    const/4 v8, 0x0

    .line 233
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_c

    .line 234
    const-string v45, "X.509"

    invoke-static/range {v45 .. v45}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v9

    .line 235
    .local v9, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v22, Ljava/io/ByteArrayInputStream;

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lorg/apache/harmony/security/x509/Certificate;

    invoke-virtual/range {v45 .. v45}, Lorg/apache/harmony/security/x509/Certificate;->getEncoded()[B

    move-result-object v45

    move-object/from16 v0, v22

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 236
    .local v22, "is":Ljava/io/InputStream;
    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 241
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v37 .. v37}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v34

    .line 243
    .local v34, "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->isEmpty()Z

    move-result v45

    if-nez v45, :cond_d

    .line 244
    const/16 v45, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v45

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 252
    .local v33, "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_9

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v39

    .line 255
    .local v39, "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v35

    .line 256
    .local v35, "signatureKey":Ljava/security/PublicKey;
    const/16 v44, 0x0

    .line 257
    .local v44, "verified":Z
    invoke-virtual/range {v39 .. v39}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v45

    if-eqz v45, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 258
    .local v7, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v45

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_a

    .line 259
    const/16 v44, 0x1

    .line 263
    .end local v7    # "c":Ljava/security/cert/X509Certificate;
    :cond_b
    if-nez v44, :cond_e

    .line 264
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature doesn\'t match any trusted key"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 238
    .end local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v22    # "is":Ljava/io/InputStream;
    .end local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    .end local v35    # "signatureKey":Ljava/security/PublicKey;
    .end local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .end local v44    # "verified":Z
    .restart local p2    # "deviceCertsZipFile":Ljava/io/File;
    :cond_c
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature contains no certificates"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 246
    .restart local v9    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v22    # "is":Ljava/io/InputStream;
    .restart local v34    # "sigInfos":Ljava/util/List;, "Ljava/util/List<Lorg/apache/harmony/security/pkcs7/SignerInfo;>;"
    :cond_d
    new-instance v45, Ljava/io/IOException;

    const-string/jumbo v46, "no signer infos!"

    invoke-direct/range {v45 .. v46}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 282
    .end local p2    # "deviceCertsZipFile":Ljava/io/File;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v33    # "sigInfo":Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v35    # "signatureKey":Ljava/security/PublicKey;
    .restart local v39    # "trusted":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/security/cert/X509Certificate;>;"
    .restart local v44    # "verified":Z
    :cond_e
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v11

    .line 283
    .local v11, "da":Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v12

    .line 284
    .local v12, "dea":Ljava/lang/String;
    const/4 v4, 0x0

    .line 285
    .local v4, "alg":Ljava/lang/String;
    if-eqz v11, :cond_f

    if-nez v12, :cond_13

    .line 288
    :cond_f
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v4

    .line 292
    :goto_1
    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v32

    .line 293
    .local v32, "sig":Ljava/security/Signature;
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 297
    int-to-long v0, v10

    move-wide/from16 v46, v0

    sub-long v46, v16, v46

    const-wide/16 v48, 0x2

    sub-long v42, v46, v48

    .line 298
    .local v42, "toRead":J
    const-wide/16 v40, 0x0

    .line 299
    .local v40, "soFar":J
    const-wide/16 v46, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 300
    const/16 v45, 0x1000

    move/from16 v0, v45

    new-array v6, v0, [B

    .line 301
    .local v6, "buffer":[B
    const/16 v21, 0x0

    .line 302
    .local v21, "interrupted":Z
    :cond_10
    :goto_2
    cmp-long v45, v40, v42

    if-gez v45, :cond_11

    .line 303
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v21

    .line 304
    if-eqz v21, :cond_14

    .line 324
    :cond_11
    if-eqz p1, :cond_12

    .line 325
    const/16 v45, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v45

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 328
    :cond_12
    if-eqz v21, :cond_16

    .line 329
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "verification was interrupted"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45

    .line 290
    .end local v6    # "buffer":[B
    .end local v21    # "interrupted":Z
    .end local v32    # "sig":Ljava/security/Signature;
    .end local v40    # "soFar":J
    .end local v42    # "toRead":J
    :cond_13
    new-instance v45, Ljava/lang/StringBuilder;

    invoke-direct/range {v45 .. v45}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v45

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    const-string/jumbo v46, "with"

    invoke-virtual/range {v45 .. v46}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    move-object/from16 v0, v45

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v45

    invoke-virtual/range {v45 .. v45}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 305
    .restart local v6    # "buffer":[B
    .restart local v21    # "interrupted":Z
    .restart local v32    # "sig":Ljava/security/Signature;
    .restart local v40    # "soFar":J
    .restart local v42    # "toRead":J
    :cond_14
    array-length v0, v6

    move/from16 v38, v0

    .line 306
    .local v38, "size":I
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v46, v46, v40

    cmp-long v45, v46, v42

    if-lez v45, :cond_15

    .line 307
    sub-long v46, v42, v40

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v38, v0

    .line 309
    :cond_15
    const/16 v45, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v45

    move/from16 v2, v38

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v31

    .line 310
    .local v31, "read":I
    const/16 v45, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v45

    move/from16 v2, v31

    invoke-virtual {v0, v6, v1, v2}, Ljava/security/Signature;->update([BII)V

    .line 311
    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    add-long v40, v40, v46

    .line 313
    if-eqz p1, :cond_10

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    .line 315
    .local v28, "now":J
    const-wide/16 v46, 0x64

    mul-long v46, v46, v40

    div-long v46, v46, v42

    move-wide/from16 v0, v46

    long-to-int v0, v0

    move/from16 v25, v0

    .line 316
    .local v25, "p":I
    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_10

    sub-long v46, v28, v26

    const-wide/16 v48, 0x1f4

    cmp-long v45, v46, v48

    if-lez v45, :cond_10

    .line 318
    move/from16 v24, v25

    .line 319
    move-wide/from16 v26, v28

    .line 320
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    goto/16 :goto_2

    .line 332
    .end local v25    # "p":I
    .end local v28    # "now":J
    .end local v31    # "read":I
    .end local v38    # "size":I
    :cond_16
    invoke-virtual/range {v33 .. v33}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v45

    move-object/from16 v0, v32

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v45

    if-nez v45, :cond_17

    .line 333
    new-instance v45, Ljava/security/SignatureException;

    const-string/jumbo v46, "signature digest verification failed"

    invoke-direct/range {v45 .. v46}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v45
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :cond_17
    invoke-virtual/range {v30 .. v30}, Ljava/io/RandomAccessFile;->close()V

    .line 338
    return-void
.end method
