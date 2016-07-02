.class public Lcom/immersion/android/haptics/HapticFeedbackTheme;
.super Ljava/lang/Object;
.source "HapticFeedbackTheme.java"


# static fields
.field protected static final DEF_MAP_EFFECT_DEFN_INDEX:I = 0x0

.field protected static final DEF_MAP_EVENT_INDEX:I = 0x0

.field public static final EFFECT_MAPPING_EFFECT_TYPE:I = 0x0

.field protected static final EFFECT_MAPPING_MOD_EFFECT_HANDLE:I = 0x1

.field protected static final EFFECT_MAPPING_MOD_EFFECT_TYPE:I = 0x2

.field protected static final EFFECT_MAPPING_MOD_EFFECT_VALUE:I = 0x3

.field protected static final EFFECT_MAPPING_PLAY_EFFECT_DEFN:I = 0x1

.field protected static final EFFECT_MAPPING_PLAY_EFFECT_INDEX:I = 0x2

.field public static final EFFECT_MAPPING_SIZE:I = 0x4

.field protected static final EFFECT_MAPPING_STOP_EFFECT_HANDLE:I = 0x1

.field public static final EFFECT_MAPPING_TYPE_MODIFY_EFFECT:I = 0x2

.field public static final EFFECT_MAPPING_TYPE_PLAY_EFFECT:I = 0x0

.field public static final EFFECT_MAPPING_TYPE_STOP_EFFECT:I = 0x1

.field public static final NUM_CONSTANTS:I

.field static mUIEvents:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected static final sDefaultThemeIVTFile:Ljava/lang/String; = "/system/media/haptic/defaultHapticTheme.ivt"

.field private static sNbOFConstants:I


# instance fields
.field public mAuthority:Ljava/lang/String;

.field protected mCr:Landroid/content/ContentResolver;

