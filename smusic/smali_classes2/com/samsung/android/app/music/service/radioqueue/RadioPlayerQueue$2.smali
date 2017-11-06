.class Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;
.super Ljava/lang/Object;
.source "RadioPlayerQueue.java"

# interfaces
.implements Lcom/samsung/android/app/music/service/radioqueue/RadioStationManager$IMediaChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->access$300(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;IZ)V

    .line 97
    return-void
.end method

.method public onNextMetadataChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue$2;->this$0:Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;->access$400(Lcom/samsung/android/app/music/service/radioqueue/RadioPlayerQueue;)V

    .line 102
    return-void
.end method
