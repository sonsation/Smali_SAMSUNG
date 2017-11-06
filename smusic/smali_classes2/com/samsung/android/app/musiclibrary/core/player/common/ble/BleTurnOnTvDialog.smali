.class public Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;
.super Landroid/app/DialogFragment;
.source "BleTurnOnTvDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static dismissDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 33
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;

    .line 34
    .local v0, "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->dismiss()V

    .line 37
    :cond_0
    return-void
.end method

.method static showDialog(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 26
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;-><init>()V

    .line 28
    .local v0, "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 30
    .end local v0    # "dialog":Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 42
    .local v0, "a":Landroid/app/Activity;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v5, "layout_inflater"

    .line 45
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 46
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_turn_on_tv_common:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 47
    .local v4, "v":Landroid/view/View;
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->turn_on_tv_img:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 48
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v5, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 51
    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_smart_view:I

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 52
    sget v5, Lcom/samsung/android/app/musiclibrary/R$string;->ok:I

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 74
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isConnectingWfd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->dismiss()V

    .line 77
    :cond_1
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 78
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleTurnOnTvDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    :cond_0
    return-void
.end method
