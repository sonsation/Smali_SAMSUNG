.class final Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
.super Ljava/lang/Object;
.source "AppWidgetServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appwidget/AppWidgetServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Provider"
.end annotation


# instance fields
.field broadcast:Landroid/app/PendingIntent;

.field id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

.field info:Landroid/appwidget/AppWidgetProviderInfo;

.field maskedByLockedProfile:Z

.field maskedByQuietProfile:Z

.field maskedBySuspendedPackage:Z

.field tag:I

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;",
            ">;"
        }
    .end annotation
.end field

.field zombie:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 4413
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4416
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    .line 4424
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->tag:I

    .line 4413
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public hostedByPackageForUser(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4437
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4438
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4439
    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;

    .line 4440
    .local v2, "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;

    iget-object v3, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$HostId;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4441
    iget-object v3, v2, Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;->host:Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;

    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Host;->getUserId()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 4442
    const/4 v3, 0x1

    return v3

    .line 4438
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4445
    .end local v2    # "widget":Lcom/android/server/appwidget/AppWidgetServiceImpl$Widget;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isInPackageForUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 4431
    invoke-virtual {p0}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4432
    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    iget-object v0, v0, Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 4431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMaskedLocked()Z
    .locals 1

    .prologue
    .line 4475
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMaskedByLockedProfileLocked(Z)Z
    .locals 2
    .param p1, "masked"    # Z

    .prologue
    .line 4462
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 4463
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByLockedProfile:Z

    .line 4464
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaskedByQuietProfileLocked(Z)Z
    .locals 2
    .param p1, "masked"    # Z

    .prologue
    .line 4455
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 4456
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedByQuietProfile:Z

    .line 4457
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaskedBySuspendedPackageLocked(Z)Z
    .locals 2
    .param p1, "masked"    # Z

    .prologue
    .line 4469
    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 4470
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->maskedBySuspendedPackage:Z

    .line 4471
    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->id:Lcom/android/server/appwidget/AppWidgetServiceImpl$ProviderId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->zombie:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " Z"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
