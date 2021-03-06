.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;
.super Ljava/lang/Object;
.source "HWRRMLauncher.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method

.method private sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "permission"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_SENDER_PACKAGE_NAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/api/HWRResourceManagerIntent;->EXTRA_LANG_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 78
    return-void
.end method


# virtual methods
.method public launchUpdateByIntent(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 35
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "> launchUpdateByIntent : language = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/sdk/handwriting/HwrLanguageID;->getID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "> launchUpdateByIntent : send BR with command permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG"

    const-string/jumbo v1, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE_COMMAND"

    .line 37
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "> launchUpdateByIntent : send BR with default permission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG"

    const-string/jumbo v1, "com.samsung.android.sdk.handwriting.permission.RESOURCE_LANGUAGE_UPDATE"

    .line 39
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLauncher;->sendBroadcastWithPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
