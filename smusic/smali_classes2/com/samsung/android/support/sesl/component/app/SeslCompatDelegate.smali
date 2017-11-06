.class public abstract Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
.super Ljava/lang/Object;
.source "SeslCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa

.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c

.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d

.field public static final MODE_NIGHT_AUTO:I = 0x0

.field public static final MODE_NIGHT_FOLLOW_SYSTEM:I = -0x1

.field public static final MODE_NIGHT_NO:I = 0x1

.field static final MODE_NIGHT_UNSPECIFIED:I = -0x64

.field public static final MODE_NIGHT_YES:I = 0x2

.field static final TAG:Ljava/lang/String; = "SeslCompatDelegate"

.field private static sDefaultNightMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->sDefaultNightMode:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .prologue
    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/app/Dialog;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
    .locals 2
    .param p0, "dialog"    # Landroid/app/Dialog;
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .prologue
    .line 193
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;

    move-result-object v0

    return-object v0
.end method

.method private static create(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "callback"    # Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 199
    .local v0, "sdk":I
    invoke-static {}, Lcom/samsung/android/support/sesl/core/os/SeslBuildCompat;->isAtLeastN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplN;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V

    .line 204
    :goto_0
    return-object v1

    .line 201
    :cond_0
    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 202
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V

    goto :goto_0

    .line 204
    :cond_1
    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Lcom/samsung/android/support/sesl/component/app/SeslCompatCallback;)V

    goto :goto_0
.end method

.method public static getDefaultNightMode()I
    .locals 1

    .prologue
    .line 487
    sget v0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->sDefaultNightMode:I

    return v0
.end method

.method public static setDefaultNightMode(I)V
    .locals 2
    .param p0, "mode"    # I

    .prologue
    .line 467
    packed-switch p0, :pswitch_data_0

    .line 475
    const-string v0, "SeslCompatDelegate"

    const-string/jumbo v1, "setDefaultNightMode() called with an unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void

    .line 472
    :pswitch_0
    sput p0, Lcom/samsung/android/support/sesl/component/app/SeslCompatDelegate;->sDefaultNightMode:I

    goto :goto_0

    .line 467
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract applyDayNight()Z
.end method

.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract findViewById(I)Landroid/view/View;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getDrawerToggleDelegate()Lcom/samsung/android/support/sesl/component/app/SeslActionBarDrawerToggle$Delegate;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract hasWindowFeature(I)Z
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract isHandleNativeActionModesEnabled()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method

.method public abstract setLocalNightMode(I)V
.end method

.method public abstract setSupportActionBar(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .param p1    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract startSupportActionMode(Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;)Lcom/samsung/android/support/sesl/component/view/SeslActionMode;
    .param p1    # Lcom/samsung/android/support/sesl/component/view/SeslActionMode$Callback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method
