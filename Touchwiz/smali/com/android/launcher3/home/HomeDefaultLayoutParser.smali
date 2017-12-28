.class public Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;
    }
.end annotation


# static fields
.field private static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final OMC_ETC_PATH:Ljava/lang/String; = "/etc"

.field private static final TAG:Ljava/lang/String; = "HomeDefaultLayoutParser"

.field private static final XML_WORKSPACE:Ljava/lang/String; = "/default_workspace.xml"

.field private static final XML_WORKSPACE_EASY:Ljava/lang/String; = "/default_workspace_easy.xml"

.field private static final XML_WORKSPACE_GUEST:Ljava/lang/String; = "/default_workspace_guest.xml"

.field private static final XML_WORKSPACE_HOMEONLY:Ljava/lang/String; = "/default_workspace_homeonly.xml"

.field private static final XML_WORKSPACE_HOMEONLY_KNOX:Ljava/lang/String; = "/default_workspace_homeonly_knox.xml"

.field private static final XML_WORKSPACE_KNOX:Ljava/lang/String; = "/default_workspace_knox.xml"


# instance fields
.field private OMC_PATH:Ljava/lang/String;

.field private mDWPath:Ljava/lang/String;

.field private mDWPathEasy:Ljava/lang/String;

.field private mDWPathGuest:Ljava/lang/String;

.field private mDWPathHomeOnly:Ljava/lang/String;

.field private mDWPathHomeOnlyKnox:Ljava/lang/String;

.field private mDWPathKnox:Ljava/lang/String;

.field private mHomeParseContainer:I

.field private mIsCSC:Z

.field private mIsEasyMode:Z

.field private mIsGuest:Z

.field private mIsHomeOnly:Z

.field private mIsKnoxMode:Z

.field private mIsWifiDevice:Z

