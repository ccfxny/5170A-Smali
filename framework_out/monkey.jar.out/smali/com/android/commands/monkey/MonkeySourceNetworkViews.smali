.class public Lcom/android/commands/monkey/MonkeySourceNetworkViews;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetViewsWithTextCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetRootViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$QueryViewCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ListViewsCommand;,
        Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;
    }
.end annotation


# static fields
.field private static final CLASS_NOT_FOUND:Ljava/lang/String; = "Error retrieving class information"

.field private static final COMMAND_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/commands/monkey/MonkeySourceNetworkViews$ViewIntrospectionCommand;",
            ">;"
        }
    .end annotation
.end field

.field private static final HANDLER_THREAD_NAME:Ljava/lang/String; = "UiAutomationHandlerThread"

.field private static final NO_ACCESSIBILITY_EVENT:Ljava/lang/String; = "No accessibility event has occured yet"

.field private static final NO_CONNECTION:Ljava/lang/String; = "Failed to connect to AccessibilityService, try restarting Monkey"

.field private static final NO_NODE:Ljava/lang/String; = "Node with given ID does not exist"

.field private static final REMOTE_ERROR:Ljava/lang/String; = "Unable to retrieve application info from PackageManager"

.field private static sClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final sHandlerThread:Landroid/os/HandlerThread;

.field private static sPm:Landroid/content/pm/IPackageManager;

.field protected static sUiTestAutomationBridge:Landroid/app/UiAutomation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    .line 80
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getlocation"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetLocation;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "gettext"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetText;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getclass"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetClass;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getchecked"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChecked;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getenabled"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetEnabled;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getselected"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetSelected;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "setselected"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetSelected;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getfocused"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetFocused;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "setfocused"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$SetFocused;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getparent"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetParent;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getchildren"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetChildren;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    const-string v1, "getaccessibilityids"

    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;

    invoke-direct {v2}, Lcom/android/commands/monkey/MonkeySourceNetworkViews$GetAccessibilityIds;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UiAutomationHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    return-void
.end method

.method static synthetic access$000()Landroid/content/pm/IPackageManager;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sPm:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->COMMAND_MAP:Ljava/util/Map;

    return-object v0
.end method

.method private static getIdClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "sourceDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 126
    .local v1, "klass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_0

    .line 127
    new-instance v0, Ldalvik/system/DexClassLoader;

    const-string v2, "/data/local/tmp"

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v0, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 130
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".R$id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 131
    sget-object v2, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sClassMap:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    return-object v1
.end method

.method private static getNodeByAccessibilityIds(Ljava/lang/String;Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p0, "windowString"    # Ljava/lang/String;
    .param p1, "viewString"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 138
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 139
    .local v3, "windowId":I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "viewId":I
    sget-object v4, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v4}, Landroid/app/UiAutomation;->getConnectionId()I

    move-result v2

    .line 141
    .local v2, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 142
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    int-to-long v4, v0

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    return-object v4
.end method

.method private static getNodeByViewId(Ljava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p0, "viewId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/commands/monkey/MonkeyViewException;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v3, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v3}, Landroid/app/UiAutomation;->getConnectionId()I

    move-result v2

    .line 148
    .local v2, "connectionId":I
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    .line 149
    .local v1, "client":Landroid/view/accessibility/AccessibilityInteractionClient;
    const v3, 0x7fffffff

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 152
    .local v0, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static setup()V
    .locals 3

    .prologue
    .line 102
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 103
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 104
    new-instance v0, Landroid/app/UiAutomation;

    sget-object v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/app/UiAutomationConnection;

    invoke-direct {v2}, Landroid/app/UiAutomationConnection;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/app/UiAutomation;-><init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V

    sput-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    .line 106
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sUiTestAutomationBridge:Landroid/app/UiAutomation;

    invoke-virtual {v0}, Landroid/app/UiAutomation;->connect()V

    .line 107
    return-void
.end method

.method public static teardown()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 111
    return-void
.end method
