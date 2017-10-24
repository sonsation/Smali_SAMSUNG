.class final Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationDetailAdapter"
.end annotation


# instance fields
.field final LOCATION_METHOD_TEXT:[I

.field final LOCATION_METHOD_TEXT_DESCRIPTION:[I

.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const v0, 0x7f0f0437

    .line 312
    const v1, 0x7f0f0439

    .line 313
    const v2, 0x7f0f043b

    .line 310
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->LOCATION_METHOD_TEXT:[I

    .line 317
    const v0, 0x7f0f0438

    .line 318
    const v1, 0x7f0f043a

    .line 319
    const v2, 0x7f0f043c

    .line 316
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->LOCATION_METHOD_TEXT_DESCRIPTION:[I

    .line 307
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/LocationTile;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    return-void
.end method

.method private getSummary()Ljava/lang/String;
    .locals 8

    .prologue
    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "summary":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/policy/LocationController;->isLocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 368
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_QS_LOCATION_ENABLE_POPUP:Z

    if-eqz v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v5

    .line 370
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_DCM_POPUP:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0f0421

    .line 369
    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 371
    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0f041f

    goto :goto_0

    .line 372
    :cond_1
    const v4, 0x7f0f041e

    goto :goto_0

    .line 374
    :cond_2
    const/4 v2, 0x0

    .line 375
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 376
    const-string/jumbo v5, "location_mode"

    .line 377
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const/4 v7, 0x0

    .line 375
    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 378
    .local v1, "curMode":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 379
    const/4 v2, 0x0

    .line 384
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .local v0, "contentBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f043e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->IS_JAPAN_POPUP:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "\n"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->LOCATION_METHOD_TEXT:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    const-string/jumbo v4, "\n \n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->LOCATION_METHOD_TEXT_DESCRIPTION:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 380
    .end local v0    # "contentBuilder":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    .line 381
    const/4 v2, 0x1

    goto :goto_1

    .line 382
    :cond_5
    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 383
    const/4 v2, 0x2

    goto :goto_1

    .line 387
    .restart local v0    # "contentBuilder":Ljava/lang/StringBuilder;
    :cond_6
    const-string/jumbo v4, ":\n"

    goto :goto_2

    .line 394
    .end local v0    # "contentBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "curMode":I
    .end local v2    # "index":I
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v4}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0f043f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04010a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 335
    const v0, 0x7f13022e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mSummary:Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 362
    const/16 v0, 0x7a

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->getLongClickIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get4(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setToggleState(Z)Z
    .locals 3
    .param p1, "state"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get0(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isLocationTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->showItPolicyToast()V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get3(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/qs/QSTile$Host;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->onClickQSTileOnKeyguard(Lcom/android/systemui/qs/QSTile;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 355
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    .line 356
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mSummary:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return p1
.end method
