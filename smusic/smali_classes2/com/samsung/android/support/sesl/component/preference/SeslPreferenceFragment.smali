.class public abstract Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.source "SeslPreferenceFragment.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/preference/SeslDialogPreference$TargetFragment;
.implements Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;
.implements Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;
.implements Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$ScrollToPreferenceObserver;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;,
        Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;
    }
.end annotation


# static fields
.field public static final ARG_PREFERENCE_ROOT:Ljava/lang/String; = "com.samsung.android.support.sesl.component.preference.SeslPreferenceFragmentCompat.PREFERENCE_ROOT"

.field private static final DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "com.samsung.android.support.sesl.component.preference.SeslPreferenceFragment.DIALOG"

.field private static final INTENT_FONT_SIZE_CHANGED:Ljava/lang/String; = "com.samsung.settings.FONT_SIZE_CHANGED"

.field private static final MSG_BIND_PREFERENCES:I = 0x1

.field private static final PREFERENCES_TAG:Ljava/lang/String; = "android:preferences"

.field private static final TAG:Ljava/lang/String; = "SeslPreferenceFragment"


# instance fields
.field private final mDividerDecoration:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

.field private mHandler:Landroid/os/Handler;

.field private mHavePrefs:Z

.field private mInitDone:Z

.field private mLayoutResId:I

.field private mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

.field private mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field private mSelectPreferenceRunnable:Ljava/lang/Runnable;

.field private mStyledContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;-><init>()V

    .line 143
    sget v0, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference_list_fragment:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mLayoutResId:I

    .line 145
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mDividerDecoration:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

    .line 148
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$1;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$2;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->bindPreferences()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 4

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v0

    .line 543
    .local v0, "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getListView()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onCreateAdapter(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAdapter(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;)V

    .line 546
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 547
    new-instance v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$3;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 558
    .local v1, "theFilter":Landroid/content/IntentFilter;
    const-string v2, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 566
    .end local v1    # "theFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->onAttached()V

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onBindPreferences()V

    .line 569
    return-void

    .line 562
    .restart local v1    # "theFilter":Landroid/content/IntentFilter;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private postBindPreferences()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 537
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private requirePreferenceManager()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This should be called after super.onCreate."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 534
    :cond_0
    return-void
.end method

