.class public final Lcom/android/launcher3/util/logging/SALogging;
.super Lcom/android/launcher3/util/logging/Logging;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/logging/SALogging$QOAction;,
        Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EASY_MODE_ID:C = '5'

.field static final EMPTY_DETAIL:Ljava/lang/String; = "Empty"

.field static final FOLDER_DETAIL:Ljava/lang/String; = "Folder"

.field private static final HOME_APPS_MODE_ID:C = '0'

.field private static final HOME_ONLY_MODE_ID:C = '3'

.field private static final MODE_INDEX:I = 0x1

.field private static final MULTI_SELECT_CANCEL_DELAY:I = 0x3e8

.field private static final QUICKOPTION_ADD_TO_SECURE_FOLDER:I = 0x7

.field private static final QUICKOPTION_APPINFO:I = 0xb

.field private static final QUICKOPTION_CLEAR_BADGE_APP:I = 0x5

.field private static final QUICKOPTION_CLEAR_BADGE_FOLDER:I = 0x6

.field public static final QUICKOPTION_ClOSE:I = 0xf

.field private static final QUICKOPTION_DISABLE:I = 0xa

.field private static final QUICKOPTION_PUT_TO_SLEEP:I = 0x8

.field private static final QUICKOPTION_REMOVE_FOLDER:I = 0x4

.field private static final QUICKOPTION_REMOVE_SHORTCUT:I = 0x2

.field private static final QUICKOPTION_REMOVE_WIDGET:I = 0x3

.field private static final QUICKOPTION_SELECT_APP:I = 0x1

.field private static final QUICKOPTION_SELECT_FOLDER:I = 0x10

.field private static final QUICKOPTION_SELECT_WIDGET:I = 0x11

.field private static final QUICKOPTION_UNINSTALL:I = 0x9

.field private static final QUICKOPTION_WIDGETINFO:I = 0xc

.field private static final STATUS_APPS:Ljava/lang/String; = "status_apps"

.field private static final STATUS_HOME:Ljava/lang/String; = "status_home"

.field private static final TAG:Ljava/lang/String; = "Launcher.SALogging"

.field private static final TRACKING_ID:Ljava/lang/String; = "401-399-1029810"

.field private static final VERSION:Ljava/lang/String; = "8.13"

.field private static mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private static sIsFinishAppBinding:Z

.field private static sIsFinishHomeBinding:Z

.field private static sPrevScreenId:Ljava/lang/String;


