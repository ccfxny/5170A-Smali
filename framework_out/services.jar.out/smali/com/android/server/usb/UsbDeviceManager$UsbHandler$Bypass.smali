.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bypass"
.end annotation


# static fields
.field private static final ACTION_RADIO_AVAILABLE:Ljava/lang/String; = "android.intent.action.RADIO_AVAILABLE"

.field private static final ACTION_USB_BYPASS_GETBYPASS:Ljava/lang/String; = "com.via.bypass.action.getbypass"

.field private static final ACTION_USB_BYPASS_GETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.getbypass_result"

.field private static final ACTION_USB_BYPASS_SETBYPASS:Ljava/lang/String; = "com.via.bypass.action.setbypass"

.field private static final ACTION_USB_BYPASS_SETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.setbypass_result"

.field private static final ACTION_USB_BYPASS_SETFUNCTION:Ljava/lang/String; = "com.via.bypass.action.setfunction"

.field private static final ACTION_USB_BYPASS_SETTETHERFUNCTION:Ljava/lang/String; = "com.via.bypass.action.settetherfunction"

.field private static final ACTION_VIA_ETS_DEV_CHANGED:Ljava/lang/String; = "via.cdma.action.ets.dev.changed"

.field private static final ACTION_VIA_SET_ETS_DEV:Ljava/lang/String; = "via.cdma.action.set.ets.dev"

.field private static final EXTRAL_VIA_ETS_DEV:Ljava/lang/String; = "via.cdma.extral.ets.dev"

.field private static final USB_FUNCTION_BYPASS:Ljava/lang/String; = "via_bypass"

.field public static final USB_FUNCTION_USERMODE:Ljava/lang/String; = "mtp"

.field private static final VALUE_BYPASS_CODE:Ljava/lang/String; = "com.via.bypass.bypass_code"

.field private static final VALUE_ENABLE_BYPASS:Ljava/lang/String; = "com.via.bypass.enable_bypass"

.field private static final VALUE_ISSET_BYPASS:Ljava/lang/String; = "com.via.bypass.isset_bypass"


# instance fields
.field private mBypassAll:I

.field private final mBypassCodes:[I

.field private mBypassFiles:[Ljava/io/File;

.field private final mBypassName:[Ljava/lang/String;

.field private final mBypassReceiver:Landroid/content/BroadcastReceiver;

.field private mBypassToSet:I

.field private mEtsDevInUse:Z

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .locals 8

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 858
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    new-array v3, v4, [I

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    .line 793
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "gps"

    aput-object v4, v3, v6

    const-string v4, "pcv"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "atc"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "ets"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    .line 794
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 796
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    .line 798
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassReceiver:Landroid/content/BroadcastReceiver;

    .line 860
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    .line 861
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 862
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/usb_rawbulk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 864
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 865
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 861
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 867
    .end local v2    # "path":Ljava/lang/String;
    :cond_0
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->bEvdoDtViaSupport:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$400()Z

    move-result v3

    if-ne v3, v7, :cond_1

    .line 869
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.via.bypass.action.setfunction"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 870
    .local v1, "intent":Landroid/content/IntentFilter;
    const-string v3, "com.via.bypass.action.settetherfunction"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v3, "com.via.bypass.action.setbypass"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v3, "com.via.bypass.action.getbypass"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v3, "via.cdma.action.ets.dev.changed"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 874
    const-string v3, "android.intent.action.RADIO_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 875
    iget-object v3, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 877
    .end local v1    # "intent":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 792
    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 756
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # I

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypassMode(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # Ljava/lang/Boolean;
    .param p2, "x2"    # I

    .prologue
    .line 756
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 756
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # I

    .prologue
    .line 756
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypass(I)V

    return-void
.end method

.method private getCurrentBypassMode()I
    .locals 7

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 882
    .local v0, "bypassmode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 884
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 885
    const-string v4, "sys.cp.bypass.at"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 890
    .local v1, "code":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 891
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v3

    or-int/2addr v0, v4

    .line 882
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    .end local v1    # "code":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "code":Ljava/lang/String;
    goto :goto_1

    .line 895
    .end local v1    # "code":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 896
    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to read bypass mode code!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    return v0
.end method

.method private notifySetBypassResult(Ljava/lang/Boolean;I)V
    .locals 2
    .param p1, "isset"    # Ljava/lang/Boolean;
    .param p2, "bypassCode"    # I

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.via.bypass.action.setbypass_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 985
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.via.bypass.isset_bypass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 986
    const-string v1, "com.via.bypass.bypass_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 987
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 989
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setBypass(I)V
    .locals 8
    .param p1, "bypassmode"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 902
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBypass bypass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    .line 904
    .local v0, "bypassResult":I
    if-ne p1, v0, :cond_0

    .line 905
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setBypass bypass == oldbypass!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    .line 937
    :goto_0
    return-void

    .line 911
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    .line 912
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_3

    .line 913
    if-ne v2, v7, :cond_2

    .line 914
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :goto_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    or-int/2addr v0, v3

    .line 911
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 916
    :cond_2
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 933
    :catch_0
    move-exception v1

    .line 934
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to operate bypass!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    goto :goto_0

    .line 920
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    if-ne v2, v7, :cond_4

    .line 921
    :try_start_1
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :goto_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 926
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    xor-int/2addr v0, v3

    goto :goto_3

    .line 923
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 931
    :cond_5
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    .line 932
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBypass success bypassResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setBypassMode(I)V
    .locals 3
    .param p1, "bypassmode"    # I

    .prologue
    .line 977
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 978
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 979
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 980
    return-void
.end method

.method private setEtsDev(I)Z
    .locals 8
    .param p1, "bypass"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x1

    .line 952
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    .line 953
    .local v0, "oldBypass":I
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEtsDev bypass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldBypass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, v0

    if-nez v4, :cond_0

    .line 955
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setEtsDev mEtsDevInUse = true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    new-instance v1, Landroid/content/Intent;

    const-string v3, "via.cdma.action.set.ets.dev"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 957
    .local v1, "reintent":Landroid/content/Intent;
    const-string v3, "via.cdma.extral.ets.dev"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 958
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 959
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    .line 970
    .end local v1    # "reintent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 961
    :cond_0
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, p1

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, v0

    if-eqz v4, :cond_1

    .line 963
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setEtsDev mEtsDevInUse = false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v1, Landroid/content/Intent;

    const-string v4, "via.cdma.action.set.ets.dev"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 965
    .restart local v1    # "reintent":Landroid/content/Intent;
    const-string v4, "via.cdma.extral.ets.dev"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 966
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$200(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 967
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    goto :goto_0

    .end local v1    # "reintent":Landroid/content/Intent;
    :cond_1
    move v2, v3

    .line 970
    goto :goto_0
.end method


# virtual methods
.method closeBypassFunction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1013
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "via_bypass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3100(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 1017
    :cond_0
    return-void
.end method

.method handleCTClinet()V
    .locals 3

    .prologue
    .line 992
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, "ctclientStatus":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 998
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    const-string v1, "net.ctclientd"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1004
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method updateBypassMode(I)V
    .locals 3
    .param p1, "bypassmode"    # I

    .prologue
    .line 940
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateBypassMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setEtsDev(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypass(I)V

    .line 949
    :goto_0
    return-void

    .line 946
    :cond_0
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBypassMode mBypassToSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    goto :goto_0
.end method
