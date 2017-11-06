.class Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;
.super Ljava/lang/Object;
.source "LegacyAirBrowseManager.java"

# interfaces
.implements Lcom/samsung/android/app/music/support/sdl/samsung/service/gesture/GestureManagerSdlCompat$OnGestureEventChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGestureEventChanged(I)V
    .locals 3
    .param p1, "motion"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->access$000(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onGestureEventChanged mOnAirBrowseChangedListener is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGestureEventChanged motion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->access$000(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;->onSweepRight()V

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$1;->this$0:Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;->access$000(Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager;)Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/legacy/gesture/LegacyAirBrowseManager$OnAirBrowseChangedListener;->onSweepLeft()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
