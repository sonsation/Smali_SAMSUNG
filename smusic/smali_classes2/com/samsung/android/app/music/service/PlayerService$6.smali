.class Lcom/samsung/android/app/music/service/PlayerService$6;
.super Ljava/lang/Object;
.source "PlayerService.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/PlayerService;->dlnaConnectionRequested(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/PlayerService;

.field final synthetic val$dmrId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/PlayerService;

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->val$dmrId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDlnaServiceBound()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->this$0:Lcom/samsung/android/app/music/service/PlayerService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/PlayerService$6;->val$dmrId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/PlayerService;->access$1500(Lcom/samsung/android/app/music/service/PlayerService;Ljava/lang/String;)V

    .line 1071
    return-void
.end method