.method private scrollToPreferenceInternal(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 716
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$4;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V

    .line 747
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    if-nez v1, :cond_0

    .line 748
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private unbindPreferences()V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v0

    .line 573
    .local v0, "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->onDetached()V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onUnbindPreferences()V

    .line 577
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 699
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 703
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 705
    :cond_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method


# virtual methods
.method public addPreferencesFromResource(I)V
    .locals 3
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->requirePreferenceManager()V

    .line 441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v2

    .line 441
    invoke-virtual {v0, v1, p1, v2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->setPreferenceScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V

    .line 443
    return-void
.end method

.method public findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/CharSequence;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x0

    .line 527
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    goto :goto_0
.end method

.method public getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 690
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getListView()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    return-object v0
.end method

.method public getPreferenceManager()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    return-object v0
.end method

.method public getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 348
    if-eqz p1, :cond_0

    .line 349
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 350
    .local v0, "container":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v1

    .line 352
    .local v1, "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 357
    .end local v0    # "container":Landroid/os/Bundle;
    .end local v1    # "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    :cond_0
    return-void
.end method

.method protected onBindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 582
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreate(Landroid/os/Bundle;)V

    .line 216
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 217
    .local v3, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$attr;->seslPreferenceTheme:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 218
    iget v2, v3, Landroid/util/TypedValue;->resourceId:I

    .line 219
    .local v2, "theme":I
    if-gtz v2, :cond_0

    .line 220
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Must specify preferenceTheme in theme"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_0
    new-instance v4, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mStyledContext:Landroid/content/Context;

    .line 224
    new-instance v4, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mStyledContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    .line 225
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v4, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setOnNavigateToScreenListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnNavigateToScreenListener;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.samsung.android.support.sesl.component.preference.SeslPreferenceFragmentCompat.PREFERENCE_ROOT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "rootKey":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 234
    return-void

    .line 231
    .end local v1    # "rootKey":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "rootKey":Ljava/lang/String;
    goto :goto_0
.end method

.method protected onCreateAdapter(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .prologue
    .line 636
    new-instance v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroupAdapter;-><init>(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceGroup;)V

    return-object v0
.end method

.method public onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;
    .locals 2

    .prologue
    .line 626
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 608
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_preference_recyclerview:I

    const/4 v2, 0x0

    .line 609
    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 612
    .local v0, "recyclerView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onCreateLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setLayoutManager(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;)V

    .line 613
    new-instance v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;

    invoke-direct {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceRecyclerViewAccessibilityDelegate;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->setAccessibilityDelegateCompat(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerViewAccessibilityDelegate;)V

    .line 616
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 18
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v14, 0x0

    sget-object v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceFragment:[I

    sget v16, Lcom/samsung/android/support/sesl/R$attr;->seslPreferenceFragmentStyle:I

    const/16 v17, 0x0

    invoke-virtual/range {v13 .. v17}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 257
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceFragment_android_layout:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mLayoutResId:I

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mLayoutResId:I

    .line 259
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceFragment_android_divider:I

    invoke-virtual {v2, v13}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 260
    .local v3, "divider":Landroid/graphics/drawable/Drawable;
    sget v13, Lcom/samsung/android/support/sesl/R$styleable;->SeslPreferenceFragment_android_dividerHeight:I

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 263
    .local v4, "dividerHeight":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 266
    new-instance v11, Landroid/util/TypedValue;

    invoke-direct {v11}, Landroid/util/TypedValue;-><init>()V

    .line 267
    .local v11, "tv":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    sget v14, Lcom/samsung/android/support/sesl/R$attr;->seslPreferenceTheme:I

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v11, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 269
    iget v8, v11, Landroid/util/TypedValue;->resourceId:I

    .line 271
    .local v8, "theme":I
    new-instance v9, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v9, v13, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 272
    .local v9, "themedContext":Landroid/content/Context;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    .line 274
    .local v10, "themedInflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mLayoutResId:I

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v10, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 276
    .local v12, "view":Landroid/view/View;
    sget v13, Lcom/samsung/android/support/sesl/component/preference/SeslAndroidResources;->ANDROID_R_LIST_CONTAINER:I

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 277
    .local v7, "rawListContainer":Landroid/view/View;
    instance-of v13, v7, Landroid/view/ViewGroup;

    if-nez v13, :cond_0

    .line 278
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Content has view with id attribute \'android.R.id.list_container\' that is not a ViewGroup class"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_0
    move-object v5, v7

    .line 282
    check-cast v5, Landroid/view/ViewGroup;

    .line 284
    .local v5, "listContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v10, v5, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    move-result-object v6

    .line 286
    .local v6, "listView":Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;
    if-nez v6, :cond_1

    .line 287
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "Could not create RecyclerView"

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 290
    :cond_1
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 292
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mDividerDecoration:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

    invoke-virtual {v6, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->addItemDecoration(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemDecoration;)V

    .line 293
    const-string v13, "SeslPreferenceFragment"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SeslPreferenceFragment divider : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", dividerHeight : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", mLayoutResId : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mLayoutResId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 295
    const/4 v13, -0x1

    if-eq v4, v13, :cond_2

    .line 296
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->setDividerHeight(I)V

    .line 299
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-object v12
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 378
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->unbindPreferences()V

    .line 380
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mList:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .line 381
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyView()V

    .line 384
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->unregisterReceiver()V

    .line 385
    return-void
.end method

.method public onDisplayPreferenceDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 4
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 649
    const/4 v1, 0x0

    .line 650
    .local v1, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 652
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v1

    .line 654
    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;

    if-eqz v2, :cond_1

    .line 655
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;

    .line 656
    invoke-interface {v2, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceDisplayDialogCallback;->onPreferenceDisplayDialog(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v1

    .line 659
    :cond_1
    if-eqz v1, :cond_3

    .line 681
    :cond_2
    :goto_0
    return-void

    .line 664
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    const-string v3, "com.samsung.android.support.sesl.component.preference.SeslPreferenceFragment.DIALOG"

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v2

    if-nez v2, :cond_2

    .line 669
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreference;

    if-eqz v2, :cond_4

    .line 670
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslEditTextPreferenceDialogFragment;

    move-result-object v0

    .line 679
    .local v0, "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->setTargetFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;I)V

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    move-result-object v2

    const-string v3, "com.samsung.android.support.sesl.component.preference.SeslPreferenceFragment.DIALOG"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;->show(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    :cond_4
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/preference/SeslListPreference;

    if-eqz v2, :cond_5

    .line 672
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    goto :goto_1

    .line 673
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    :cond_5
    instance-of v2, p1, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreference;

    if-eqz v2, :cond_6

    .line 674
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;->newInstance(Ljava/lang/String;)Lcom/samsung/android/support/sesl/component/preference/SeslMultiSelectListPreferenceDialogFragment;

    move-result-object v0

    .restart local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    goto :goto_1

    .line 676
    .end local v0    # "f":Lcom/samsung/android/support/sesl/core/app/SeslDialogFragment;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Tried to display dialog for unknown preference type. Did you forget to override onDisplayPreferenceDialog()?"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onNavigateToScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V
    .locals 2
    .param p1, "preferenceScreen"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 506
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;

    .line 508
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Z

    move-result v0

    .line 510
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;

    if-eqz v1, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;

    .line 512
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartScreenCallback;->onPreferenceStartScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Z

    .line 514
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z
    .locals 2
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreference;->getFragment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 479
    const/4 v0, 0x0

    .line 480
    .local v0, "handled":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getCallbackFragment()Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 482
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v0

    .line 484
    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;

    if-eqz v1, :cond_1

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;

    .line 486
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)Z

    move-result v0

    .line 490
    .end local v0    # "handled":Z
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->getPreferenceScreen()Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v1

    .line 392
    .local v1, "preferenceScreen":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    if-eqz v1, :cond_0

    .line 393
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, "container":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 395
    const-string v2, "android:preferences"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 397
    .end local v0    # "container":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStart()V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setOnDisplayPreferenceDialogListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 364
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 368
    invoke-super {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStop()V

    .line 369
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setOnPreferenceTreeClickListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnPreferenceTreeClickListener;)V

    .line 370
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setOnDisplayPreferenceDialogListener(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager$OnDisplayPreferenceDialogListener;)V

    .line 371
    return-void
.end method

.method protected onUnbindPreferences()V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 587
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 331
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 333
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHavePrefs:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->bindPreferences()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mSelectPreferenceRunnable:Ljava/lang/Runnable;

    .line 341
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mInitDone:Z

    .line 342
    return-void
.end method

.method public scrollToPreference(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;)V
    .locals 1
    .param p1, "preference"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    .prologue
    .line 712
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->scrollToPreferenceInternal(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method public scrollToPreference(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->scrollToPreferenceInternal(Lcom/samsung/android/support/sesl/component/preference/SeslPreference;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mDividerDecoration:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 316
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mDividerDecoration:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment$DividerDecoration;->setDividerHeight(I)V

    .line 327
    return-void
.end method

.method public setPreferenceScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->setPreferences(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->onUnbindPreferences()V

    .line 415
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mHavePrefs:Z

    .line 416
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mInitDone:Z

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->postBindPreferences()V

    .line 420
    :cond_0
    return-void
.end method

.method public setPreferencesFromResource(ILjava/lang/String;)V
    .locals 5
    .param p1, "preferencesResId"    # I
        .annotation build Landroid/support/annotation/XmlRes;
        .end annotation
    .end param
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 455
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->requirePreferenceManager()V

    .line 457
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mPreferenceManager:Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->mStyledContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceManager;->inflateFromResource(Landroid/content/Context;ILcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    move-result-object v1

    .line 461
    .local v1, "xmlRoot":Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;
    if-eqz p2, :cond_0

    .line 462
    invoke-virtual {v1, p2}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/preference/SeslPreference;

    move-result-object v0

    .line 463
    .local v0, "root":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    instance-of v2, v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    if-nez v2, :cond_1

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SeslPreference object with key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a SeslPreferenceScreen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    .end local v0    # "root":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_0
    move-object v0, v1

    .line 471
    .restart local v0    # "root":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    :cond_1
    check-cast v0, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;

    .end local v0    # "root":Lcom/samsung/android/support/sesl/component/preference/SeslPreference;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceFragment;->setPreferenceScreen(Lcom/samsung/android/support/sesl/component/preference/SeslPreferenceScreen;)V

    .line 472
    return-void
.end method
