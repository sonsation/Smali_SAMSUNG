.class public Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "PrivateFolderSelectionActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationController;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

.field private final mPrivateModeOffReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mPrivateModeOffReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private registerPrivateModeOffReceiver()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mPrivateModeOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    return-void
.end method


# virtual methods
.method public isEmptyViewAnimationEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->isEmptyViewAnimationEnabled()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v5, 0x7f0a0101

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->setTitle(I)V

    .line 49
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    .line 50
    iget-object v5, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 53
    .local v2, "fm":Landroid/app/FragmentManager;
    sget-object v5, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v5

    if-nez v5, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 55
    .local v4, "i":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    .line 58
    .local v3, "ft":Landroid/app/FragmentTransaction;
    new-instance v1, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderFragment;-><init>()V

    .line 59
    .local v1, "fg":Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 60
    const v5, 0x1020002

    sget-object v6, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v5, v1, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 61
    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 63
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "fg":Landroid/app/Fragment;
    .end local v3    # "ft":Landroid/app/FragmentTransaction;
    .end local v4    # "i":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->registerPrivateModeOffReceiver()V

    .line 64
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mPrivateModeOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 70
    return-void
.end method

.method public onEmptyViewAnimated()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/dialog/PrivateFolderSelectionActivity;->mEmptyViewAnimationController:Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/EmptyViewAnimationControllerImpl;->onEmptyViewAnimated()V

    .line 89
    return-void
.end method
