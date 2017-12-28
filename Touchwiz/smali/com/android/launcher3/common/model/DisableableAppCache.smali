.class public Lcom/android/launcher3/common/model/DisableableAppCache;
.super Ljava/lang/Object;
.source "DisableableAppCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;
    }
.end annotation


# static fields
.field private static final APP_POLICY_URI:Landroid/net/Uri;

.field private static final BLOCK_DISABLE_METADATA_NAME:Ljava/lang/String; = "com.sec.android.app.blockdisabling"

.field private static final COLUMN_INSTALL_UNINSTALL_LIST:Ljava/lang/String; = "getApplicationInstallUninstallList"

.field private static final DEBUG:Z = false

.field private static final DISABLEABLE_APP_UPDATE_TOKEN:Ljava/lang/Object;

.field private static final RIGHT_BRAIN:Ljava/lang/String; = "Kr.co.rightbrain.RetailMode"

.field private static final SELECTION_ARGS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DisableableAppCache"

.field private static final UNBLOCK_DISABLE_METADATA_NAME:Ljava/lang/String; = "com.sec.android.app.unblockdisabling"

.field private static final UNINSTALL_BLACKLIST:Ljava/lang/String; = "UninstallationBlacklist"

.field public static mDisableBlockedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mDisableableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUninstallBlockedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEDMBlockDisableAllList:Z

