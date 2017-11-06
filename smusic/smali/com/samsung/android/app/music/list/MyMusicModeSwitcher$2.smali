.class Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;
.super Ljava/lang/Object;
.source "MyMusicModeSwitcher.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$100(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$200(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->setMyMusicModeWithConfirmDialog(Landroid/app/Activity;Z)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$2;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$100(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/widget/PullDownOptionLayout;->showOptionView()V

    .line 98
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "1651"

    if-eqz p2, :cond_1

    const-string v0, "1"

    .line 99
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendEventLogWithoutScreen(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void

    .line 98
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method
