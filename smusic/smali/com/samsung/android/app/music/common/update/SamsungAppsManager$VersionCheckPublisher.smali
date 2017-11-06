.class Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
.super Ljava/lang/Object;
.source "SamsungAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/update/SamsungAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VersionCheckPublisher"
.end annotation


# static fields
.field private static final INTERVAL:I = 0x2710


# instance fields
.field private mLatestResultCode:I

.field private mLatestResultUpdatedTime:J

.field private mLatestResultVersionCode:I

.field private final mResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager;)V
    .locals 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->this$0:Lcom/samsung/android/app/music/common/update/SamsungAppsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultCode:I

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultVersionCode:I

    .line 345
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;-><init>(Lcom/samsung/android/app/music/common/update/SamsungAppsManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->isPublishing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;II)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 332
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->notifyResult(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->addListener(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->checkIntervalTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;
    .param p1, "x1"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->removeListener(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;

    .prologue
    .line 332
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->reset()V

    return-void
.end method

.method private addListener(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 350
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    return-void
.end method

.method private checkIntervalTime()Z
    .locals 4

    .prologue
    .line 366
    iget-wide v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 368
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkUpdate - There are update last info thus sharing it"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultCode:I

    iget v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultVersionCode:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->notifyResult(II)V

    .line 370
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPublishing()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyResult(II)V
    .locals 6
    .param p1, "resultCode"    # I
    .param p2, "resultVersionCode"    # I

    .prologue
    .line 377
    iput p1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultCode:I

    .line 378
    iput p2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultVersionCode:I

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    .line 380
    invoke-static {}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager;->access$900()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyResult - mLatestResultUpdatedTime is set as current time > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .line 383
    .local v0, "listener":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;->onResult(II)V

    goto :goto_0

    .line 385
    .end local v0    # "listener":Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 386
    return-void
.end method

.method private removeListener(Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/app/music/common/update/SamsungAppsManager$ResultListener;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultCode:I

    .line 391
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultVersionCode:I

    .line 392
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/app/music/common/update/SamsungAppsManager$VersionCheckPublisher;->mLatestResultUpdatedTime:J

    .line 393
    return-void
.end method
