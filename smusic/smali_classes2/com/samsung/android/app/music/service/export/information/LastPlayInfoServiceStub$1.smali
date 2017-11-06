.class Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;
.super Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;
.source "LastPlayInfoServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/export/information/ILastPlayInfoService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getLastActiveState()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    const-string v0, "LastPlayInfoServiceStub"

    const-string v1, "getLastActiveState is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->access$100(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)I

    move-result v0

    return v0
.end method

.method public getLastPlayInfo()Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 180
    const-string v0, "LastPlayInfoServiceStub"

    const-string v1, "getLastPlayInfo is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->access$000(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Lcom/samsung/android/app/music/service/export/information/LastPlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "LastPlayInfoServiceStub"

    const-string v1, "isPlaying is called"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub$1;->this$0:Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;->access$200(Lcom/samsung/android/app/music/service/export/information/LastPlayInfoServiceStub;)Z

    move-result v0

    return v0
.end method
