.class public Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher;
.super Ljava/lang/Object;
.source "MilkBaseLauncher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs UserTypeOf([I)Ljava/util/HashSet;
    .locals 5
    .param p0, "types"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 110
    .local v1, "typeSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p0, v2

    .line 111
    .local v0, "type":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "type":I
    :cond_0
    return-object v1
.end method

.method public static checkAccount(Landroid/app/Activity;Ljava/util/HashSet;)Z
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "checkType":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    instance-of v3, p0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v3, :cond_1

    move-object v3, p0

    .line 61
    check-cast v3, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    invoke-interface {v3}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    .line 70
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 71
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a042a

    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a042b

    .line 72
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v3

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "networkDelay"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v3, v4

    .line 105
    :goto_1
    return v3

    .line 64
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 65
    .local v0, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    goto :goto_0

    .line 76
    .end local v0    # "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v2

    .line 77
    .local v2, "userType":I
    if-eqz p1, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 78
    goto :goto_1

    .line 81
    :cond_3
    packed-switch v2, :pswitch_data_0

    move v3, v5

    .line 103
    goto :goto_1

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x7f0a02ef

    invoke-static {v3, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 84
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_2
    move v3, v4

    .line 105
    goto :goto_1

    .line 87
    :pswitch_1
    new-instance v3, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/dialog/SigninRetryDialog;->show()V

    goto :goto_2

    .line 90
    :pswitch_2
    new-instance v3, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0a0421

    .line 91
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setTitle(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a0422

    .line 92
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setMessage(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a03fd

    new-instance v6, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/app/music/common/dialog/MilkBaseLauncher$1;-><init>(Landroid/app/Activity;)V

    .line 93
    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f0a008a

    .line 99
    invoke-virtual {v3, v5}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->setNegativeButton(I)Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog$Builder;->create()Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;

    move-result-object v3

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string/jumbo v6, "sa_signin"

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/app/music/common/dialog/milk/MilkAlertDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static checkNetwork(Landroid/app/Activity;)Z
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const v5, 0x7f0a02db

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 27
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 28
    const v4, 0x7f0a0444

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 52
    .end local p0    # "activity":Landroid/app/Activity;
    :goto_0
    return v2

    .line 31
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->isUsingData(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 32
    const v4, 0x7f0a0364

    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 35
    :cond_1
    instance-of v4, p0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    if-eqz v4, :cond_2

    .line 36
    check-cast p0, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;

    .end local p0    # "activity":Landroid/app/Activity;
    invoke-interface {p0}, Lcom/samsung/android/app/music/common/activity/MilkServiceGetter;->getMilkService()Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isNetworkTransportInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 37
    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 43
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    .line 44
    .local v1, "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 45
    invoke-virtual {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isNetworkTransportInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    .line 46
    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 47
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .end local v1    # "milkService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    .end local p0    # "activity":Landroid/app/Activity;
    :cond_3
    move v2, v3

    .line 52
    goto :goto_0
.end method
