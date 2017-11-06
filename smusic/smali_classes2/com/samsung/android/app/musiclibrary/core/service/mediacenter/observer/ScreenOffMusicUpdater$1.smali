.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;
.super Ljava/lang/Object;
.source "ScreenOffMusicUpdater.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string/jumbo v0, "screen_off_music"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;Z)Z

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ScreenOffMusicUpdater;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setPackageDoNotKill(Ljava/lang/Class;Landroid/content/Context;Z)V

    .line 144
    :cond_0
    return-void
.end method
