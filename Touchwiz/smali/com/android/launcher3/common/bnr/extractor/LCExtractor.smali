.class public Lcom/android/launcher3/common/bnr/extractor/LCExtractor;
.super Ljava/lang/Object;
.source "LCExtractor.java"


# static fields
.field public static final ACTION_INTENT_LCEXTRACTOR:Ljava/lang/String; = "com.sec.android.intent.action.LCEXTRACTOR"

.field public static final EXTRACT_TYPE_HOMEDATA:I = 0x1

.field public static final EXTRACT_TYPE_LAYOUT:I = 0x0

.field public static final EXTRACT_TYPE_NO:I = -0x1

.field private static final FILE_NAME_APPS:Ljava/lang/String; = "default_application_order"

.field private static final FILE_NAME_WORKSPACE:Ljava/lang/String; = "default_workspace"

.field public static final HOMEDATA_DIR:Ljava/lang/String; = ".homedata"

.field public static final HOMESCREEN_DIR:Ljava/lang/String; = ".homescreen"

.field public static final LCEXTRACTOR_APPS_SOURCE:Ljava/lang/String; = "LCExtractorApps"

.field public static final LCEXTRACTOR_HOME_SOURCE:Ljava/lang/String; = "LCExtractorHome"

.field public static final SD_DIRECTORY:Ljava/lang/String; = "/LCExtractor"

.field private static final TAG:Ljava/lang/String; = "Launcher.Extractor"

.field private static final strTab:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtractType:I

.field private mIsEasyMode:Z

.field private mIsHomeOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "            "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "                "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "                    "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "                        "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractType"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    .line 78
    iput p2, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    .line 80
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->extractData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/bnr/extractor/LCExtractor;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    return v0
.end method

.method private extractData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 197
    .local v5, "sdDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 198
    .local v2, "dataDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 199
    const-string v1, "//data//com.sec.android.app.launcher"

    .line 200
    .local v1, "curDataPath":Ljava/lang/String;
    const-string v4, "//.homedata//"

    .line 201
    .local v4, "extDataPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 202
    .local v0, "curData":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v3, "extData":Ljava/io/File;
    invoke-direct {p0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    .line 204
    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    .line 208
    .end local v0    # "curData":Ljava/io/File;
    .end local v1    # "curDataPath":Ljava/lang/String;
    .end local v3    # "extData":Ljava/io/File;
    .end local v4    # "extDataPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    const-string v7, "sd card can\'t write!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getStrTab(IZ)Ljava/lang/String;
    .locals 2
    .param p0, "depth"    # I
    .param p1, "launcherPrefix"    # Z

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private recusiveCopyData(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .param p1, "source"    # Ljava/io/File;
    .param p2, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 224
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_0

    .line 225
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 228
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 229
    .local v2, "children":[Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 230
    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v0, v2, v7

    .line 231
    .local v0, "aChildren":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "aChildren":Ljava/lang/String;
    .end local v2    # "children":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 237
    .local v3, "directory":Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    .line 238
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 241
    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 242
    .local v4, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 245
    .local v6, "out":Ljava/io/OutputStream;
    const/16 v8, 0x800

    new-array v1, v8, [B

    .line 247
    .local v1, "buf":[B
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_3

    .line 248
    invoke-virtual {v6, v1, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 250
    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 251
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 253
    .end local v1    # "buf":[B
    .end local v3    # "directory":Ljava/io/File;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "len":I
    .end local v6    # "out":Ljava/io/OutputStream;
    :cond_4
    return-void
.end method

.method private recusiveDeleteData(Ljava/io/File;)V
    .locals 4
    .param p1, "target"    # Ljava/io/File;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 213
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 214
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 215
    .local v0, "aChildren":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    .line 214
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "aChildren":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 220
    return-void
.end method


# virtual methods
.method public checkCondition()V
    .locals 6

    .prologue
    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v1, "needPermissionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/android/launcher3/util/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    .line 93
    .local v2, "value":I
    const-string v3, "Launcher.Extractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSelfPermission : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-eqz v2, :cond_1

    .line 95
    const-string v3, "Launcher.Extractor"

    const-string v4, "No storage permission in TouchWizHome"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    .line 98
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0, v1}, Lcom/android/launcher3/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const-string v3, "Launcher.Extractor"

    const-string v4, "Permission denied."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v0    # "launcher":Lcom/android/launcher3/Launcher;
    :goto_0
    return-void

    .line 103
    .restart local v0    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_0
    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/util/PermissionUtils;->requestPermissions(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 106
    .end local v0    # "launcher":Lcom/android/launcher3/Launcher;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V

    goto :goto_0
.end method

.method public startExtractLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 111
    iget v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    if-ne v0, v2, :cond_1

    .line 112
    new-instance v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;-><init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    const-string v1, "Extracting the home screen layout."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;-><init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
