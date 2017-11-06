.class Lcom/samsung/android/app/music/service/PlayerService$5;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->openInternal(Ljava/lang/String;[JILjava/lang/String;ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/PlayerService;

.field final synthetic val$dmrId:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$list:[J

.field final synthetic val$position:I

.field final synthetic val$seek:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 987
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$list:[J

    iput p4, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$position:I

    iput-object p5, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$dmrId:Ljava/lang/String;

    iput-wide p6, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$seek:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaServiceBound()V
    .locals 8

    .prologue
    .line 990
    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$key:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$list:[J

    iget v4, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$position:I

    iget-object v5, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$dmrId:Ljava/lang/String;

    iget-wide v6, p0, Lcom/samsung/android/app/music/service/PlayerService$5;->val$seek:J

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/music/service/PlayerService;->access$1400(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;[JILjava/lang/String;J)V

    .line 991
    return-void
.end method
