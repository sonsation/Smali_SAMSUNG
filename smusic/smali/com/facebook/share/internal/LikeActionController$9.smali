.class Lcom/facebook/share/internal/LikeActionController$9;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1091
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 6

    .prologue
    .line 1095
    sget-object v3, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1100
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1101
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1104
    .local v1, "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    :goto_0
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1105
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1107
    .local v0, "engagementRequest":Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1108
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-interface {v1, v2}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1109
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1111
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$9$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/share/internal/LikeActionController$9$1;-><init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1135
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1136
    return-void

    .line 1097
    .end local v0    # "engagementRequest":Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
    .end local v1    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    .end local v2    # "requestBatch":Lcom/facebook/GraphRequestBatch;
    :pswitch_0
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1098
    .restart local v1    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    goto :goto_0

    .line 1095
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
