.class public Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomDetailAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;
    }
.end annotation


# instance fields
.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mService:Landroid/service/quicksettings/IQSTileService;

.field final synthetic this$0:Lcom/android/systemui/qs/external/CustomTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/external/CustomTile;Landroid/service/quicksettings/IQSTileService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/qs/external/CustomTile;
    .param p2, "service"    # Landroid/service/quicksettings/IQSTileService;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    new-instance v0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter$1;-><init>(Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    .line 482
    iput-object p2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    .line 481
    return-void
.end method

.method private shouldBeUnlock(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x0

    .line 605
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/CustomTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "tileSpec":Ljava/lang/String;
    const-string/jumbo v1, "AODTileService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    return v2

    .line 608
    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo v1, "NfcTile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    return v2

    .line 611
    :cond_1
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 517
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v4, :cond_0

    .line 518
    return-object v7

    .line 522
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v4}, Landroid/service/quicksettings/IQSTileService;->semGetDetailView()Landroid/widget/RemoteViews;

    move-result-object v2

    .line 523
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v4}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDetailView remoteViews = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    if-nez v2, :cond_1

    .line 525
    return-object v7

    .line 527
    :cond_1
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 528
    .local v1, "framelayout":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {v2, p1, v1, v4}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v3

    .line 529
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    return-object v1

    .line 531
    .end local v1    # "framelayout":Landroid/view/ViewGroup;
    .end local v2    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v3    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    return-object v7
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 581
    const/16 v0, 0x10c

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 538
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    .line 539
    return-object v2

    .line 543
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetSettingsIntent()Landroid/content/Intent;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 544
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    .line 488
    return-object v2

    .line 492
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semGetDetailViewTitle()Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 493
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 501
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    .line 502
    return-object v2

    .line 506
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonExists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 507
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->semIsToggleButtonChecked()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 509
    :catch_0
    move-exception v0

    .line 512
    :cond_1
    return-object v2
.end method

.method public setToggleState(Z)Z
    .locals 4
    .param p1, "state"    # Z

    .prologue
    const/4 v3, 0x1

    .line 552
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    if-nez v1, :cond_0

    .line 553
    const/4 v1, 0x0

    return v1

    .line 556
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get1(Lcom/android/systemui/qs/external/CustomTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result v1

    .line 555
    if-eqz v1, :cond_1

    .line 557
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-wrap0(Lcom/android/systemui/qs/external/CustomTile;)V

    .line 558
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setToggleState blocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 561
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->shouldBeUnlock(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 562
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get2(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/external/CustomTile;->getTile()Lcom/android/systemui/qs/QSTile;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 567
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get4(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get4(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 569
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 571
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->this$0:Lcom/android/systemui/qs/external/CustomTile;

    invoke-static {v1}, Lcom/android/systemui/qs/external/CustomTile;->-get0(Lcom/android/systemui/qs/external/CustomTile;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setToggleState state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v1, p0, Lcom/android/systemui/qs/external/CustomTile$CustomDetailAdapter;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v1, p1}, Landroid/service/quicksettings/IQSTileService;->semSetToggleButtonChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    return p1

    .line 573
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