.field private mUsedGridSize:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 95
    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 75
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    .line 76
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    .line 77
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    .line 78
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    .line 79
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    .line 80
    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    .line 82
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    .line 83
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    .line 84
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    .line 85
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    .line 86
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    .line 87
    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    .line 91
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    .line 97
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_guest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_guest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_easy.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_easy.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_homeonly.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_homeonly.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_homeonly_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_homeonly_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetHost"    # Landroid/appwidget/AppWidgetHost;
    .param p3, "callback"    # Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;
    .param p4, "sourceRes"    # Landroid/content/res/Resources;
    .param p5, "layoutId"    # I
    .param p6, "rootTag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 115
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 75
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    .line 78
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    .line 80
    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    .line 82
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    .line 91
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/content/Intent;
    .param p4, "x4"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->changeGridAndLayout(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->setUsedGridSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/home/HomeDefaultLayoutParser;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeGridAndLayout(II)V
    .locals 3
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    .line 634
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    .line 633
    invoke-static {v1, p1, p2, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 635
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 637
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 638
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 649
    return-void
.end method

.method private checkValidCurrentGrid()V
    .locals 7

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 323
    new-array v1, v2, [I

    .line 324
    .local v1, "newGrid":[I
    new-array v0, v2, [I

    .line 325
    .local v0, "currentGrid":[I
    iget-object v2, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v4, v4, v6

    invoke-static {v2, v1, v3, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    .line 327
    iget-object v2, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 329
    aget v2, v1, v5

    aget v3, v0, v5

    if-gt v2, v3, :cond_0

    aget v2, v1, v6

    aget v3, v0, v6

    if-le v2, v3, :cond_1

    .line 330
    :cond_0
    aget v2, v1, v5

    aget v3, v1, v6

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->changeGridAndLayout(II)V

    .line 331
    const-string v2, "HomeDefaultLayoutParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenGrid currentGrid x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v2, "HomeDefaultLayoutParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenGrid newGrid x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isHomeOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    return-void
.end method

.method private setUsedGridSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "cellX"    # Ljava/lang/String;
    .param p2, "cellY"    # Ljava/lang/String;
    .param p3, "cellSpanX"    # Ljava/lang/String;
    .param p4, "cellSpanY"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 339
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 343
    .local v2, "x":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 344
    .local v3, "y":I
    const/4 v0, 0x1

    .local v0, "spanX":I
    const/4 v1, 0x1

    .line 345
    .local v1, "spanY":I
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 346
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 347
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 350
    :cond_2
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v5, v5, v6

    if-le v4, v5, :cond_3

    .line 351
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    add-int v5, v2, v0

    aput v5, v4, v6

    .line 354
    :cond_3
    add-int v4, v3, v1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v5, v5, v7

    if-le v4, v5, :cond_0

    .line 355
    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    add-int v5, v3, v1

    aput v5, v4, v7

    goto :goto_0
.end method


# virtual methods
.method defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I
    .locals 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p5, "container"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    .local p3, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .local p4, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move/from16 v0, p5

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    .line 277
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 278
    .local v3, "startDepth":I
    const/4 v2, 0x0

    .line 281
    .local v2, "homeItemCount":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_2

    .line 282
    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 319
    :cond_2
    return v2

    .line 286
    :cond_3
    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 290
    iget-object v10, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 292
    const-string v10, "homeGridInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 293
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 294
    .local v8, "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-eqz v8, :cond_0

    .line 295
    invoke-interface {v8, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    goto :goto_0

    .line 300
    .end local v8    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    :cond_4
    const-string v10, "screen"

    invoke-static {p1, v10}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 302
    .local v6, "screenId":J
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    .line 303
    .restart local v8    # "tagParser":Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;
    if-nez v8, :cond_5

    .line 304
    const-string v10, "HomeDefaultLayoutParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring unknown element tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    :cond_5
    invoke-interface {v8, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    .line 309
    .local v4, "newElementId":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_0

    .line 311
    const/16 v10, -0x64

    move/from16 v0, p5

    if-ne v0, v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_6

    if-eqz p4, :cond_6

    .line 312
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 313
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-object v0
.end method

.method protected getHiddenApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v0, "parsers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "homeGridInfo"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 146
    .local v12, "fileCheck":Ljava/io/File;
    const/4 v14, 0x0

    .line 147
    .local v14, "fileReader":Ljava/io/FileReader;
    const/4 v8, 0x0

    .line 149
    .local v8, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/4 v7, 0x1

    const/16 v19, 0x0

    aput v19, v6, v7

    aput v19, v2, v4

    .line 150
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    .line 151
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    .line 152
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    .line 153
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    .line 165
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    .line 166
    .local v11, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 167
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_3

    .line 169
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v12    # "fileCheck":Ljava/io/File;
    .local v13, "fileCheck":Ljava/io/File;
    move-object v12, v13

    .line 193
    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v2, v6, v20

    if-lez v2, :cond_a

    .line 194
    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    .end local v14    # "fileReader":Ljava/io/FileReader;
    .local v15, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 196
    .local v3, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 197
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v14, v15

    .line 225
    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    :goto_1
    if-eqz v3, :cond_15

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 227
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    .line 229
    .local v9, "depth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v5

    .line 231
    .local v5, "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    .local v18, "type":I
    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    .line 232
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v9, :cond_15

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_15

    .line 233
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    .line 237
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    .line 239
    .local v17, "tagName":Ljava/lang/String;
    const-string v2, "home"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 240
    const-string v4, "favorites"

    const/16 v7, -0x64

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_2

    .line 171
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v9    # "depth":I
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :cond_3
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto :goto_0

    .line 173
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    if-eqz v2, :cond_5

    .line 174
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0

    .line 175
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    if-nez v2, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_7

    .line 178
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 180
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v2, v6, v20

    if-gtz v2, :cond_17

    .line 181
    :cond_6
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0

    .line 183
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_9

    .line 184
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :try_start_5
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v2, v6, v20

    if-gtz v2, :cond_17

    .line 187
    :cond_8
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0

    .line 190
    :cond_9
    :try_start_6
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0

    .line 201
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_c

    .line 202
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_b

    .line 203
    const v16, 0x7f08000a

    .line 222
    .local v16, "resId":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto/16 :goto_1

    .line 205
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "resId":I
    :cond_b
    const v16, 0x7f08000b

    .restart local v16    # "resId":I
    goto :goto_3

    .line 207
    .end local v16    # "resId":I
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    if-eqz v2, :cond_d

    .line 208
    const v16, 0x7f080007

    .restart local v16    # "resId":I
    goto :goto_3

    .line 209
    .end local v16    # "resId":I
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    if-eqz v2, :cond_e

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    move/from16 v16, v0

    .restart local v16    # "resId":I
    goto :goto_3

    .line 212
    .end local v16    # "resId":I
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_f

    .line 213
    const v16, 0x7f080008

    .restart local v16    # "resId":I
    goto :goto_3

    .line 214
    .end local v16    # "resId":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_10

    .line 215
    const v16, 0x7f080009

    .restart local v16    # "resId":I
    goto :goto_3

    .line 216
    .end local v16    # "resId":I
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    if-eqz v2, :cond_11

    .line 217
    const v16, 0x7f08000c

    .restart local v16    # "resId":I
    goto :goto_3

    .line 219
    .end local v16    # "resId":I
    :cond_11
    const v16, 0x7f080006

    .restart local v16    # "resId":I
    goto :goto_3

    .line 242
    .end local v16    # "resId":I
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .restart local v9    # "depth":I
    .restart local v17    # "tagName":Ljava/lang/String;
    .restart local v18    # "type":I
    :cond_12
    const-string v2, "hotseat"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 243
    const-string v4, "favorites"

    const/16 v7, -0x65

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v2

    add-int/2addr v8, v2

    goto/16 :goto_2

    .line 246
    :cond_13
    const-string v2, "HomeDefaultLayoutParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid tag : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .line 253
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tagParserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;>;"
    .end local v9    # "depth":I
    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v17    # "tagName":Ljava/lang/String;
    .end local v18    # "type":I
    :catch_0
    move-exception v10

    .line 254
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_4
    :try_start_7
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 260
    if-eqz v14, :cond_14

    .line 262
    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 269
    .end local v10    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_14
    :goto_5
    return v8

    .line 251
    .restart local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_15
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->checkValidCurrentGrid()V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 260
    if-eqz v14, :cond_14

    .line 262
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_5

    .line 263
    :catch_1
    move-exception v10

    .line 264
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 263
    .end local v3    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .local v10, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_2
    move-exception v10

    .line 264
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 255
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v10

    .line 256
    .local v10, "e":Ljava/io/IOException;
    :goto_6
    :try_start_b
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 260
    if-eqz v14, :cond_14

    .line 262
    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_5

    .line 263
    :catch_4
    move-exception v10

    .line 264
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 257
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v10

    .line 258
    .local v10, "e":Landroid/content/res/Resources$NotFoundException;
    :goto_7
    :try_start_d
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 260
    if-eqz v14, :cond_14

    .line 262
    :try_start_e
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto :goto_5

    .line 263
    :catch_6
    move-exception v10

    .line 264
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 260
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v14, :cond_16

    .line 262
    :try_start_f
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 265
    :cond_16
    :goto_9
    throw v2

    .line 263
    :catch_7
    move-exception v10

    .line 264
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v4, "HomeDefaultLayoutParser"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v4, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 260
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v11    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :catchall_1
    move-exception v2

    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto :goto_8

    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v2

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_8

    .line 257
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :catch_8
    move-exception v10

    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto :goto_7

    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_9
    move-exception v10

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_7

    .line 255
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :catch_a
    move-exception v10

    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto :goto_6

    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_b
    move-exception v10

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_6

    .line 253
    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :catch_c
    move-exception v10

    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto :goto_4

    .end local v14    # "fileReader":Ljava/io/FileReader;
    .restart local v15    # "fileReader":Ljava/io/FileReader;
    :catch_d
    move-exception v10

    move-object v14, v15

    .end local v15    # "fileReader":Ljava/io/FileReader;
    .restart local v14    # "fileReader":Ljava/io/FileReader;
    goto :goto_4

    .end local v12    # "fileCheck":Ljava/io/File;
    .restart local v13    # "fileCheck":Ljava/io/File;
    :cond_17
    move-object v12, v13

    .end local v13    # "fileCheck":Ljava/io/File;
    .restart local v12    # "fileCheck":Ljava/io/File;
    goto/16 :goto_0
.end method
