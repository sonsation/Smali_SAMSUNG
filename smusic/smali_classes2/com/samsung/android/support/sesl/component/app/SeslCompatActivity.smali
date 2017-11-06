.class public Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
.source "SeslCompatActivity.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$DelegateProvider;
.implements Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;


# instance fields
.field private mDelegate:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

.field private mEatKeyUpEvent:Z

.field private mThemeId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mThemeId:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 489
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    and-int/lit16 v3, v3, -0x7001

    invoke-virtual {p1, v3}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_1

    .line 492
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 493
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 494
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v1

    .line 495
    .local v1, "actionBar":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->requestFocus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mEatKeyUpEvent:Z

    .line 504
    .end local v0    # "action":I
    .end local v1    # "actionBar":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    :goto_0
    return v2

    .line 499
    .restart local v0    # "action":I
    :cond_0
    if-ne v0, v2, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mEatKeyUpEvent:Z

    if-eqz v3, :cond_1

    .line 500
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mEatKeyUpEvent:Z

    goto :goto_0

    .line 504
    .end local v0    # "action":I
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mDelegate:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    if-nez v0, :cond_0

    .line 482
    invoke-static {p0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->create(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mDelegate:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mDelegate:Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    return-object v0
.end method

.method public getDrawerToggleDelegate()Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->getDrawerToggleDelegate()Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->invalidateOptionsMenu()V

    .line 239
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 159
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->onSupportContentChanged()V

    .line 433
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    .line 69
    .local v0, "delegate":Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->installViewFactory()V

    .line 70
    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->applyDayNight()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mThemeId:I

    if-eqz v1, :cond_0

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mThemeId:I

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 82
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void

    .line 79
    :cond_1
    iget v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mThemeId:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->setTheme(I)V

    goto :goto_0
.end method

.method public onCreateSupportNavigateUpTaskStack(Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 341
    invoke-virtual {p1, p0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->addParentStack(Landroid/app/Activity;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    .line 342
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onDestroy()V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onDestroy()V

    .line 202
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 186
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v1, 0x1

    .line 195
    :goto_0
    return v1

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;

    move-result-object v0

    .line 191
    .local v0, "ab":Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->getDisplayOptions()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->onSupportNavigateUp()Z

    move-result v1

    goto :goto_0

    .line 195
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 456
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 467
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 468
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onPostCreate(Landroid/os/Bundle;)V

    .line 96
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onPostResume()V

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onPostResume()V

    .line 165
    return-void
.end method

.method public onPrepareSupportNavigateUpTaskStack(Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;)V
    .locals 0
    .param p1, "builder"    # Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 360
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 472
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 473
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 474
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 169
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onStart()V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onStart()V

    .line 171
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onStop()V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->onStop()V

    .line 177
    return-void
.end method

.method public onSupportActionModeFinished(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 261
    return-void
.end method

.method public onSupportActionModeStarted(Lcom/samsung/android/support/sesl/component/view/SeslActionMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 250
    return-void
.end method

.method public onSupportContentChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getParentActivityIntent()Landroid/content/Intent;

    move-result-object v2

    .line 388
    .local v2, "upIntent":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 389
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->supportShouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->create(Landroid/content/Context;)Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;

    move-result-object v0

    .line 391
    .local v0, "b":Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->onCreateSupportNavigateUpTaskStack(Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;)V

    .line 392
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->onPrepareSupportNavigateUpTaskStack(Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;)V

    .line 393
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;->startActivities()V

    .line 396
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v0    # "b":Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    :goto_0
    const/4 v3, 0x1

    .line 409
    :goto_1
    return v3

    .line 397
    .restart local v0    # "b":Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    :catch_0
    move-exception v1

    .line 400
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->finish()V

    goto :goto_0

    .line 405
    .end local v0    # "b":Lcom/samsung/android/support/sesl/core/app/SeslTaskStackBuilder;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->navigateUpTo(Landroid/content/Intent;)Z

    goto :goto_0

    .line 409
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "color"    # I

    .prologue
    .line 206
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 207
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public onWindowStartingSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 275
    const/4 v0, 0x0

    return-object v0
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "layoutResID"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->setContentView(I)V

    .line 138
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->setContentView(Landroid/view/View;)V

    .line 143
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    return-void
.end method

.method public setSupportActionBar(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 1
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->setSupportActionBar(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    .line 128
    return-void
.end method

.method public setSupportProgress(I)V
    .locals 0
    .param p1, "progress"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 315
    return-void
.end method

.method public setSupportProgressBarIndeterminate(Z)V
    .locals 0
    .param p1, "indeterminate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    return-void
.end method

.method public setSupportProgressBarIndeterminateVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 301
    return-void
.end method

.method public setSupportProgressBarVisibility(Z)V
    .locals 0
    .param p1, "visible"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .param p1, "resid"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->setTheme(I)V

    .line 89
    iput p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->mThemeId:I

    .line 90
    return-void
.end method

.method public startSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->startSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;

    move-result-object v0

    return-object v0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->invalidateOptionsMenu()V

    .line 231
    return-void
.end method

.method public supportRequestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->getDelegate()Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method public supportShouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "targetIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 426
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
