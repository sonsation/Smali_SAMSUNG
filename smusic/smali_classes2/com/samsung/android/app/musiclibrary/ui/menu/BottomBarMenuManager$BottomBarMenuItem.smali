.class Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;
.super Ljava/lang/Object;
.source "BottomBarMenuManager.java"

# interfaces
.implements Landroid/view/MenuItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BottomBarMenuItem"
.end annotation


# static fields
.field private static final THROW:Z

.field private static final THROW_MESSAGE:Ljava/lang/String; = "This class is just wrapper for MenuItem. Should implement proper code if use this one."


# instance fields
.field private final mBottomBarItemView:Landroid/view/View;

.field private final mMenuItem:Landroid/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/samsung/android/app/music/support/android/os/DebugCompat;->isProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    return-void
.end method

.method constructor <init>(Landroid/view/MenuItem;Landroid/view/View;)V
    .locals 0
    .param p1, "menuItem"    # Landroid/view/MenuItem;
    .param p2, "bottomBarItemView"    # Landroid/view/View;

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    .line 318
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    .line 319
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    move-result v0

    return v0
.end method

.method public expandActionView()Z
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    move-result v0

    return v0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v0

    return-object v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getAlphabeticShortcut()C

    move-result v0

    return v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getNumericShortcut()C

    move-result v0

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    return v0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    return v0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isCheckable()Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    return v0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 574
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 575
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 578
    return-object p0
.end method

.method public setActionView(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 560
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 561
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 564
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 551
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 555
    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 458
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 462
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checkable"    # Z

    .prologue
    .line 472
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 476
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 486
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 487
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 490
    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 323
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 324
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 326
    .local v0, "alpha":F
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 327
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x82

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/info/InterpolatorSet;->SINE_IN_OUT_33:Landroid/view/animation/Interpolator;

    .line 328
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 330
    .end local v0    # "alpha":F
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 331
    return-object p0

    .line 325
    :cond_1
    const v0, 0x3ebd70a4    # 0.37f

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconRes"    # I

    .prologue
    .line 407
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 411
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 398
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 402
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 421
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 425
    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 444
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 445
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 448
    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 603
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 607
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 520
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 521
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 524
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 435
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1, p2}, Landroid/view/MenuItem;->setShortcut(CC)Landroid/view/MenuItem;

    .line 439
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 534
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 538
    return-void
.end method

.method public setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 542
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 546
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # I

    .prologue
    .line 370
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 374
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 361
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 362
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 365
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 384
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->THROW:Z

    if-eqz v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This class is just wrapper for MenuItem. Should implement proper code if use this one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 388
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 337
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->access$300()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisible() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mBottomBarItemView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager$BottomBarMenuItem;->mMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    return-object p0
.end method