.field private mEDMBlockDisableContainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDMBlockDisablePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->APP_POLICY_URI:Landroid/net/Uri;

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UninstallationBlacklist"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->SELECTION_ARGS:[Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->DISABLEABLE_APP_UPDATE_TOKEN:Ljava/lang/Object;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mUninstallBlockedItems:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableAllList:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableContainList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisablePackageList:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mContext:Landroid/content/Context;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mWorkerHandler:Landroid/os/Handler;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/DisableableAppCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/DisableableAppCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/DisableableAppCache;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/DisableableAppCache;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DisableableAppCache;->isSignedBySystemSignature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->DISABLEABLE_APP_UPDATE_TOKEN:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/DisableableAppCache;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/DisableableAppCache;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addDisableAndUninstallBlockedAppToListFromSettingsCSC()V
    .locals 6

    .prologue
    .line 234
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 235
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "appList":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "appString":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    .line 238
    .local v2, "pkgName":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 239
    sget-object v5, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    sget-object v5, Lcom/android/launcher3/common/model/DisableableAppCache;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 244
    sget-object v5, Lcom/android/launcher3/common/model/DisableableAppCache;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "appList":Ljava/lang/String;
    .end local v1    # "appString":[Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private addNonDisableAppToListFromCSC()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 200
    const/4 v0, 0x0

    .line 202
    .local v0, "cscFile":Ljava/io/FileReader;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v2, "cscFileChk":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    .line 204
    new-instance v1, Ljava/io/FileReader;

    const-string v8, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v1, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .local v1, "cscFile":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 206
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 207
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 208
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 209
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    .line 210
    .local v4, "eventType":I
    :goto_0
    if-eq v4, v12, :cond_1

    .line 211
    const/4 v8, 0x4

    if-ne v4, v8, :cond_0

    .line 212
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    .line 213
    .local v7, "pkgName":Ljava/lang/String;
    sget-object v8, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 214
    sget-object v8, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v7    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 223
    .end local v1    # "cscFile":Ljava/io/FileReader;
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    :cond_2
    if-eqz v0, :cond_3

    .line 225
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    .end local v2    # "cscFileChk":Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 226
    .restart local v2    # "cscFileChk":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 227
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 220
    .end local v2    # "cscFileChk":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    :goto_2
    move-object v3, v8

    .line 221
    .restart local v3    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 223
    if-eqz v0, :cond_3

    .line 225
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 226
    :catch_2
    move-exception v3

    .line 227
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    .line 225
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 228
    :cond_4
    :goto_5
    throw v8

    .line 226
    :catch_3
    move-exception v3

    .line 227
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 220
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v8

    :goto_6
    move-object v3, v8

    goto :goto_3

    .line 223
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v2    # "cscFileChk":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_4

    .line 220
    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_5
    move-exception v8

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_6

    .end local v0    # "cscFile":Ljava/io/FileReader;
    .restart local v1    # "cscFile":Ljava/io/FileReader;
    :catch_6
    move-exception v8

    move-object v0, v1

    .end local v1    # "cscFile":Ljava/io/FileReader;
    .restart local v0    # "cscFile":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private addNonDisableAppToListFromXML()V
    .locals 6

    .prologue
    .line 172
    iget-object v4, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 173
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    if-eqz v2, :cond_2

    .line 175
    :try_start_0
    const-string v4, "nondisableapps"

    invoke-static {v2, v4}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .line 181
    .local v1, "eventType":I
    :goto_1
    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 182
    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 183
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 185
    sget-object v4, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_1

    .line 176
    .end local v1    # "eventType":I
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 192
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    return-void

    .line 195
    :cond_2
    const-string v4, "DisableableAppCache"

    const-string v5, "addNonDisableAppToListFromXML() : Parser is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 191
    :catch_2
    move-exception v0

    goto :goto_3

    .line 176
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getHomePackageList()V
    .locals 9

    .prologue
    .line 253
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v7, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const v8, 0x10040

    invoke-virtual {v7, v3, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 258
    .local v2, "homeActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 260
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v8, v8, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v8, :cond_0

    .line 263
    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_0

    .line 264
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 265
    .local v1, "activityPkg":Ljava/lang/String;
    sget-object v8, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 269
    .local v5, "metadata":Landroid/os/Bundle;
    if-eqz v5, :cond_0

    .line 270
    const-string v8, "android.app.home.alternate"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 271
    .local v4, "metaPkg":Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Lcom/android/launcher3/common/model/DisableableAppCache;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    sget-object v8, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "activityPkg":Ljava/lang/String;
    .end local v4    # "metaPkg":Ljava/lang/String;
    .end local v5    # "metadata":Landroid/os/Bundle;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    return-void
.end method

.method private declared-synchronized isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 103
    monitor-enter p0

    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 106
    :cond_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableAllList:Z

    if-nez v4, :cond_0

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v0, "edmBlockDisableContainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    .local v1, "edmBlockDisablePackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 114
    .local v2, "list":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 119
    .end local v2    # "list":Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 120
    .restart local v2    # "list":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_0

    .line 124
    .end local v2    # "list":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    .line 103
    .end local v0    # "edmBlockDisableContainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "edmBlockDisablePackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private isSignedBySystemSignature(Ljava/lang/String;)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 323
    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android"

    const/16 v7, 0x40

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 324
    .local v3, "sys":Landroid/content/pm/PackageInfo;
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v2, v5, v6

    .line 325
    .local v2, "signature":Landroid/content/pm/Signature;
    iget-object v5, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 326
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v2, v5}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 329
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "signature":Landroid/content/pm/Signature;
    .end local v3    # "sys":Landroid/content/pm/PackageInfo;
    :goto_0
    return v4

    .line 327
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private makeDisableableAppListFromMeta()V
    .locals 6

    .prologue
    .line 294
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .local v3, "mainIntent":Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const v2, 0x20200

    .line 302
    .local v2, "flag":I
    iget-object v4, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 305
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    .line 306
    .local v1, "appsToMakeList":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {v1, v0}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    .line 307
    new-instance v4, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;-><init>(Lcom/android/launcher3/common/model/DisableableAppCache;Ljava/util/Stack;)V

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/DisableableAppCache$SerializedMakeListTask;->scheduleNext()V

    .line 309
    .end local v1    # "appsToMakeList":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    return-void
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 281
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 283
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    .line 290
    :cond_0
    :goto_0
    return v1

    .line 284
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getEnterprisePolicyBlockUninstallList()V
    .locals 10

    .prologue
    .line 128
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableAllList:Z

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    const/4 v6, 0x0

    .line 133
    .local v6, "c":Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/DisableableAppCache;->APP_POLICY_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "getApplicationInstallUninstallList"

    sget-object v4, Lcom/android/launcher3/common/model/DisableableAppCache;->SELECTION_ARGS:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 134
    if-eqz v6, :cond_6

    .line 136
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    :cond_0
    const-string v0, "getApplicationInstallUninstallList"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "pkgName":Ljava/lang/String;
    const-string v0, ".*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 140
    .local v8, "index":I
    const/4 v0, -0x1

    if-le v8, v0, :cond_4

    .line 141
    :goto_0
    if-lez v8, :cond_1

    .line 142
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 143
    const-string v0, ".*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    goto :goto_0

    .line 145
    :cond_1
    if-nez v8, :cond_3

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableAllList:Z

    .line 156
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 163
    .end local v8    # "index":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_2

    .line 164
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableContainList:Ljava/util/List;

    const-string v1, "Kr.co.rightbrain.RetailMode"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    .line 149
    .restart local v8    # "index":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 160
    .end local v8    # "index":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 161
    .local v7, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    if-eqz v6, :cond_2

    .line 164
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 128
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 153
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/launcher3/common/model/DisableableAppCache;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 163
    .end local v8    # "index":I
    .end local v9    # "pkgName":Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_5

    .line 164
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    :cond_6
    :try_start_8
    const-string v0, "DisableableAppCache"

    const-string v1, "getEnterprisePolicyBlockUninstallList() : Cursor is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2
.end method

.method public isBlockUninstall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DisableableAppCache;->isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public makeDisableableAppList()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->getEnterprisePolicyBlockUninstallList()V

    .line 91
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->makeDisableableAppListFromMeta()V

    .line 92
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->addNonDisableAppToListFromXML()V

    .line 93
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->addNonDisableAppToListFromCSC()V

    .line 94
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->addDisableAndUninstallBlockedAppToListFromSettingsCSC()V

    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DisableableAppCache;->getHomePackageList()V

    .line 96
    return-void
.end method

.method public updateForPkg(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 312
    sget-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mUninstallBlockedItems:Ljava/util/ArrayList;

    .line 313
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/DisableableAppCache;->isSignedBySystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    sget-object v0, Lcom/android/launcher3/common/model/DisableableAppCache;->mDisableableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
