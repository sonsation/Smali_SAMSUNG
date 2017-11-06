.class public Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;
.source "AddToShortcutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;-><init>()V

    return-void
.end method

.method private onCreatePhoneUi()V
    .locals 7

    .prologue
    .line 48
    const v5, 0x7f040024

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 51
    .local v2, "fm":Landroid/app/FragmentManager;
    const/16 v5, 0x48

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 53
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 54
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 56
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "extra_list_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 57
    .local v3, "listType":I
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->newInstance(I)Landroid/app/Fragment;

    move-result-object v1

    .line 58
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1200fd

    invoke-virtual {v5, v6, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 60
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "listType":I
    :cond_0
    return-void
.end method

.method private onCreateTabletUi()V
    .locals 7

    .prologue
    .line 63
    const v5, 0x7f040025

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 66
    .local v2, "fm":Landroid/app/FragmentManager;
    const/16 v5, 0x48

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 69
    .local v1, "fg":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    .local v0, "data":Landroid/os/Bundle;
    const-string v5, "extra_list_type"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 72
    .local v3, "listType":I
    invoke-static {v3}, Lcom/samsung/android/app/music/list/local/AddToShortcutFragment;->newInstance(I)Landroid/app/Fragment;

    move-result-object v1

    .line 73
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const v6, 0x7f1200fd

    invoke-virtual {v5, v6, v1, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commit()I

    .line 75
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v3    # "listType":I
    :cond_0
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "listType"    # I

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_list_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 25
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 29
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseBlurActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    .line 32
    .local v0, "permissionManager":Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;
    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->setPermissions(Z[Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 34
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 35
    .local v1, "uiType":I
    packed-switch v1, :pswitch_data_0

    .line 43
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 37
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->onCreatePhoneUi()V

    .line 45
    :goto_0
    return-void

    .line 40
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/AddToShortcutActivity;->onCreateTabletUi()V

    goto :goto_0

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