.field protected mEffectDefinitionNames:[Ljava/lang/String;

.field protected mEffectDefinitions:[Lcom/immersion/IVTBuffer;

.field protected mMapping:[[[I

.field public mSuccessfullyFilled:Z

.field public mSuccessfullyLoaded:Z

.field protected mTSDevices:[Lcom/immersion/Device;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    .line 75
    sput v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    .line 80
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    .line 81
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LONG_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIRTUAL_KEY"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x2710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SAFE_MODE_DISABLED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x2711

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SAFE_MODE_ENABLED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BUTTON_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BUTTON_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4eac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_SCROLL_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5223

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_SCROLL_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ea2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_FLING_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4e98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LISTVIEW_ITEMSCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4fb0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TABHOST_TABCHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4fba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TABHOST_TABPRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5014

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "EXPANDABLELISTVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5078

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SEEKBAR_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ee8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SETCURSOR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4ef2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTCHAR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4efc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTWORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f06

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_SELECTLINE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_TAPWORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "TEXTVIEW_FOCUS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_BACKSPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_OPTIONS_MENU_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_ADD_TO_DICTIONARY"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_BACKSPACE_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x61f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_UPPER_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_MIXED_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x620c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_STATE_LOWER_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6216

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_SHIFT_TOGGLE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6220

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_ALT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x622a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_SHIFT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6234

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_MODE_CHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x623e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_SPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62a2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_KEY_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6248

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_POPUP_MENU_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6252

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_POPUP_MENU_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6266

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_RIBBON_HIGHLIGHT_WORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x50dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "AUTOCOMPLETETEXTVIEW_LISTCHANGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_BACKSPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_SPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_REPEAT_KEY_DEFAULT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x62e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KEYBOARD_TAP_TAB"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x4f4c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NOTIFICATION_GENERAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_CLEAR_BUTTON_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x514a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_CLEAR_BUTTON_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_PRESS_EXPAND"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x517c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5186

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x515e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_ITEM_SHOW_HIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x51a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIEWANIMATOR_ANIMATION_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x51b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIEWANIMATOR_ANIMATION_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x51ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "VIEWANIMATOR_ANIMATION_REPEAT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x521c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5226

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_ABORT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5221

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SCROLLER_FLING_END_BOUNCE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x526c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STACKVIEW_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_SHOW"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_HIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x54e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "OPTIONS_MENU_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5528

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5532

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x553c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PROGRESSBAR_INCREMENT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x558c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5596

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x55a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WORKSPACE_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_ALLAPPSDRAWER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x564a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_ALLAPPSDRAWER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x565e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x565f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_FOLDER_HOVER"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5668

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5672

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x567c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5686

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5690

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_WIDGET_RESIZE_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5695

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LAUNCHER_SHORTCUT_REMOVE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_ICON_DROP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_ICON_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5780

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALL_DROPPED_LOST_SIGNAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x578a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALL_DROPPED_OTHER"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5302

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x530c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5316

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_ALBUM_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_ALBUM_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x532a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_IMAGE_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x52e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_THUMBNAIL_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FILMSTRIP_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_FILMSTRIP_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SWITCH_FULLSCREEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "GALLERY_SWITCH_FILMSTRIP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_ZOOM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_ZOOM_MIN_MAX"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_ITEM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_ITEM_SLIDE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_SLIDE_VERTICAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PIE_SELECT_SLIDE_HORIZONTAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ee

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SHUTTER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SHUTTER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5802

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_PREVIEW_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5816

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_DRAWER_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5820

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_MODE_FLIP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SWITCHER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x57eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CAMERA_SWITCHER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5848

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ACTIVATE_RINGER_MODE_VIBRATE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5988

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5992

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x599c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_TRANSITING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_FULL_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_DRAWER_FULL_CLOSED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NUMBERPICKER_ITEMSCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6339

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "NUMBERPICKER_INPUT_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6428

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DATE_PICKER_DAY_TAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x639c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_SNAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "WAVEVIEW_RELEASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5190

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "STATUSBAR_VIEW_SWAP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63ce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DOWNLOAD_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "DOWNLOAD_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_DROPDOWN_OPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_DROPDOWN_CLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "BROWSER_CLOSE_PAGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x640a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x641e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALCULATOR_FLING_EDGE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_DAY_SELECT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x63fb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_FLING_START"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6400

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "CALENDAR_FLING_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58b6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PHONE_UNLOCK_SUCCESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PHONE_UNLOCK_FAILURE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "PHONE_UNLOCK_IGNORE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x58ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "LOCK_PATTERN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x597e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_TAB_RELEASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x5974

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SLIDING_TAB_TOUCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_MENUOPEN"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "HOMESCREEN_MENUCLOSE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x645a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SEND_MAIL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x645f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ADD_ATTACHMENT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x56ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "APPLICATION_LAUNCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6464

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "POWER_CHARGING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x6469

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "POWER_DISCHARGING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59d8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_REMOVE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59d9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x59da

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SWIPEHELPER_SCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7530

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_EDITOR_MAGNIFIER_POPUP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x753a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_EDITOR_SELECT_CHAR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7594

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_DELETE_CHAR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x759e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_DELETE_WORD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_DELETE_LINE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_DELETE_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_SPACE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_ENTER"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_NORMAL_KEY_SMALL_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_KEYBOARD_NORMAL_KEY_BIG_CASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x75f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_BACK_KEY"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x765c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_NOTIFICATION_CLEAR_ALL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76ca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_FAR_ENOUGH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_FAR_NOT_ENOUGH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_FAST_ENOUGH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_FAST_NOT_ENOUGH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76f2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_END"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x76fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UNLOCK_ERROR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7724

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_VOICE_ASSISTANT_POPUP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x772e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_VOICE_ASSISTANT_START_SEARCH"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7738

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_VOICE_ASSISTANT_SEARCHING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7742

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_VOICE_ASSISTANT_SEARCH_RESULT_POPUP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7788

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7792

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_CLICK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x779c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_HOLD"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x779d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_HOLD_RELEASE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_ITEMSCROLL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_OVER_FLING"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77ba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_LISTVIEW_SPRING_BACK"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77c4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_SCROLLER_ABORT"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_TRASH_NOTICE"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x77f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_TRASH_DROPPED"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x783d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_GENERAL_A"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x783e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_GENERAL_B"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x783f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_GENERAL_C"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7840

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_GENERAL_D"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7841

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_UTIL_GENERAL_E"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7850

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_DIALPAD_NUM"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x785a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_DIALPAD_LONG_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7864

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_DIALPAD_CLEAR"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x786e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_DIALPAD_DIAL"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7878

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_DIALPAD_HANGUP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x78b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_POWER_LONG_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x78be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_POWER_OFF"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x78c8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_POWER_ON"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x7919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_GESTURE_WAKE_UP"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    sget-object v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    const/16 v1, 0x791a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    sget v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "FLYME_HOMEKEY_LOCK_LONG_PRESS"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    sget v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->sNbOFConstants:I

    sput v0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;[Lcom/immersion/Device;)V
    .locals 15
    .param p1, "strAuthority"    # Ljava/lang/String;
    .param p2, "cr"    # Landroid/content/ContentResolver;
    .param p3, "devices"    # [Lcom/immersion/Device;

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v1, ""

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    .line 70
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mTSDevices:[Lcom/immersion/Device;

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    .line 72
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    .line 73
    const/4 v1, 0x0

    check-cast v1, [[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    .line 74
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    .line 359
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    .line 360
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mTSDevices:[Lcom/immersion/Device;

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    .line 363
    const-string v1, "content://com.immersion.android.haptics.defaulttheme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 368
    sget v1, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    new-array v1, v1, [[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    .line 369
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/immersion/IVTBuffer;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    .line 373
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 374
    .local v7, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x400

    new-array v13, v1, [B

    .line 379
    .local v13, "myBuffer":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    const-string v1, "/system/media/haptic/defaultHapticTheme.ivt"

    invoke-direct {v10, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 380
    .local v10, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 381
    .local v12, "iLen":I
    :goto_0
    if-lez v12, :cond_0

    .line 383
    invoke-virtual {v10, v13}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v7, v13, v1, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 385
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v2, 0x0

    new-instance v3, Lcom/immersion/IVTBuffer;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/immersion/IVTBuffer;-><init>([B)V

    aput-object v3, v1, v2

    .line 389
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 390
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v12    # "iLen":I
    :goto_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "HapticFeedbackDefaultEffects"

    aput-object v3, v1, v2

    .line 402
    invoke-virtual {p0}, Lcom/immersion/android/haptics/HapticFeedbackTheme;->loadDefaultTheme()V

    .line 456
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "myBuffer":[B
    :cond_1
    :goto_2
    return-void

    .line 392
    .restart local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "myBuffer":[B
    :catch_0
    move-exception v9

    .line 394
    .local v9, "e":Ljava/lang/Exception;
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    const-string v1, "HapticFeedbackManager"

    const-string v2, "HapticFeedbackTheme --> Fail to load default theme data at: /system/media/haptic/defaultHapticTheme.ivt"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_2
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1

    .line 406
    .end local v7    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v13    # "myBuffer":[B
    :cond_3
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    .line 408
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    if-nez v1, :cond_4

    .line 411
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_2

    .line 416
    :cond_4
    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "manifest"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 417
    .local v8, "cur":Landroid/database/Cursor;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 419
    new-instance v11, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;

    iget-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    sget-object v3, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-direct {v11, v1, v2, v3}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Hashtable;)V

    .line 421
    .local v11, "hftl":Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    invoke-virtual {v11}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->getThemeLoadedSuccessfully()Z

    move-result v1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 423
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-eqz v1, :cond_6

    .line 425
    new-instance v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;

    invoke-direct {v14}, Lcom/immersion/android/haptics/HapticFeedbackThemeData;-><init>()V

    .line 427
    .local v14, "theme":Lcom/immersion/android/haptics/HapticFeedbackThemeData;
    invoke-virtual {v11, v14}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->fillTheme(Lcom/immersion/android/haptics/HapticFeedbackThemeData;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    .line 429
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    iget-boolean v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    and-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 430
    iget-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-eqz v1, :cond_5

    .line 432
    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectDefns:[Lcom/immersion/IVTBuffer;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    .line 433
    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->effectNames:[Ljava/lang/String;

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    .line 434
    iget-object v1, v14, Lcom/immersion/android/haptics/HapticFeedbackThemeData;->mapping:[[[I

    iput-object v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    .line 441
    .end local v14    # "theme":Lcom/immersion/android/haptics/HapticFeedbackThemeData;
    :cond_5
    :goto_3
    const-string v1, "HapticFeedbackManager"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    const-string v1, "HapticFeedbackManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HapticFeedbackTheme --> loading result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;->getThemeLoadingLogOutput()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 439
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    goto :goto_3

    .line 448
    .end local v11    # "hftl":Lcom/immersion/android/haptics/HapticFeedbackThemeLoader;
    :cond_7
    if-eqz v8, :cond_8

    .line 450
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 452
    :cond_8
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto/16 :goto_2
.end method


# virtual methods
.method protected loadDefaultTheme()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 631
    const/4 v5, 0x0

    .line 632
    .local v5, "iEventIndex":I
    const/4 v4, 0x0

    .line 634
    .local v4, "iEffectIndex":I
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    aget-object v0, v7, v9

    .line 635
    .local v0, "defTheme":Lcom/immersion/IVTBuffer;
    sget v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->NUM_CONSTANTS:I

    new-array v6, v7, [Ljava/lang/Integer;

    .line 638
    .local v6, "keys":[Ljava/lang/Integer;
    sget-object v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "keys":[Ljava/lang/Integer;
    check-cast v6, [Ljava/lang/Integer;

    .line 640
    .restart local v6    # "keys":[Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_2

    .line 642
    sget-object v7, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 644
    .local v2, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 646
    if-eqz v0, :cond_0

    .line 650
    :try_start_0
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/immersion/IVTBuffer;->getEffectIndexFromName(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 659
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    const/4 v7, -0x1

    if-eq v7, v4, :cond_1

    .line 661
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    new-array v8, v10, [[I

    aput-object v8, v7, v5

    .line 662
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    const/4 v8, 0x4

    new-array v8, v8, [I

    aput-object v8, v7, v9

    .line 663
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    aput v9, v7, v9

    .line 664
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    aput v9, v7, v10

    .line 665
    iget-object v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v7, v7, v5

    aget-object v7, v7, v9

    const/4 v8, 0x2

    aput v4, v7, v8

    .line 640
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :catch_0
    move-exception v1

    .line 655
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_1

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    const/4 v7, 0x0

    check-cast v7, [[I

    aput-object v7, v8, v5

    goto :goto_2

    .line 672
    .end local v2    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method public performHapticFeedback(ILcom/immersion/Device;)Z
    .locals 12
    .param p1, "effectId"    # I
    .param p2, "device"    # Lcom/immersion/Device;

    .prologue
    .line 460
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "performHapticFeedback:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 461
    .local v7, "strLog":Ljava/lang/StringBuffer;
    sget-object v9, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mUIEvents:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 462
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 465
    .local v3, "iEventIndex":I
    const/4 v6, 0x1

    .line 468
    .local v6, "result":Z
    iget-boolean v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    if-nez v9, :cond_1

    .line 471
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x6

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 472
    const-string v9, "HapticFeedbackManager"

    const-string v10, "HapticFeedbackTheme --> Fail to performHapticFeedback() due to theme corruption."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    const/4 v9, 0x0

    .line 563
    :goto_0
    return v9

    .line 477
    :cond_1
    if-nez v5, :cond_3

    .line 480
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 481
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, unsupported effect id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 486
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "effectId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 488
    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v9, v9, v3

    if-nez v9, :cond_5

    .line 491
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 492
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, no mapping for this ui event"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 498
    :cond_5
    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mMapping:[[[I

    aget-object v4, v9, v3

    .line 499
    .local v4, "listOfEvents":[[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v9, v4

    if-ge v2, v9, :cond_b

    .line 501
    aget-object v1, v4, v2

    .line 502
    .local v1, "eventMapping":[I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ", actionIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", effectType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 504
    const/4 v9, 0x0

    aget v9, v1, v9

    packed-switch v9, :pswitch_data_0

    .line 553
    const-string v9, "UNSUPPORTED"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 556
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, unsupported effect type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_6
    const/4 v6, 0x0

    .line 499
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 507
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PLAY, effectName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitionNames:[Ljava/lang/String;

    const/4 v11, 0x1

    aget v11, v1, v11

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", effectIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget v10, v1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    const/4 v8, 0x1

    .line 514
    .local v8, "tmpBool":Z
    :try_start_0
    iget-object v9, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mEffectDefinitions:[Lcom/immersion/IVTBuffer;

    const/4 v10, 0x1

    aget v10, v1, v10

    aget-object v9, v9, v10

    const/4 v10, 0x2

    aget v10, v1, v10

    invoke-virtual {p2, v9, v10}, Lcom/immersion/Device;->playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_3
    if-eqz v8, :cond_7

    .line 529
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x4

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 530
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: TRUE"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 518
    :catch_0
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 521
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 522
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, error while playing effect: \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 535
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "tmpBool":Z
    :pswitch_1
    const-string v9, "STOP"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 538
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, stopping playing effect is not yet supported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_9
    const/4 v6, 0x0

    .line 542
    goto/16 :goto_2

    .line 544
    :pswitch_2
    const-string v9, "MODIFY"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v9, "HapticFeedbackManager"

    const/4 v10, 0x5

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 547
    const-string v9, "HapticFeedbackManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "HapticFeedbackTheme --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " RESULT: FALSE, modifying playing effect is not yet supported."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_a
    const/4 v6, 0x0

    .line 551
    goto/16 :goto_2

    .end local v1    # "eventMapping":[I
    :cond_b
    move v9, v6

    .line 563
    goto/16 :goto_0

    .line 504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ping()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 571
    iget-boolean v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyFilled:Z

    if-nez v0, :cond_1

    .line 574
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 580
    :cond_2
    const-string v0, "HapticFeedbackManager"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 581
    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> authority is null or it is empty string"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_3
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    .line 587
    :cond_4
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    const-string v1, "content://com.immersion.android.haptics.defaulttheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 590
    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> authority set to the default theme"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_5
    iput-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    .line 596
    :cond_6
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    if-nez v0, :cond_8

    .line 598
    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 599
    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> mCr is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_7
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto :goto_0

    .line 605
    :cond_8
    iget-object v0, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mCr:Landroid/content/ContentResolver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "manifest"

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 606
    .local v6, "cur":Landroid/database/Cursor;
    if-eqz v6, :cond_9

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_9

    .line 608
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 609
    iput-boolean v8, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    .line 610
    const-string v0, "HapticFeedbackManager"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    const-string v0, "HapticFeedbackManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HapticFeedbackTheme --> Everything\'s is alright with the theme with authority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 616
    :cond_9
    if-eqz v6, :cond_a

    .line 618
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 620
    :cond_a
    const-string v0, "HapticFeedbackManager"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 621
    const-string v0, "HapticFeedbackManager"

    const-string v1, "HapticFeedbackTheme --> cursor is null, or its size is not 1"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_b
    iput-boolean v7, p0, Lcom/immersion/android/haptics/HapticFeedbackTheme;->mSuccessfullyLoaded:Z

    goto/16 :goto_0
.end method
