.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$13;
.super Ljava/lang/Object;
.source "PlayerFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/player/common/ble/BleUiController$IBleConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    .prologue
    .line 1392
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$13;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSupportDlna()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1395
    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$13;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1900(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v0, [J

    .line 1396
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentAudioId()J

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 1395
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->isExistDrm(Landroid/content/Context;[J)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
