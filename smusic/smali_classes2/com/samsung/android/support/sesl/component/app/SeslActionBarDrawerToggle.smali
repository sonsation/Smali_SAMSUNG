.class public Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "SeslActionBarDrawerToggle.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;,
        Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$JellybeanMr2Delegate;,
        Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;,
        Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$DelegateProvider;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

.field mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

.field private mWarnedForDisplayHomeAsUp:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;II)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
    .param p3, "drawerLayout"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
    .param p4, "slider"    # Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;
    .param p5, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p6, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    .line 196
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    .end local p1    # "activity":Landroid/app/Activity;
    :goto_0
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    .line 213
    iput p5, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 214
    iput p6, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 215
    if-nez p4, :cond_2

    .line 216
    new-instance v0, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    .line 221
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 222
    return-void

    .line 206
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    .line 207
    check-cast p1, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$DelegateProvider;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-interface {p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 209
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$JellybeanMr2Delegate;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 218
    .end local p1    # "activity":Landroid/app/Activity;
    :cond_2
    iput-object p4, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 151
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;II)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;
    .param p3, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
    .param p4, "openDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p5, "closeDrawerContentDescRes"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 182
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;II)V

    .line 184
    return-void
.end method

.method private setPosition(F)V
    .locals 2
    .param p1, "position"    # F

    .prologue
    .line 482
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;->setVerticalMirror(Z)V

    .line 487
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;->setProgress(F)V

    .line 488
    return-void

    .line 484
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;->setVerticalMirror(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDrawerArrowDrawable()Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    return-object v0
.end method

.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->syncState()V

    .line 260
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 419
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setPosition(F)V

    .line 420
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 421
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 423
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 404
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setPosition(F)V

    .line 405
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 406
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 408
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 392
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setPosition(F)V

    .line 393
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 434
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 272
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->toggle()V

    .line 274
    const/4 v0, 0x1

    .line 276
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .prologue
    .line 474
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 475
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 2
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;->isNavigationVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    const-string v0, "SeslActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mActivityImpl:Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 471
    return-void
.end method

.method public setDrawerArrowDrawable(Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 378
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    .line 379
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->syncState()V

    .line 380
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 353
    if-eqz p1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    const v2, 0x800003

    .line 355
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 354
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 360
    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 362
    :cond_0
    return-void

    .line 355
    :cond_1
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 326
    const/4 v0, 0x0

    .line 327
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 330
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 301
    if-nez p1, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 303
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 309
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 312
    :cond_0
    return-void

    .line 305
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 460
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 461
    return-void
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setPosition(F)V

    .line 239
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mSlider:Lcom/samsung/android/support/sesl/component/graphics/drawable/SeslDrawerArrowDrawable;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    .line 241
    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 240
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 244
    :cond_0
    return-void

    .line 237
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 241
    :cond_2
    iget v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method

.method toggle()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 280
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->getDrawerLockMode(I)I

    move-result v0

    .line 281
    .local v0, "drawerLockMode":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->isDrawerVisible(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->closeDrawer(I)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle;->mDrawerLayout:Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslDrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method
