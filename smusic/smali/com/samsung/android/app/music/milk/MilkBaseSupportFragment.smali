.class public abstract Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "MilkBaseSupportFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;


# instance fields
.field protected mPrimaryColor:I

.field private final mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

.field protected mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColor:I

    .line 170
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment$1;-><init>(Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .prologue
    .line 180
    iget v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColor:I

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 153
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 156
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 161
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_0

    .line 162
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    .line 164
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110103

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColor:I

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate : bundle - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onDestroyView : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->removeOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->removePrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 100
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroyView()V

    .line 101
    return-void
.end method

.method protected onMilkServiceConnected()V
    .locals 2

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMilkServiceConnected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method protected onMilkServiceConnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMilkServiceConnected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected onMilkServiceDisconnected()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onMilkServiceDisconnected : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onNetworkStateChanged(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 3
    .param p1, "networkInfo"    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkStateChanged : appSettings - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->appSettings:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkStateChanged : mobileData - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->mobileData:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkStateChanged : wifi - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->wifi:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNetworkStateChanged : all - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->all:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onPause()V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onPause : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onResume()V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResume : "

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSaveInstanceState : out - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceConnected : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " service : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected()V

    .line 120
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceConnected(Landroid/content/ComponentName;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDisconnected : name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v0, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onMilkServiceDisconnected()V

    .line 130
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 89
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onViewCreated : state - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    .line 61
    .local v0, "radioService":Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.samsung.android.app.music.service.milk.MilkService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/common/activity/BaseMilkServiceActivity;->addOnServiceStateListener(Landroid/content/ServiceConnection;)V

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    if-eqz v1, :cond_2

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorManager:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->mPrimaryColorChangedListener:Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager;->addPrimaryColorChangedListener(Lcom/samsung/android/app/musiclibrary/core/manager/PrimaryColor/IPrimaryColorManager$OnPrimaryColorChangedListener;)V

    .line 72
    :cond_2
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/MilkBaseSupportFragment;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewStateRestored : saved - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public abstract primaryColorChanged(I)V
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public setBixbyCrossSharePackages(Ljava/lang/String;)V
    .locals 0
    .param p1, "packages"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public share()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
