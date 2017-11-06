.class Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;
.super Ljava/lang/Object;
.source "MilkStreamingUrl.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/IMilkTrackLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->requestSong(Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

.field final synthetic val$messenger:Landroid/os/Messenger;

.field final synthetic val$trackId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    .prologue
    .line 377
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->val$messenger:Landroid/os/Messenger;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->val$trackId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrackLoadCompleted(Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;Lcom/samsung/android/app/music/common/model/Track;)V
    .locals 4
    .param p1, "prevTrack"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p2, "currentTrack"    # Lcom/samsung/android/app/music/common/model/Track;
    .param p3, "nextTrack"    # Lcom/samsung/android/app/music/common/model/Track;

    .prologue
    .line 381
    const-string v1, "SV-PlayerServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MilkStreamingUrl: onTrackLoadCompleted prevTrack: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " currentTrack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " nextTrack "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    invoke-static {v1, p2}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$100(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Lcom/samsung/android/app/music/common/model/Track;)I

    move-result v0

    .line 385
    .local v0, "code":I
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->val$messenger:Landroid/os/Messenger;

    invoke-static {v1, v2, p2, v0}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$200(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V

    .line 386
    return-void
.end method

.method public onTrackLoadError(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "uniqueId"    # Ljava/lang/String;
    .param p2, "errorType"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 391
    const-string v0, "SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkStreamingUrl: onTrackLoadError uniqueId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " errorType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v0, "SV-PlayerServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MilkStreamingUrl: onTrackLoadError trackId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->val$trackId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->this$0:Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver$2;->val$messenger:Landroid/os/Messenger;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;->access$200(Lcom/samsung/android/app/music/service/metadata/MilkStreamingUrl$ServiceCommandReceiver;Landroid/os/Messenger;Lcom/samsung/android/app/music/common/model/Track;I)V

    .line 395
    return-void
.end method
