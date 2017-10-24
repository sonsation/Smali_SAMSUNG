.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
.super Ljava/lang/Object;
.source "HWRLanguagePackManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAvailableListUpdated:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

.field private mDownloadingListUpdated:Z

.field private mInstalledListUpdated:Z

.field private mIsRegisterReceiver:Z

.field private mIsUpdateInProgress:Z

.field private mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

.field private mLanguagePacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePacksNew:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

.field private mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

.field private final mRefreshListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;",
            ">;"
        }
    .end annotation
.end field

.field private mServerConnection:Z

.field private mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    .line 35
    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    .line 36
    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    .line 40
    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    .line 41
    iput-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mServerConnection:Z

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    .line 158
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager$1;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    .line 61
    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePackListener:Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->setOnLanguagePackListener(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRLanguagePackListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Ljava/util/Map;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private updateLanguageList(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "availableLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    .local p2, "installedLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    .local p3, "downloadingLanguages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 170
    if-nez p1, :cond_1

    .line 184
    :goto_0
    if-nez p2, :cond_3

    .line 202
    :goto_1
    if-nez p3, :cond_6

    .line 216
    :goto_2
    iget-boolean v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    if-nez v5, :cond_9

    .line 230
    :cond_0
    :goto_3
    return-void

    .line 171
    :cond_1
    sget-object v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateLanguageList] Available List, size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    .line 174
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    iput-boolean v10, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 176
    .local v2, "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    .line 177
    .local v1, "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v3, v7, v5, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    .line 178
    .local v3, "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    invoke-virtual {v3, v10}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    .line 179
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    .line 180
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 185
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    .end local v1    # "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    :cond_3
    sget-object v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateLanguageList] Installed List, size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 200
    iput-boolean v10, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    goto/16 :goto_1

    .line 186
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 188
    .restart local v2    # "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    .line 189
    .restart local v1    # "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    iget-object v7, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    invoke-direct {v3, v7, v5, v2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;Ljava/lang/String;)V

    .line 191
    .restart local v3    # "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    sget-object v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Samsung HWR Language : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", Latest : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isLatest()Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v5, 0x4

    .line 195
    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    .line 197
    :goto_6
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    .line 198
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 193
    :cond_5
    invoke-virtual {v3, v9}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    goto :goto_6

    .line 203
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    .end local v1    # "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    :cond_6
    sget-object v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[updateLanguageList] Downloading List, size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    .line 213
    iput-boolean v10, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    goto/16 :goto_2

    .line 204
    :cond_8
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 205
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 206
    .restart local v2    # "language":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;

    .line 207
    .restart local v1    # "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    iget-object v6, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    .line 208
    .restart local v3    # "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    if-eqz v3, :cond_7

    const/4 v6, 0x2

    .line 209
    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setState(I)V

    .line 210
    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->isPreloaded()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setPreloaded(Z)V

    goto :goto_7

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;>;"
    .end local v1    # "langModel":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
    .end local v2    # "language":Ljava/lang/String;
    .end local v3    # "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    :cond_9
    iget-boolean v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    if-eqz v5, :cond_0

    .line 217
    sget-object v5, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "[updateLanguageList] All language list updated."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 219
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacksNew:Ljava/util/HashMap;

    iput-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    .line 222
    iget-object v6, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 223
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_a

    .line 226
    iget-object v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 227
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    .line 228
    monitor-exit v6

    goto/16 :goto_3

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 223
    :cond_a
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;

    .local v4, "listener":Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;
    const/4 v7, 0x0

    .line 224
    invoke-interface {v4, v7}, Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;->onComplete(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8
.end method


# virtual methods
.method public deleteResult(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "bSuccess"    # Z

    .prologue
    .line 244
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    .line 245
    .local v0, "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    if-nez v0, :cond_0

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyDeleteResult(Z)V

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    return-object v0
.end method

.method public getLanguagePacks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    return-object v0
.end method

.method public registerReceiver()V
    .locals 5

    .prologue
    .line 72
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    if-nez v3, :cond_0

    .line 73
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_RESULT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    .local v2, "updateFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    .line 75
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mUpdateReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRUpdateReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_UPDATE_LANG_PROGRESS"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "progressFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    .line 79
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mProgressReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRProgressReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.samsung.android.sdk.handwriting.resourcemanager.ACTION_DELETE_LANG_RESULT"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "deleteFilter":Landroid/content/IntentFilter;
    new-instance v3, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;-><init>(Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;)V

    iput-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    .line 83
    iget-object v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDeleteReceiver:Lcom/samsung/android/sdk/handwriting/resources/impl/receiver/HWRDeleteReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsRegisterReceiver:Z

    goto :goto_0
.end method

.method public setProgressLanguage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 251
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    .line 252
    .local v0, "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->setProgress(I)V

    goto :goto_0
.end method

.method public updateLanguageManager(Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;)V
    .locals 2
    .param p1, "refreshListener"    # Lcom/samsung/android/sdk/handwriting/resources/impl/listener/HWRRefreshListener;

    .prologue
    .line 110
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 111
    if-nez p1, :cond_0

    .line 114
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    if-nez v0, :cond_1

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mIsUpdateInProgress:Z

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->updateLanguageManager()Z

    .line 138
    return-void

    .line 112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRefreshListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 115
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void
.end method

.method public updateLanguageManager()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    .line 143
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    .line 144
    iput-boolean v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    .line 146
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->isContentProviderAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetAvailableList()Z

    .line 152
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetInstalledLangList()Z

    .line 153
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->queryToGetDownloadingLangList()Z

    .line 155
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mAvailableListUpdated:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_0
    return v0

    .line 147
    :cond_1
    sget-object v1, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "[updateLanguageManagerSync] ContentProvider is not available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v0

    .line 155
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mInstalledListUpdated:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mDownloadingListUpdated:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateResourceListFromServer()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    if-nez v0, :cond_0

    .line 265
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mRMHelper:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMHelper;->updateResourceList()V

    goto :goto_0
.end method

.method public updateResult(Ljava/lang/String;I)V
    .locals 2
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .prologue
    .line 237
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePackManager;->mLanguagePacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;

    .line 238
    .local v0, "languagePack":Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;
    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRLanguagePack;->notifyUpdateResult(I)V

    goto :goto_0
.end method
