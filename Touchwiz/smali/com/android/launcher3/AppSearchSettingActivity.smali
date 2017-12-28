.class public Lcom/android/launcher3/AppSearchSettingActivity;
.super Landroid/preference/PreferenceActivity;
.source "AppSearchSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AppSearchSettingActivity$AppSearchSettingFragment;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "AppSearchSetting"

    sput-object v0, Lcom/android/launcher3/AppSearchSettingActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/android/launcher3/AppSearchSettingActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    new-instance v3, Lcom/android/launcher3/AppSearchSettingActivity$AppSearchSettingFragment;

    invoke-direct {v3}, Lcom/android/launcher3/AppSearchSettingActivity$AppSearchSettingFragment;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 23
    invoke-virtual {p0}, Lcom/android/launcher3/AppSearchSettingActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 24
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 27
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/android/launcher3/AppSearchSettingActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 43
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 52
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 54
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher3/AppSearchSettingActivity;->onBackPressed()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 37
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 32
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method
