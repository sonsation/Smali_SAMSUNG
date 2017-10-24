.class public Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;
.super Ljava/lang/Object;
.source "ServiceBoxRemoteViewsItem.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public bigRemoteViews:Landroid/widget/RemoteViews;

.field public expandRemoteViews:Landroid/widget/RemoteViews;

.field public isShow:Z

.field public isValidData:Z

.field public packageName:Ljava/lang/String;

.field public smallRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v6, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 35
    const-string/jumbo v5, "package"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 36
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "show"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 37
    .local v2, "isShow":Z
    const-string/jumbo v5, "small"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .line 38
    .local v4, "small":Landroid/os/Parcelable;
    const-string/jumbo v5, "expand"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 39
    .local v1, "expand":Landroid/os/Parcelable;
    const-string/jumbo v5, "big"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 41
    .local v0, "big":Landroid/os/Parcelable;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 42
    :cond_0
    sget-object v5, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "package name is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iput-boolean v8, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 44
    return-void

    .line 47
    :cond_1
    if-eqz v2, :cond_2

    if-nez v4, :cond_2

    .line 48
    sget-object v5, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "smallRemoteView is null ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-boolean v8, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 50
    return-void

    .line 53
    :cond_2
    if-eqz v4, :cond_3

    instance-of v5, v4, Landroid/widget/RemoteViews;

    if-eqz v5, :cond_8

    .line 58
    :cond_3
    if-eqz v1, :cond_4

    instance-of v5, v1, Landroid/widget/RemoteViews;

    if-eqz v5, :cond_9

    .line 63
    :cond_4
    if-eqz v0, :cond_5

    instance-of v5, v0, Landroid/widget/RemoteViews;

    if-eqz v5, :cond_a

    .line 69
    :cond_5
    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    .line 70
    iput-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    .line 71
    check-cast v4, Landroid/widget/RemoteViews;

    .end local v4    # "small":Landroid/os/Parcelable;
    iput-object v4, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    .line 72
    check-cast v1, Landroid/widget/RemoteViews;

    .end local v1    # "expand":Landroid/os/Parcelable;
    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    .line 73
    check-cast v0, Landroid/widget/RemoteViews;

    .end local v0    # "big":Landroid/os/Parcelable;
    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    .line 75
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_6

    .line 76
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    .line 79
    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    if-nez v5, :cond_7

    .line 80
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v5, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    .line 34
    :cond_7
    return-void

    .line 54
    .restart local v0    # "big":Landroid/os/Parcelable;
    .restart local v1    # "expand":Landroid/os/Parcelable;
    .restart local v4    # "small":Landroid/os/Parcelable;
    :cond_8
    sget-object v5, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "small is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-boolean v8, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 56
    return-void

    .line 59
    :cond_9
    sget-object v5, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expand is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-boolean v8, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 61
    return-void

    .line 64
    :cond_a
    sget-object v5, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "but big is not RemoteViews ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iput-boolean v8, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 66
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 1
    .param p1, "src"    # Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    .prologue
    .line 85
    iget-object v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    .line 86
    iget-boolean v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    .line 87
    iget-object v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    .line 88
    iget-object v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    .line 89
    iget-object v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    .line 90
    iget-boolean v0, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceBoxRemoteViewsItem["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->smallRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->expandRemoteViews:Landroid/widget/RemoteViews;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, ", "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->bigRemoteViews:Landroid/widget/RemoteViews;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v1, "] - "

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
