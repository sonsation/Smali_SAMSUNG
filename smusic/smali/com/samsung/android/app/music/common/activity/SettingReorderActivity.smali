.class public Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "SettingReorderActivity.java"


# static fields
.field private static final SETTING_REORDER_TAG:Ljava/lang/String; = "SettingReorder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v3, 0x7f0a00ee

    .line 15
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "SettingReorder"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 18
    .local v0, "fg":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;->setTitle(I)V

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/TabSettingReorderFragment;->newInstance(Z)Landroid/app/Fragment;

    move-result-object v0

    .line 24
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;->setTitle(I)V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SettingReorderActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    const-string v3, "SettingReorder"

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method
