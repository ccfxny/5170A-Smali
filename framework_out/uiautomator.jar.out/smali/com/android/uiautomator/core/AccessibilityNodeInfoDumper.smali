.class public Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoDumper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static final NAF_EXCLUDED_CLASSES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    const-class v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Landroid/widget/GridView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/widget/GridLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Landroid/widget/ListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Landroid/widget/TableLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 5
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v0

    .line 197
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 198
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 200
    .local v1, "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 207
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    :goto_1
    return v3

    .line 204
    .restart local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_1
    invoke-static {v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v1    # "childNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V
    .locals 10
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "index"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 103
    const-string v3, ""

    const-string v4, "node"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 105
    const-string v3, ""

    const-string v4, "NAF"

    invoke-static {v8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 106
    :cond_0
    const-string v3, ""

    const-string v4, "index"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    const-string v3, ""

    const-string v4, "text"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    const-string v3, ""

    const-string v4, "resource-id"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getViewIdResourceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    const-string v3, ""

    const-string v4, "class"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 110
    const-string v3, ""

    const-string v4, "package"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v3, ""

    const-string v4, "content-desc"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    const-string v3, ""

    const-string v4, "checkable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    const-string v3, ""

    const-string v4, "checked"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v3, ""

    const-string v4, "clickable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    const-string v3, ""

    const-string v4, "enabled"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 116
    const-string v3, ""

    const-string v4, "focusable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const-string v3, ""

    const-string v4, "focused"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    const-string v3, ""

    const-string v4, "scrollable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const-string v3, ""

    const-string v4, "long-clickable"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 120
    const-string v3, ""

    const-string v4, "password"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 121
    const-string v3, ""

    const-string v4, "selected"

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    const-string v3, ""

    const-string v4, "bounds"

    invoke-static {p0, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoHelper;->getVisibleBoundsInScreen(Landroid/view/accessibility/AccessibilityNodeInfo;II)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 124
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    .line 125
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 126
    invoke-virtual {p0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 127
    .local v0, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isVisibleToUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 129
    invoke-static {v0, p1, v2, p3, p4}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 130
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 125
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_1
    sget-object v3, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v4, "Skipping invisible child: %s"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    :cond_2
    sget-object v3, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v4, "Null child %d/%d, parent: %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    .end local v0    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    const-string v3, ""

    const-string v4, "node"

    invoke-interface {p1, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;III)V
    .locals 5
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "rotation"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "local"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 57
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 58
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setWritable(ZZ)Z

    .line 59
    invoke-virtual {v0, v4, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 61
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "local"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "window_dump.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v1, p1, p2, p3}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V

    .line 64
    return-void
.end method

.method public static dumpWindowToFile(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/io/File;III)V
    .locals 14
    .param p0, "root"    # Landroid/view/accessibility/AccessibilityNodeInfo;
    .param p1, "dumpFile"    # Ljava/io/File;
    .param p2, "rotation"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 80
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 82
    .local v6, "startTime":J
    :try_start_0
    new-instance v9, Ljava/io/FileWriter;

    invoke-direct {v9, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 83
    .local v9, "writer":Ljava/io/FileWriter;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 84
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 85
    .local v8, "stringWriter":Ljava/io/StringWriter;
    invoke-interface {v3, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 86
    const-string v10, "UTF-8"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 87
    const-string v10, ""

    const-string v11, "hierarchy"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v10, ""

    const-string v11, "rotation"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const/4 v10, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v3, v10, v0, v1}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->dumpNodeRec(Landroid/view/accessibility/AccessibilityNodeInfo;Lorg/xmlpull/v1/XmlSerializer;III)V

    .line 90
    const-string v10, ""

    const-string v11, "hierarchy"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 92
    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v9}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v8    # "stringWriter":Ljava/io/StringWriter;
    .end local v9    # "writer":Ljava/io/FileWriter;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 98
    .local v4, "endTime":J
    sget-object v10, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fetch time: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v4, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ms"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v4    # "endTime":J
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->LOGTAG:Ljava/lang/String;

    const-string v11, "failed to dump window to file"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static nafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 3
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 174
    .local v0, "isNaf":Z
    :goto_0
    if-nez v0, :cond_1

    .line 180
    :goto_1
    return v1

    .line 170
    .end local v0    # "isNaf":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 180
    .restart local v0    # "isNaf":Z
    :cond_1
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->childNafCheck(Landroid/view/accessibility/AccessibilityNodeInfo;)Z

    move-result v1

    goto :goto_1
.end method

.method private static nafExcludedClass(Landroid/view/accessibility/AccessibilityNodeInfo;)Z
    .locals 6
    .param p0, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 151
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClassName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "className":Ljava/lang/String;
    sget-object v0, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->NAF_EXCLUDED_CLASSES:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 153
    .local v2, "excludedClassName":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v5, 0x1

    .line 156
    .end local v2    # "excludedClassName":Ljava/lang/String;
    :goto_1
    return v5

    .line 152
    .restart local v2    # "excludedClassName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "excludedClassName":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static safeCharSeqToString(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 211
    if-nez p0, :cond_0

    .line 212
    const-string v0, ""

    .line 214
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/uiautomator/core/AccessibilityNodeInfoDumper;->stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static stripInvalidXMLChars(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 219
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 230
    .local v2, "ret":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v1, v3, :cond_17

    .line 231
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 233
    .local v0, "ch":C
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    const/16 v3, 0x8

    if-le v0, v3, :cond_15

    :cond_0
    const/16 v3, 0xb

    if-lt v0, v3, :cond_1

    const/16 v3, 0xc

    if-le v0, v3, :cond_15

    :cond_1
    const/16 v3, 0xe

    if-lt v0, v3, :cond_2

    const/16 v3, 0x1f

    if-le v0, v3, :cond_15

    :cond_2
    const/16 v3, 0x7f

    if-lt v0, v3, :cond_3

    const/16 v3, 0x84

    if-le v0, v3, :cond_15

    :cond_3
    const/16 v3, 0x86

    if-lt v0, v3, :cond_4

    const/16 v3, 0x9f

    if-le v0, v3, :cond_15

    :cond_4
    const v3, 0xfdd0

    if-lt v0, v3, :cond_5

    const v3, 0xfddf

    if-le v0, v3, :cond_15

    :cond_5
    const v3, 0x1fffe

    if-lt v0, v3, :cond_6

    const v3, 0x1ffff

    if-le v0, v3, :cond_15

    :cond_6
    const v3, 0x2fffe

    if-lt v0, v3, :cond_7

    const v3, 0x2ffff

    if-le v0, v3, :cond_15

    :cond_7
    const v3, 0x3fffe

    if-lt v0, v3, :cond_8

    const v3, 0x3ffff

    if-le v0, v3, :cond_15

    :cond_8
    const v3, 0x4fffe

    if-lt v0, v3, :cond_9

    const v3, 0x4ffff

    if-le v0, v3, :cond_15

    :cond_9
    const v3, 0x5fffe

    if-lt v0, v3, :cond_a

    const v3, 0x5ffff

    if-le v0, v3, :cond_15

    :cond_a
    const v3, 0x6fffe

    if-lt v0, v3, :cond_b

    const v3, 0x6ffff

    if-le v0, v3, :cond_15

    :cond_b
    const v3, 0x7fffe

    if-lt v0, v3, :cond_c

    const v3, 0x7ffff

    if-le v0, v3, :cond_15

    :cond_c
    const v3, 0x8fffe

    if-lt v0, v3, :cond_d

    const v3, 0x8ffff

    if-le v0, v3, :cond_15

    :cond_d
    const v3, 0x9fffe

    if-lt v0, v3, :cond_e

    const v3, 0x9ffff

    if-le v0, v3, :cond_15

    :cond_e
    const v3, 0xafffe

    if-lt v0, v3, :cond_f

    const v3, 0xaffff

    if-le v0, v3, :cond_15

    :cond_f
    const v3, 0xbfffe

    if-lt v0, v3, :cond_10

    const v3, 0xbffff

    if-le v0, v3, :cond_15

    :cond_10
    const v3, 0xcfffe

    if-lt v0, v3, :cond_11

    const v3, 0xcffff

    if-le v0, v3, :cond_15

    :cond_11
    const v3, 0xdfffe

    if-lt v0, v3, :cond_12

    const v3, 0xdffff

    if-le v0, v3, :cond_15

    :cond_12
    const v3, 0xefffe

    if-lt v0, v3, :cond_13

    const v3, 0xeffff

    if-le v0, v3, :cond_15

    :cond_13
    const v3, 0xffffe

    if-lt v0, v3, :cond_14

    const v3, 0xfffff

    if-le v0, v3, :cond_15

    :cond_14
    const v3, 0x10fffe

    if-lt v0, v3, :cond_16

    const v3, 0x10ffff

    if-gt v0, v3, :cond_16

    .line 244
    :cond_15
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 246
    :cond_16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 248
    .end local v0    # "ch":C
    :cond_17
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
