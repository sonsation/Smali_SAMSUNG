.class Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;
.super Landroid/os/AsyncTask;
.source "SamsungAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/SamsungAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VersionCheckTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[I>;"
    }
.end annotation


# instance fields
.field private final mAppVersionChecker:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

.field private final mContext:Landroid/content/Context;

.field private final mVersionCheckInfo:Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

.field private final mVersionCheckPublisher:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "versionCheckInfo"    # Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
    .param p3, "versionCheckPublisher"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mVersionCheckInfo:Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

    .line 158
    iput-object p3, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mVersionCheckPublisher:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .line 159
    new-instance v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;-><init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;Landroid/content/Context;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mAppVersionChecker:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    .line 160
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/update/VersionCheckInfo;
    .param p3, "x2"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    .param p4, "x3"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/common/update/VersionCheckInfo;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)V

    return-void
.end method

.method private getAppVersionCode()I
    .locals 7

    .prologue
    .line 184
    const/4 v3, 0x0

    .line 186
    .local v3, "versionCode":I
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 187
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 188
    iget-object v4, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mVersionCheckInfo:Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 189
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->access$900()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAppVersionCode() Current Version code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v3

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->access$900()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDeployedVersionCode()I
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mAppVersionChecker:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mVersionCheckInfo:Lcom/samsung/android/app/music/common/update/VersionCheckInfo;

    .line 200
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/update/VersionCheckInfo;->getUrlParams()Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;->access$1100(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask$AppVersionChecker;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$UrlParams;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "versionCode":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->doInBackground([Ljava/lang/Void;)[I

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[I
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->getAppVersionCode()I

    move-result v0

    .line 165
    .local v0, "appVersionCode":I
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->getDeployedVersionCode()I

    move-result v1

    .line 166
    .local v1, "updateVersionCode":I
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->access$900()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpdate - appVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " updateVersionCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-ge v0, v1, :cond_0

    .line 169
    new-array v2, v6, [I

    const/4 v3, 0x0

    aput v5, v2, v3

    aput v1, v2, v5

    .line 171
    :goto_0
    return-object v2

    :cond_0
    new-array v2, v6, [I

    fill-array-data v2, :array_0

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 144
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->onPostExecute([I)V

    return-void
.end method

.method protected onPostExecute([I)V
    .locals 3
    .param p1, "values"    # [I

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 178
    const/4 v2, 0x0

    aget v1, p1, v2

    .line 179
    .local v1, "resultCode":I
    const/4 v2, 0x1

    aget v0, p1, v2

    .line 180
    .local v0, "deployedCode":I
    iget-object v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckTask;->mVersionCheckPublisher:Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->access$1000(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;II)V

    .line 181
    return-void
.end method
