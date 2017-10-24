.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mScrollState:I

.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isClockPage(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 359
    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    .line 360
    .local v0, "page":Ljava/lang/Object;
    instance-of v3, v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    if-nez v3, :cond_0

    .line 361
    return v4

    :cond_0
    move-object v2, v0

    .line 364
    check-cast v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    .line 365
    .local v2, "serviceBoxPage":Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "servicebox_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "clone_clock"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 368
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 371
    :cond_2
    return v4
.end method


# virtual methods
.method protected isFirstPageLocated(IF)Z
    .locals 4
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 391
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    if-ne p1, v1, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    .line 393
    return v1

    .line 396
    :cond_0
    if-nez p1, :cond_1

    cmpl-float v0, p2, v2

    if-nez v0, :cond_1

    .line 397
    return v1

    .line 400
    :cond_1
    return v3
.end method

.method protected isLastPageLocated(IF)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v2, 0x1

    .line 377
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 378
    .local v0, "lastPage":I
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    if-ne p1, v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 380
    return v2

    .line 383
    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_1

    .line 384
    return v2

    .line 387
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 407
    iput p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    .line 405
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 318
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 319
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isFirstPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 320
    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    .line 321
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get9(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    .line 331
    :cond_0
    :goto_0
    cmpl-float v0, p2, v3

    if-eqz v0, :cond_1

    cmpl-float v0, p2, v4

    if-nez v0, :cond_6

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isClockPage(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, v5}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 335
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 336
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 316
    :cond_2
    :goto_1
    return-void

    .line 322
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->isLastPageLocated(IF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    iput v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    .line 326
    :cond_4
    iget v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    if-nez v0, :cond_0

    cmpl-float v0, p2, v3

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v4

    if-eqz v0, :cond_0

    .line 327
    iput v5, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->mScrollState:I

    goto :goto_0

    .line 338
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setAlpha(F)V

    .line 339
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->invalidate()V

    goto :goto_1

    .line 343
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0, v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 349
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->setAlpha(F)V

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardOwnerInfoView;->invalidate()V

    goto :goto_1
.end method

.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 309
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$4;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    .line 312
    :cond_0
    const-string/jumbo v1, "KeyguardServiceBoxContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPageSelected() packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method
