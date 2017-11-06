.class Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;
.super Ljava/lang/Object;
.source "MilkStreamingUrl.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->requestRadio(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$messenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Ljava/lang/String;Landroid/os/Messenger;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackLoadCompleted(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 6
    .param p1, "prevTrack"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "currentTrack"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "nextTrack"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$100(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v5

    .line 346
    .local v5, "code":I
    const-string v0, "com.samsung.android.app.music.action.ACTION_REQUEST_RADIO"

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    invoke-static {v0, v1, p2, v5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$200(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V

    .line 351
    :goto_0
    const-string v0, "SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkStreamingUrl: onTrackLoadCompleted prevTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentTrack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nextTrack "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$300(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;I)V

    goto :goto_0
.end method

.method public onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 357
    const-string v0, "SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MilkStreamingUrl: onTrackLoadError uniqueId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " errorType "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " msg "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$1;->val$messenger:Landroid/os/Messenger;

    move-object v3, v2

    move-object v4, v2

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$300(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;I)V

    .line 360
    return-void
.end method
