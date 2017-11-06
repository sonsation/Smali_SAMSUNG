.class public Lcom/samsung/android/app/music/milk/help/HelpActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "HelpActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;,
        Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f0400e9

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->setContentView(I)V

    .line 39
    const v3, 0x7f1202b9

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 40
    .local v2, "list":Landroid/widget/ListView;
    new-instance v0, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;

    const v3, 0x7f0400ea

    invoke-direct {v0, p0, p0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;-><init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;Landroid/content/Context;I)V

    .line 41
    .local v0, "adapter":Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;
    new-instance v3, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;

    const v4, 0x7f0a030b

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    .line 42
    new-instance v3, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;

    const v4, 0x7f0a02df

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    .line 43
    new-instance v3, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;

    const v4, 0x7f0a0290

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->getUniqueId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/milk/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    .line 45
    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 46
    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    new-instance v3, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/milk/help/HelpActivity$1;-><init>(Lcom/samsung/android/app/music/milk/help/HelpActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/help/HelpActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    move-result-object v1

    .line 62
    .local v1, "executorManager":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    if-eqz v1, :cond_0

    .line 63
    const-string v3, "Help"

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    const/4 v5, 0x0

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchHelpResponseExecutor;

    invoke-direct {v6, v1}, Lcom/samsung/android/app/music/bixby/executor/globalmenu/LaunchHelpResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;)V

    aput-object v6, v4, v5

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 67
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 73
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 74
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 78
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 82
    return-void
.end method