# instance fields
.field private final mModeList:[C

.field mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

.field private mStatusIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

.field private mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    .line 82
    sput-boolean v1, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 83
    sput-boolean v1, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/Logging;-><init>()V

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    .line 1259
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$23;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    .line 1280
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$24;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$24;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    .line 1481
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    return-void

    .line 70
    nop

    :array_0
    .array-data 2
        0x30s
        0x33s
        0x35s
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->deleteLegacyFileIfExist()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/launcher3/Launcher;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging;->getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 59
    sput-object p0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->registerStatusPref()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/logging/SALogging;)[C
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # C

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;
    .param p1, "x1"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/util/logging/SALogging;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/util/logging/SALogging;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z

    move-result v0

    return v0
.end method

.method private analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .param p2, "packageNameBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 777
    const/4 v3, 0x0

    .line 778
    .local v3, "packagesCount":I
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 779
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 780
    .local v2, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    add-int/lit8 v3, v3, 0x1

    .line 782
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 783
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .line 784
    .local v0, "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 785
    .local v1, "extraItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    add-int/lit8 v3, v3, 0x1

    .line 788
    goto :goto_0

    .line 791
    .end local v0    # "extraDragObject":Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .end local v1    # "extraItem":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    const-string v4, "Launcher.SALogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysePackagesOfDragObject : invalid parameter - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_1
    return v3
.end method

.method private changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "detail"    # Ljava/lang/String;

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const-string p1, "Empty"

    .line 232
    :cond_1
    return-object p1
.end method

.method private changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "originID"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 219
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 220
    .local v0, "changeID":[C
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 221
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    .line 222
    :goto_0
    aput-char v1, v0, v2

    .line 225
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 222
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x33

    goto :goto_0

    :cond_2
    aget-char v1, v0, v2

    goto :goto_0
.end method

.method private changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p1, "originID"    # Ljava/lang/String;
    .param p2, "mode"    # C

    .prologue
    const/4 v2, 0x1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 212
    .local v0, "changeID":[C
    array-length v1, v0

    if-ge v2, v1, :cond_0

    const/16 v1, 0x30

    if-eq p2, v1, :cond_0

    .line 213
    aput-char p2, v0, v2

    .line 215
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private deleteLegacyFileIfExist()V
    .locals 5

    .prologue
    .line 137
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SASettingPref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "legacyFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    .line 141
    .local v1, "success":Z
    const-string v2, "Launcher.SALogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLegacyFileIfExist : success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v1    # "success":Z
    :cond_0
    return-void
.end method

.method private getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const v7, 0x7f090160

    const v6, 0x7f09015f

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 854
    const/4 v0, 0x0

    .line 855
    .local v0, "eventID":Ljava/lang/String;
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 856
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    .line 857
    .local v2, "stageMode":I
    packed-switch p1, :pswitch_data_0

    .line 952
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 859
    :pswitch_1
    if-ne v2, v4, :cond_1

    .line 860
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 861
    :cond_1
    if-ne v2, v5, :cond_0

    .line 862
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 866
    :pswitch_2
    if-ne v2, v4, :cond_2

    .line 867
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 868
    :cond_2
    if-ne v2, v5, :cond_0

    .line 869
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 873
    :pswitch_3
    if-ne v2, v4, :cond_0

    .line 874
    const v3, 0x7f090161

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 878
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 879
    const v3, 0x7f09015c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 883
    :pswitch_5
    if-ne v2, v4, :cond_0

    .line 884
    const v3, 0x7f09015e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 888
    :pswitch_6
    if-ne v2, v4, :cond_3

    .line 889
    const v3, 0x7f09015d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 890
    :cond_3
    if-ne v2, v5, :cond_0

    .line 891
    const v3, 0x7f090167

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 895
    :pswitch_7
    if-ne v2, v4, :cond_4

    .line 896
    const v3, 0x7f090158

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 897
    :cond_4
    if-ne v2, v5, :cond_0

    .line 898
    const v3, 0x7f090108

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 902
    :pswitch_8
    if-ne v2, v4, :cond_5

    .line 903
    const v3, 0x7f090159

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 904
    :cond_5
    if-ne v2, v5, :cond_0

    .line 905
    const v3, 0x7f090109

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 909
    :pswitch_9
    if-ne v2, v4, :cond_6

    .line 910
    const v3, 0x7f090156

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_6
    if-ne v2, v5, :cond_0

    .line 912
    const v3, 0x7f090106

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 916
    :pswitch_a
    if-ne v2, v4, :cond_7

    .line 917
    const v3, 0x7f09015b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 918
    :cond_7
    if-ne v2, v5, :cond_0

    .line 919
    const v3, 0x7f09010b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 923
    :pswitch_b
    if-ne v2, v4, :cond_8

    .line 924
    const v3, 0x7f090162

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 925
    :cond_8
    if-ne v2, v5, :cond_0

    .line 926
    const v3, 0x7f09010c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 930
    :pswitch_c
    if-ne v2, v4, :cond_9

    .line 931
    const v3, 0x7f09015a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 932
    :cond_9
    if-ne v2, v5, :cond_0

    .line 933
    const v3, 0x7f09010a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 937
    :pswitch_d
    if-ne v2, v4, :cond_a

    .line 938
    const v3, 0x7f090157

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 939
    :cond_a
    if-ne v2, v5, :cond_0

    .line 940
    const v3, 0x7f090107

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 944
    :pswitch_e
    if-ne v2, v4, :cond_0

    .line 945
    const v3, 0x7f090163

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 949
    :pswitch_f
    const v3, 0x7f090165

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 997
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 998
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 999
    .local v3, "stageMode":I
    const/4 v1, 0x0

    .line 1000
    .local v1, "screenID":Ljava/lang/String;
    if-ne v3, v5, :cond_1

    .line 1001
    const v4, 0x7f0901bf

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1012
    :cond_0
    :goto_0
    return-object v1

    .line 1002
    :cond_1
    if-ne v3, v6, :cond_2

    .line 1003
    const v4, 0x7f0901b1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1004
    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 1005
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    .line 1006
    .local v2, "secondTopStage":I
    if-ne v2, v5, :cond_3

    .line 1007
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901b7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1008
    :cond_3
    if-ne v2, v6, :cond_0

    .line 1009
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901ab

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "id"    # I
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p3, "btnText"    # Ljava/lang/String;

    .prologue
    const v9, 0x7f09018c

    const v8, 0x7f090189

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 1136
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    .line 1137
    .local v3, "stage":I
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1138
    .local v2, "res":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .line 1139
    .local v0, "eventID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1180
    :cond_0
    :goto_0
    return-object v0

    .line 1141
    :pswitch_0
    if-eqz p3, :cond_1

    const v4, 0x7f090069

    .line 1142
    invoke-virtual {p2, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1143
    .local v1, "isDisable":Z
    :goto_1
    if-ne v3, v5, :cond_3

    .line 1144
    if-eqz v1, :cond_2

    const v4, 0x7f09018d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1145
    :goto_2
    goto :goto_0

    .line 1142
    .end local v1    # "isDisable":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1144
    .restart local v1    # "isDisable":Z
    :cond_2
    const v4, 0x7f090192

    .line 1145
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1146
    :cond_3
    if-ne v3, v7, :cond_5

    .line 1147
    if-eqz v1, :cond_4

    const v4, 0x7f09018d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1148
    :goto_3
    goto :goto_0

    .line 1147
    :cond_4
    const v4, 0x7f090192

    .line 1148
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1149
    :cond_5
    if-ne v3, v6, :cond_0

    .line 1150
    if-eqz v1, :cond_6

    const v4, 0x7f090141

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1151
    :goto_4
    goto :goto_0

    .line 1150
    :cond_6
    const v4, 0x7f090144

    .line 1151
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1155
    .end local v1    # "isDisable":Z
    :pswitch_1
    if-ne v3, v5, :cond_7

    .line 1156
    const v4, 0x7f090191

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1157
    :cond_7
    if-ne v3, v6, :cond_0

    .line 1158
    const v4, 0x7f090143

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1162
    :pswitch_2
    if-ne v3, v5, :cond_8

    .line 1163
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1164
    :cond_8
    if-ne v3, v7, :cond_9

    .line 1165
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1166
    :cond_9
    if-ne v3, v6, :cond_0

    .line 1167
    const v4, 0x7f09013d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1171
    :pswitch_3
    if-ne v3, v5, :cond_a

    .line 1172
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1173
    :cond_a
    if-ne v3, v7, :cond_b

    .line 1174
    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1175
    :cond_b
    if-ne v3, v6, :cond_0

    .line 1176
    const v4, 0x7f090140

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1139
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x1

    .line 813
    const/4 v3, 0x0

    .line 814
    .local v3, "detail":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderItems(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    .line 815
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_3

    .line 816
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 817
    const-string v6, "_id"

    .line 818
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 817
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 819
    .local v4, "folder_id":I
    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/launcher3/util/logging/SALogUtils;->getAppsCountInFolder(Landroid/content/Context;I)I

    move-result v0

    .line 820
    .local v0, "appsCount":I
    const-string v6, "color"

    .line 821
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 820
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 822
    .local v1, "color":I
    if-gez v1, :cond_0

    move v1, v5

    .line 823
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v8, "a%dc%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 824
    goto :goto_0

    .line 822
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 823
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 825
    .end local v0    # "appsCount":I
    .end local v1    # "color":I
    .end local v4    # "folder_id":I
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 827
    :cond_3
    if-nez v3, :cond_4

    const-string v3, "Empty"

    .end local v3    # "detail":Ljava/lang/String;
    :cond_4
    return-object v3
.end method

.method private getHotSeatAppStatusID(I)Ljava/lang/String;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const v3, 0x7f0901d4

    .line 831
    sget-object v2, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 832
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    .local v1, "statusID":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 850
    :goto_0
    return-object v1

    .line 835
    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 836
    goto :goto_0

    .line 838
    :pswitch_1
    const v2, 0x7f0901e7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 839
    goto :goto_0

    .line 841
    :pswitch_2
    const v2, 0x7f0901e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    goto :goto_0

    .line 844
    :pswitch_3
    const v2, 0x7f0901d5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 845
    goto :goto_0

    .line 847
    :pswitch_4
    const v2, 0x7f0901d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 833
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/launcher3/util/logging/SALogging;
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->access$000()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    return-object v0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 798
    if-eqz p1, :cond_2

    .line 799
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 800
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 801
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 802
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 804
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const-string v0, "unknown"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0

    .line 807
    .end local v0    # "result":Ljava/lang/String;
    :cond_2
    const-string v0, "APP"

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method private getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 956
    const/4 v0, 0x0

    .line 958
    .local v0, "eventID":Ljava/lang/String;
    if-nez p2, :cond_0

    move-object v1, v0

    .line 968
    .end local v0    # "eventID":Ljava/lang/String;
    .local v1, "eventID":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 961
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 963
    .local v2, "res":Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 968
    .end local v0    # "eventID":Ljava/lang/String;
    .restart local v1    # "eventID":Ljava/lang/String;
    goto :goto_0

    .line 965
    .end local v1    # "eventID":Ljava/lang/String;
    .restart local v0    # "eventID":Ljava/lang/String;
    :pswitch_0
    const v3, 0x7f090165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 963
    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 972
    const/4 v1, 0x0

    .line 974
    .local v1, "screenID":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v2, v1

    .line 993
    .end local v1    # "screenID":Ljava/lang/String;
    .local v2, "screenID":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 978
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 979
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    .line 980
    .local v4, "stageMode":I
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    .line 982
    .local v3, "secondTopStageMode":I
    if-ne v4, v6, :cond_2

    .line 983
    const v5, 0x7f0901c0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    .line 993
    .end local v1    # "screenID":Ljava/lang/String;
    .restart local v2    # "screenID":Ljava/lang/String;
    goto :goto_0

    .line 984
    .end local v2    # "screenID":Ljava/lang/String;
    .restart local v1    # "screenID":Ljava/lang/String;
    :cond_2
    if-ne v4, v7, :cond_3

    .line 985
    const v5, 0x7f0901b3

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 986
    :cond_3
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 987
    if-ne v3, v6, :cond_4

    .line 988
    const v5, 0x7f0901b8

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 989
    :cond_4
    if-ne v3, v7, :cond_1

    .line 990
    const v5, 0x7f0901ac

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isBixbyRunning()Z
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getStateManager()Lcom/android/launcher3/executor/StateManager;

    move-result-object v0

    .line 204
    .local v0, "stateManager":Lcom/android/launcher3/executor/StateManager;
    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateManager;->isRuleRunning()Z

    move-result v1

    .line 207
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerStatusPref()V
    .locals 9

    .prologue
    .line 152
    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 153
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 154
    .local v1, "keySet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    .line 155
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901df

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901db

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901de

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901ea

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 193
    .local v0, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-char v2, v6, v4

    .line 194
    .local v2, "mode":C
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "mode":C
    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    const-string v6, "com.sec.android.app.launcher.prefs.sa"

    .line 198
    invoke-virtual {v5, v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKeys(Ljava/lang/String;Ljava/util/Set;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    move-result-object v5

    .line 199
    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 197
    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    .line 200
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 114
    sput-object p1, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    .line 115
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$1;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/app/Application;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 133
    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    .line 134
    return-void
.end method

.method public insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 459
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$9;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 486
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$10;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public insertAddWidgetItemLog(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    .line 297
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$3;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public insertCancelAddWidgetLog(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "cp"    # Landroid/content/ComponentName;

    .prologue
    .line 1551
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$33;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$33;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1560
    return-void
.end method

.method public insertChangeGridLog(IIZZ)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "statusLogOnly"    # Z
    .param p4, "isHomeGrid"    # Z

    .prologue
    .line 1198
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$21;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$21;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1218
    return-void
.end method

.method public insertClickGridButtonLog(IIZ)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "isHomeGrid"    # Z

    .prologue
    .line 1221
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$22;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1238
    return-void
.end method

.method public insertCloseWidgetFolderLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 327
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$5;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method public insertCloseWidgetLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/String;

    .prologue
    .line 313
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$4;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method

.method public insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 1563
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$34;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$34;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1573
    return-void
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;

    .prologue
    .line 1372
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$27;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$27;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1391
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$28;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "value"    # J
    .param p5, "detail"    # Ljava/lang/String;

    .prologue
    .line 1431
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1432
    :cond_1
    new-instance v1, Lcom/android/launcher3/util/logging/SALogging$30;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/util/logging/SALogging$30;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;
    .param p2, "eventID"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 1410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 1427
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$29;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/launcher3/util/logging/SALogging$29;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 747
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$15;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 774
    return-void
.end method

.method public insertGesturePointOnTrayChange(III)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1577
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$35;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/launcher3/util/logging/SALogging$35;-><init>(Lcom/android/launcher3/util/logging/SALogging;III)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1592
    return-void
.end method

.method public insertGoogleSearchLaunchCount()V
    .locals 1

    .prologue
    .line 1595
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$36;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$36;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1601
    return-void
.end method

.method public insertHideAppsLog(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, "selectedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    const-string v0, ""

    .line 1186
    .local v0, "appNames":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 1187
    .local v1, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1188
    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1189
    .local v2, "packageName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1192
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    .line 1194
    return-void
.end method

.method public insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 236
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$2;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 342
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$6;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 9
    .param p1, "container"    # J
    .param p3, "isMultiSelect"    # Z
    .param p4, "direction"    # I
    .param p5, "dragObject"    # Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    .prologue
    .line 711
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 712
    .local v7, "packageNameBuilder":Ljava/lang/StringBuilder;
    invoke-direct {p0, p5, v7}, Lcom/android/launcher3/util/logging/SALogging;->analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I

    move-result v6

    .line 713
    .local v6, "numberOfPackages":I
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$14;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/logging/SALogging$14;-><init>(Lcom/android/launcher3/util/logging/SALogging;JZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 744
    return-void
.end method

.method public insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "isMultiSelect"    # Z

    .prologue
    .line 432
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$8;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method public insertMoveToPageLog(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "itemInfo"    # Ljava/lang/Object;
    .param p2, "isHome"    # Z

    .prologue
    .line 515
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$11;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 541
    return-void
.end method

.method public insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 4
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p2, "backPressed"    # Z
    .param p3, "homePressed"    # Z

    .prologue
    .line 1075
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    :goto_0
    return-void

    .line 1078
    :cond_0
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_1

    .line 1079
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    .line 1081
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging$19;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 6
    .param p1, "id"    # I
    .param p3, "launcher"    # Lcom/android/launcher3/Launcher;
    .param p4, "btnText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p2, "mCheckedAppsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$20;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$20;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1133
    return-void
.end method

.method public insertQOEventLog(ILcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 1485
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$32;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$32;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1548
    return-void
.end method

.method public insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "option"    # I
    .param p2, "activity"    # Lcom/android/launcher3/Launcher;
    .param p3, "detail"    # Ljava/lang/String;

    .prologue
    .line 1017
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/util/logging/SALogging$16;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1039
    return-void
.end method

.method public insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "launcher"    # Lcom/android/launcher3/Launcher;

    .prologue
    .line 382
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$7;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 429
    return-void
.end method

.method public insertStatusLog(Ljava/lang/String;I)V
    .locals 1
    .param p1, "statusID"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1354
    :goto_0
    return-void

    .line 1344
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$25;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "statusID"    # Ljava/lang/String;
    .param p2, "detail"    # Ljava/lang/String;

    .prologue
    .line 1357
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$26;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertViewFlowLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "screenID"    # Ljava/lang/String;

    .prologue
    .line 1452
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$31;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$31;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1470
    return-void
.end method

.method public setDefaultValueForAppStatusLog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 545
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$12;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 595
    return-void
.end method

.method public setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 600
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 601
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$13;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 707
    return-void
.end method

.method public startLoader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    .line 147
    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    .line 148
    return-void
.end method

.method public updateDefaultPageLog()V
    .locals 1

    .prologue
    .line 1042
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$17;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1057
    return-void
.end method

.method public updateLogValuesForHomeItems()V
    .locals 2

    .prologue
    .line 1252
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    if-nez v0, :cond_0

    .line 1257
    :goto_0
    return-void

    .line 1255
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1256
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public updatePageLogs()V
    .locals 1

    .prologue
    .line 1060
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$18;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$18;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    .line 1071
    return-void
.end method

.method public updateStatusLogValuesForAppsItem()V
    .locals 2

    .prologue
    .line 1241
    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    if-nez v0, :cond_0

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    .line 1245
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
