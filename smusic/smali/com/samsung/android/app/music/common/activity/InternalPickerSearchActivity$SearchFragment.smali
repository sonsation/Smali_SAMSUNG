.class public Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.source "InternalPickerSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchFragment"
.end annotation


# instance fields
.field private final mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field private mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;-><init>()V

    .line 482
    new-instance v0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment$1;-><init>(Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    return-void
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;
    .locals 3
    .param p0, "useBlurUi"    # Z
    .param p1, "uriAuthorityBase"    # Ljava/lang/String;

    .prologue
    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "use_blur_ui"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    const-string/jumbo v2, "url_authority_base"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    new-instance v1, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;-><init>()V

    .line 453
    .local v1, "fg":Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->setArguments(Landroid/os/Bundle;)V

    .line 454
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onAttach(Landroid/app/Activity;)V

    .line 460
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 461
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 463
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    .line 477
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 479
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onDestroyView()V

    .line 480
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 468
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/InternalPickerSearchActivity$SearchFragment;->mOnPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 471
    :cond_0
    return-void
.end method
