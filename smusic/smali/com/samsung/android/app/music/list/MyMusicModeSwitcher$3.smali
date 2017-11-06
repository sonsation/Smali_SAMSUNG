.class Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;
.super Ljava/lang/Object;
.source "MyMusicModeSwitcher.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


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
    .line 125
    iput-object p1, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "my_music_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$300(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher$3;->this$0:Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;->access$000(Lcom/samsung/android/app/music/list/MyMusicModeSwitcher;)Landroid/widget/Switch;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/music/common/settings/MilkSettings;->isMyMusicMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 133
    :cond_0
    return-void
.end method
